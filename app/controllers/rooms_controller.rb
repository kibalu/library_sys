class RoomsController < ApplicationController
   before_action :logged_in_user, only: [:new, :create, :index, :destroy]
  def new
    @room = Room.new
  end
  def show
    @room = Room.find(params[:id])
    @histories =History.where(:room_id => "#{ @room.id }")
  end
  def create
    @room = Room.new(room_params)    # 不是最终的实现方式
    if @room.save
      flash[:success] = "The room has been created"
      redirect_to @room
    else
      render 'new'
    end
  end
  
  def edit
    @room = Room.find(params[:id])
    # @history=History.new
  end
  
  def update
    @room = Room.find_by_id(params[:id])
    # @history=History.new(params[:history])
    # @history.save
       if @room.update_attributes(room_params)   
        # &&@history.save
         
          if @room.status==true
              UserMailer.book_action(current_user).deliver_now
              flash[:success] = "room is on your list"
               redirect_to @room
             else
              flash[:success] = "room is not on your list "
              redirect_to @room
          end
         else
          render 'edit'
      end
  end
  
  def index
    @rooms = Room.paginate(page: params[:page])
    if params[:search]
    @rooms = Room.search(params[:search])
    else
    @posts = Room.all
    end
  end
  
  
  def destroy
    Room.find(params[:id]).destroy
    flash[:success] = "Room deleted"
    redirect_to rooms_url
  end
  
  
  
  
  
  
  
  
  private
   def history_params
      params.require(history).permit(:action, :room_id, :user_id)
   end
  
   def givebooker
     @room.booker=current_user.id
   end
     

    def room_params
      params.require(:room).permit(:rommid, :build, :size, :status, :booker, :time)
    end
    
    
    # 事前过滤器

    # 确保用户已登录
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
     # 确保是正确的用户
  def correct_user
      @user = User.find(params[:id])
     redirect_to(root_url) unless current_user?(@user)
  end
  
  # 确保是管理员
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
    
    def userdi
       @user = User.find(params[:id])
       return @userdi
    end
    
   
end
