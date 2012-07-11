class CreateUnitKerjas < ActiveRecord::Migration
  def change
    create_table :unit_kerjas do |t|
      t.string :kode
      t.string :keterangan

      t.timestamps
    end
  end
end
