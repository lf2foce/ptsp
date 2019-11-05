class AddPostStatusToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :post_status, :string
  end
end
