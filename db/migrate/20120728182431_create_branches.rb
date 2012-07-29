class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
	  t.string :kode
	  t.text :keterangan
      t.timestamps
    end
  end
end
