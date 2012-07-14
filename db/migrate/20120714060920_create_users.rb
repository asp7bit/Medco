class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :slug
      t.string :unit_kerja
      t.string :status
      t.timestamps
    end
  end
end
