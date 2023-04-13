class AddPostimageIdToPostComments < ActiveRecord::Migration[6.1]
  def change
    add_column :post_comments, :postimage_id, :integer
  end
end
