class ApplicationMailer < ActionMailer::Base
  default from: 'alert@rm.com'
  layout 'mailer'
end
