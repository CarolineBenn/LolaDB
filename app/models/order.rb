class Order < ActiveRecord::Base
  belongs_to :client
  has_many :dresses
  has_many :items
end
