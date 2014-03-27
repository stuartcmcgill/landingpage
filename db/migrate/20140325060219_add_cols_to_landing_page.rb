class AddColsToLandingPage < ActiveRecord::Migration
  def change
    add_column :landing_pages, :head_color, :string
    add_column :landing_pages, :head_font, :string
    add_column :landing_pages, :body_font, :string
    add_column :landing_pages, :image_caption, :string
    add_column :landing_pages, :body_copy, :text
    add_column :landing_pages, :video, :text
    add_column :landing_pages, :video_caption, :string
    add_column :landing_pages, :guarantee, :string
    add_column :landing_pages, :privacy, :text
    add_column :landing_pages, :button2_text, :string
    add_column :landing_pages, :button2_color, :string
    add_column :landing_pages, :campaign_channel, :string
    add_column :landing_pages, :keyword_group, :string
    add_column :landing_pages, :campaign_name, :string
  end
end
