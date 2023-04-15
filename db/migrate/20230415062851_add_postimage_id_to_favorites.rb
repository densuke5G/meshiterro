class AddPostimageIdToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :postimage_id, :integer
  end
end
