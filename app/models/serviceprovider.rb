class Serviceprovider < ApplicationRecord
     has_many :Complains, dependent: :destroy
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    
    SERVICE_FORMAT = /\A
    ^[a-zA-Z]+$
     /x
    validates :providername, presence: true, format: {:with => SERVICE_FORMAT}
    
    
     validates :mailid, 
     presence: true, 
     format: {:with => VALID_EMAIL_REGEX}
end
