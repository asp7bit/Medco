class Bangunan < ActiveRecord::Base
  attr_accessible :keterangan, :kode
  validates :kode, :presence => true, :uniqueness => true
end
