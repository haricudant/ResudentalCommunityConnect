class Appliance < ApplicationRecord
    validates :Appliance_name, :Appliance_watt, presence: true
end
