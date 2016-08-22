class TestMailer < ActionMailer::Base
  include GmailMarkup

  default to: 'coutermarsh.mike@gmail.com',
          from: 'coutermarsh.mike@gmail.com'

  layout 'default'

  def view_action
    gmail_markup_view_action(name: 'View Post',
                             target_url: 'https://www.producthunt.com/tech/paste-2-3')
    mail(subject: 'TEST')
  end
end
