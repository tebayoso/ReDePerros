class Advertise < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "750x450>", :thumb => "375x225>" },
  :default_style => :thumb,
  :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  validates :comments, presence: true
  validates :status, presence: true
  validates :color1, presence: true
  validates :race, presence: true
  validates :street1, presence: true
  validates :street2, presence: true
  validates :size, presence: true
  validates :when, presence: true
  validates :gender, presence: true
  validates :age, presence: true
end
