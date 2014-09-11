class Advertise < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "750x450>", :thumb => "375x225>" },
  :default_style => :thumb,
  :url => "/system/:attachment/:id/:style/:basename.:extension",
  :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  belongs_to :user

  validates :comments, presence: true, length: { minimum: 50, maximum: 80 }
  validates :status, presence: true
  validates :color1, presence: true, length: { maximum: 25 }
  validates :race, presence: true, length: { maximum: 25 }
  validates :street1, presence: true, length: { maximum: 25 }
  validates :street2, presence: true, length: { maximum: 25 }
  validates :size, presence: true, length: { maximum: 25 }
  validates :when, presence: true
  validates :gender, presence: true, length: { maximum: 25 }
  validates :age, presence: true, length: { maximum: 2 }
  validates :city, presence: true, length: { maximum: 25 }
end
