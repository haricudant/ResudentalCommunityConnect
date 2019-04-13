class Service < ApplicationRecord
    SERVICE_FORMAT = /\A
    ^[a-zA-Z]+$
     /x
    validates :servicename , presence: true, format: {:with=>SERVICE_FORMAT}, uniqueness: { case_sensitive: false},length: { minimum: 2 },length: { maximum: 20 } 
end
