module GmailMarkup::Helpers
  def render_gmail_markup
    return unless @gmail_markup_generator.present?

    content_tag(:script, @gmail_markup_generator.to_json, type: 'application/ld+json')
  end
end
