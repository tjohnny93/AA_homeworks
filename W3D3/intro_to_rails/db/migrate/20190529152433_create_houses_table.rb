class CreateHousesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|

      t.integer :person_id, null: false
      t.timestamps
    end
  end
end
