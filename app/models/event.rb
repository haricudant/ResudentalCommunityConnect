class Event < ApplicationRecord
    has_many :userinterests, dependent: :destroy
validates :name , uniqueness: { case_sensitive: false},length: { minimum: 2 },length: { maximum: 20 }
validates_numericality_of :cost, :greater_than => 0, :less_than => 1000,presence: true

    Event_format = /\A
    ^[a-zA-Z]+$

  /x
     validates :name , 
     format: { :with => Event_format}, 
      presence: true,
         on: :create
end   