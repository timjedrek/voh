class AddCodeToVideos < ActiveRecord::Migration[7.0]
  def change
    add_column :videos, :code, :string
  end
end
