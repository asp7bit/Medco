class Kelompok < ActiveRecord::Base
  attr_accessible :tipe, :keterangan, :kelompok_asset, :kode, :parent_id
 
  self.primary_key = "kode"
  
  has_many :child_kelompok, :class_name => "Kelompok", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent_kelompok, :class_name => "Kelompok"
  
  validates :kode, :presence => true
  
  include AASM
  
  aasm :column => :kelompok_asset do  # defaults to aasm_state
    state :bangunan, :initial => true
    state :kendaraan
    state :peralatan
    state :tanah

    event :Bangunan do
      transitions :from => [:kendaraan, :peralatan, :tanah], :to => :bangunan
    end

    event :Kendaraan do
      transitions :from => [:bangunan, :peralatan, :tanah], :to => :kendaraan
    end

    event :Peralatan do
      transitions :from => [:bangunan, :kendaraan, :tanah], :to => :peralatan
    end
    
    event :Tanah do
      transitions :from => [:bangunan, :peralatan, :kendaraan], :to => :tanah
    end
  end
  
  def self.search(search)
    if search.present?
      where("kode LIKE '%#{search}%' or keterangan LIKE '%#{search}%'")
		else
		  scoped
	  end
	end
end
