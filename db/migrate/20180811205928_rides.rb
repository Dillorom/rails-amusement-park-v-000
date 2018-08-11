class Rides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.integer :user
      t.integer :attraction
    end
  end
end
