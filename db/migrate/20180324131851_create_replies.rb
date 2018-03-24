class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.text :content
      t.integer :thought_id
      t.integer :user_id
      t.integer :associated_page
      t.boolean :spoiler
      t.timestamps
    end
  end
end
