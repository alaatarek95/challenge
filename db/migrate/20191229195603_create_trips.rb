class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.bigint :driver_id
      t.bigint :source_id
      t.bigint :destination_id
      t.datetime :dep_time
      t.integer :seats
      t.timestamps
    end
    add_foreign_key :trips, :users ,column: :driver_id
    add_foreign_key :trips, :places ,column: :source_id
    add_foreign_key :trips, :places ,column: :destination_id


  end
end
