class CreateUserClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_clubs do |t|

      t.timestamps
    end
  end
end
