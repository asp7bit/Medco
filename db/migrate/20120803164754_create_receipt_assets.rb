class CreateReceiptAssets < ActiveRecord::Migration
  def change
    create_table :receipt_assets do |t|

      t.timestamps
    end
  end
end
