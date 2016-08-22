require 'spec_helper'
require 'mailers/test_mailer'

describe GmailMarkup do
  it 'has a version number' do
    expect(GmailMarkup::VERSION).not_to be nil
  end

  describe '#gmail_markup_view_action' do
    subject(:mail) { TestMailer.view_action }

    it 'generates valid ViewAction markup in the email' do
      expected = <<-EOT
   <script type="application/ld+json">{
  "@context": "http://schema.org",
  "@type": "EmailMessage",
  "potentialAction": {
    "@type": "ViewAction",
    "url": "https://www.producthunt.com/tech/paste-2-3",
    "name": "View Post"
  }
}</script>
      EOT

      expect(mail.body.raw_source).to include(expected)
    end
  end
end
