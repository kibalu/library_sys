class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.book_action.subject
  #
  def book_action(user)
    @user=user

    mail to: user.email, subject: "book notice"
  end
end
