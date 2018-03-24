class CreateUserBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_books do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :associated_page
      t.boolean :admin
      t.timestamps
    end
  end
end
