class HistoriesController < ApplicationController
  def new
    @history = History.new
  end
  
  def show
    @history = History.find(params[:id])
  end
  
  def create
    @history = History.new(history_params)    # 不是最终的实现方式
    if @history.save
      
    else
      #render 'new'
    end
  end
  
  
  private

    def history_params
      params.require(:history).permit(:action, :room_id, :user_id, :username, :roomname)
    end
end
