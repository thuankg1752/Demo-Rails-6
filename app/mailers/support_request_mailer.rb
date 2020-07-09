class SupportRequestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.support_request_mailer.respond.subject
  #
  default from: "thuan15219@gmail.com"


  def respond(support_request)
    @support_request = support_request
    logger.info @support_request
    mail to: @support_request.email, subject: "Re: #{@support_request.subject}"
  end
end
