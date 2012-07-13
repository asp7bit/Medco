class AddColumnParentToKelompoks < ActiveRecord::Migration
  def change
    add_column :kelompoks, :parent, :integer
  end
end
