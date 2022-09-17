class AddEmbedToVideos < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :embed, :text
  end
end
