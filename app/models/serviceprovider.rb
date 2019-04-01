class Serviceprovider < ApplicationRecord
     has_many :Complains, dependent: :destroy
end
