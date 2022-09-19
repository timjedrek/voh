class ChangeTypeVideos < ActiveRecord::Migration[7.0]
  def change
    rename_column :videos, :type, :category
  end
end
