class Dress < ActiveRecord::Base
  has_many :fabrics
  belongs_to :orders
end
