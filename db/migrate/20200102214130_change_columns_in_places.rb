class ChangeColumnsInPlaces < ActiveRecord::Migration[6.0]
  def change
    change_column :places, :pos_lat, :decimal, :precision => 10, :scale => 6
    change_column :places, :pos_long, :decimal, :precision => 10, :scale => 6

  end
end
