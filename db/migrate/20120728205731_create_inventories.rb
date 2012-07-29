class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :kode_inventaris
      t.string :nama_asset
      t.string :jenis_asset
      t.string :merk
      t.string :model
      t.string :material
      t.decimal :harga
      t.integer :qty_baik
      t.integer :qty_rusak
      t.string :lokasi
      t.text :keterangan
      
      t.timestamps
    end
  end
end
