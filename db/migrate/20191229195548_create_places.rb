class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :pos_long
      t.decimal :pos_lat
      t.timestamps
    end
    add_index :places, [:pos_long, :pos_lat], unique: true
  end
end
