require 'spec_helper'

describe GmailMarkup::Generators::ViewAction do
  describe '#to_json' do
    subject { described_class.new(name: 'View Post', target_url: 'https://google.com').to_json }

    it { include_json('@context' => 'http://schema.org') }
    it { include_json('@type' => 'EmailMessage') }

    it 'generates valid ViewAction json' do
      expected_values = { '@type' => 'ViewAction',
                          name: 'View Post',
                          url: 'https://google.com' }

      expect(subject).to include_json(potentialAction: expected_values)
    end
  end
end
