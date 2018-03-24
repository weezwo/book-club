class CreateThoughts < ActiveRecord::Migration[5.1]
  def change
    create_table :thoughts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :book_id
      t.integer :associated_page
      t.timestamps
    end
  end
end
