# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/book_action
  def book_action
    user = User.first
    UserMailer.book_action(user)
  end

end
