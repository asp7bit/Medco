class Kelompok < ActiveRecord::Base
  attr_accessible :jenis, :keterangan, :kode, :parent_id
  self.primary_key = "kode"
  has_many :child_kelompok, :class_name => "Kelompok", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent_kelompok, :class_name => "Kelompok"
  validates :kode, :presence => true, :uniqueness => true
  
  def self.search(search)
    if search.present?
      where("kode LIKE '%#{search}%' or keterangan LIKE '%#{search}%'")
		else
		  scoped
	  end
	end
end
