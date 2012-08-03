class Inventory < ActiveRecord::Base
  attr_accessible :kode_inventaris, :jenis_asset, :nama_asset, :merk_asset, :model_asset, :material_asset, :harga, :qty_baik, :qty_rusak, :lokasi , :keterangan
  validates :kode_inventaris, :presence => true, :uniqueness => true
  
  def self.search(search)
    if search.present?
      where("kode_inventaris LIKE '%#{search}%' or nama_asset LIKE '%#{search}%'")
		else
		  scoped
	  end
	end
end
