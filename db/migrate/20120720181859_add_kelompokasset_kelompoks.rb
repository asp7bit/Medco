class AddKelompokassetKelompoks < ActiveRecord::Migration
  def change
  	add_column :kelompoks, :kelompok_asset, :string
  end
end
