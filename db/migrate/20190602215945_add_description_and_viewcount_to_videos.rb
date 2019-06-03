class AddDescriptionAndViewcountToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :views, :integer
    add_column :videos, :description, :text
  end
end
