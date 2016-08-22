# frozen_string_literal: true
require 'json'

# Generates gmail markup for the View Action
#   https://developers.google.com/gmail/markup/reference/go-to-action#view_action
module GmailMarkup::Generators
  class ViewAction
    attr_reader :name, :target_url, :description

    def initialize(name:, target_url:)
      @name = name
      @target_url = target_url
    end

    def to_json
      JSON.pretty_generate(markup_data).html_safe
    end

    private

    def markup_data
      {
        '@context': 'http://schema.org',
        '@type': 'EmailMessage',
        'potentialAction': {
          '@type': 'ViewAction',
          'url': target_url,
          'name': name
        }
      }
    end
  end
end
