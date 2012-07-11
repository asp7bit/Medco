class CreateDivisis < ActiveRecord::Migration
  def change
    create_table :divisis do |t|
      t.string :kode
      t.text :keterangan

      t.timestamps
    end
  end
end
