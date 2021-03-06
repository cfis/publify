# frozen_string_literal: true

atom_feed root_url: @article.permalink_url do |feed|
  feedback = @article.published_feedback
  render "shared/atom_header", feed: feed, items: feedback

  feedback.each do |item|
    render "shared/atom_item_#{item.type.downcase}", feed: feed, item: item
  end
end
