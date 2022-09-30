class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.new_message.subject
  #
  def new_message(message)
    @message = message
    
    mail to: @message.email, bcc: "jayrone@voiceofahustler.com", subject: "Message Sent to Voice of a Hustler"
  end
end
