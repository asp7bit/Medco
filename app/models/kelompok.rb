class Kelompok < ActiveRecord::Base
  attr_accessible :jenis, :keterangan, :kode, :parent_id
  self.primary_key = "kode"
  has_many :child_kelompok, :class_name => "Kelompok", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent_kelompok, :class_name => "Kelompok"
  validates :kode, :presence => true, :uniqueness => true
end
