class NotificationsMailer < ActionMailer::Base
  default from: "BlogKing@comment.com"

  def comment_notification(user, comment)
    @comment = comment
    @user = user
    mail(to: user.email, subject: "You have a new comments") do |format|
      format.html
      format.text
    end
  end
end
