class AddTitleToVideos < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :title, :string
  end
end
