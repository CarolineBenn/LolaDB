class Dress < ActiveRecord::Base
  has_many :fabrics
  belongs_to :orders

  mount_uploader :image, DressImageUploader
end
