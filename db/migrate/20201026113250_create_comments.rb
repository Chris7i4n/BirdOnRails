class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :posts
  end
end
