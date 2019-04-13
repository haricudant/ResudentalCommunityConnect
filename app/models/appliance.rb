class Appliance < ApplicationRecord
    validates_numericality_of  :Appliance_watt, presence: true,  :greater_than => 0,:less_than => 3000
   validates :Appliance_name , uniqueness: { case_sensitive: false},length: { minimum: 2 },length: { maximum: 20 }
   
    APPLIANCE_FORMAT = /\A
    ^[a-zA-Z]+$

  /x
    validates :Appliance_name , 
     format: { :with => APPLIANCE_FORMAT}, 
      presence: true,
    on: :create
   
end
