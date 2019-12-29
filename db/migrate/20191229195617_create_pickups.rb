class CreatePickups < ActiveRecord::Migration[6.0]
  def change
    create_table :pickups do |t|
      t.bigint :passenger_id
      t.bigint :source_id
      t.bigint :destination_id
      t.datetime :dep_time
      t.timestamps
    end
    add_foreign_key :pickups, :users ,column: :passenger_id
    add_foreign_key :pickups, :places ,column: :source_id
    add_foreign_key :pickups, :places ,column: :destination_id
  end
end
