class CreateUserClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_clubs do |t|
      t.integer :user_id
      t.integer :club_id
      t.boolean :joined
      t.boolean :admin
      t.timestamps
    end
  end
end
