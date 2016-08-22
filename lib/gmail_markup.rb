require 'gmail_markup/version'
require 'gmail_markup/helpers'
require 'gmail_markup/generators/view_action'

module GmailMarkup
  def self.included(base)
    base.class_eval do
      helper GmailMarkup::Helpers
    end
  end

  def gmail_markup_view_action(name:, target_url:)
    @gmail_markup_generator = GmailMarkup::Generators::ViewAction.new(name: name, target_url: target_url)
  end
end
