class DeleteIdAndParent < ActiveRecord::Migration
  def change
    remove_column :kelompoks, :id
    remove_column :kelompoks, :parent
  end

end
