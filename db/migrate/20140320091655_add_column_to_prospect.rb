class AddColumnToProspect < ActiveRecord::Migration
  def change
    add_reference :prospects, :landing_page, index: true
  end
end
