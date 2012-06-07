class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :post
      t.integer :replies

      t.timestamps
    end
  end
end
