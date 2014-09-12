class Member < ActiveRecord::Base
  attr_accessible :address, :city, :code, :mobile, :name, :pincode
end
