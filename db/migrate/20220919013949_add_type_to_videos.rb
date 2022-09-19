class AddTypeToVideos < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :type, :string
  end
end
