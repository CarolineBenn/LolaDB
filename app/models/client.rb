class Client < ActiveRecord::Base
  has_many :orders
  before_save :create_default_values


  def client_business_name
    "#{business_name} - #{first_name} #{last_name}"
  end

  # protected
  # Check this is right?  
  def create_default_values
    self.occupation = "n/a" if !self.occupation
    self.other      = "n/a" if !self.other
    # self.notes      = "n/a" if !self.notes
    if !self.notes.blank?
      self.notes = "n/a"
    end
  end



end
