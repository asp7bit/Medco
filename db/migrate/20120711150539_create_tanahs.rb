class CreateTanahs < ActiveRecord::Migration
  def change
    create_table :tanahs do |t|
      t.string :kode
      t.text :keterangan

      t.timestamps
    end
  end
end
