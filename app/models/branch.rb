class Branch < ActiveRecord::Base
  attr_accessible :kode, :keterangan
  validates :kode, :presence => true, :uniqueness => true
  
  def self.search(search)
    if search.present?
      where("kode LIKE '%#{search}%' or keterangan LIKE '%#{search}%'")
		else
		  scoped
	  end
	end
end
