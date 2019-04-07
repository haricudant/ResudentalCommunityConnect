class Service < ApplicationRecord
    SERVICE_FORMAT = /\A
    ^[a-zA-Z]+$
     /x
    validates :servicename , presence: true, format: {:with=>SERVICE_FORMAT}
end
