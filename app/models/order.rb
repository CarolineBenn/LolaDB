class Order < ActiveRecord::Base
  belongs_to :client
  has_many :dresses
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items
end
