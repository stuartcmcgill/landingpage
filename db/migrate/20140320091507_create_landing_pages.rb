class CreateLandingPages < ActiveRecord::Migration
  def change
    create_table :landing_pages do |t|
      t.string :headline
      t.string :subhead
      t.string :image
      t.string :captionbutton_text
      t.string :call_to_action
      t.string :button_color
      t.string :background_color

      t.timestamps
    end
  end
end
