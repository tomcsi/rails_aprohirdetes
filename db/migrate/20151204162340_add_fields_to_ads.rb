class AddFieldsToAds < ActiveRecord::Migration
  def change
   add_column :ads, :title, :string
   add_column :ads, :description, :text
  end
end
