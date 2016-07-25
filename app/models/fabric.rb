class Fabric < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :dresses
end
