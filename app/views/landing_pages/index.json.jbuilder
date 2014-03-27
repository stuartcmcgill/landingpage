json.array!(@landing_pages) do |landing_page|
  json.extract! landing_page, :id, :headline, :subhead, :image, :captionbutton_text, :call_to_action, :button_color, :background_color
  json.url landing_page_url(landing_page, format: :json)
end
