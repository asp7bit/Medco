class Category < ActiveRecord::Base
attr_accessible :tipe, :keterangan, :kelompok_asset, :kode, :parent_id
 
  self.primary_key = "kode"
  
  has_many :child_kelompok, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent_kelompok, :class_name => "Category"
  
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
      where("kode LIKE '%#{search}%' or keterangan LIKE '%#{search}%' or tipe LIKE '%#{search}%' or parent_id LIKE '%#{search}%' or kelompok_asset LIKE '%#{search}%'")
		else
		  scoped
	  end
	end
end
