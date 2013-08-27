class RemoveImageFromArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :image
  end
end
