class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :body
      t.text :tags
      t.integer :user_id
      t.timestamps
    end
    
    add_foreign_key :posts, :users
  end
end
