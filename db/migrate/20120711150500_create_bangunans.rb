class CreateBangunans < ActiveRecord::Migration
  def change
    create_table :bangunans do |t|
      t.string :kode
      t.text :keterangan

      t.timestamps
    end
  end
end
