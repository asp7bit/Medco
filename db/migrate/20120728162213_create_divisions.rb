class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :kode
      t.text :keterangan
      t.timestamps
    end
  end
end
