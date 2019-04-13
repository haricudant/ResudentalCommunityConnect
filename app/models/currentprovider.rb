class Currentprovider < ApplicationRecord
    validates :cost,:standingcharge,:pslvcharge, presence: true
validates :standingcharge, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, :less_than => 500}
validates :pslvcharge, :format => { :with => /\A\d+(?:\.\d{0,4})?\z/ }, :numericality => {:greater_than => 0, :less_than => 100}
     ASSET_FORMAT = /\A
    ^[a-zA-Z]+$
     /x
     COST_FORMAT = /\A
   ^[0-9]+\.[0-9]{4}$
     /x
    validates :providername ,
     presence: true, 
     format: { :with => ASSET_FORMAT },
     on: :create
     validates :providername ,
     presence: true, 
     format: { :with => ASSET_FORMAT },
     on: :edit
     
     validates :cost,
     presence: true,
     format: {:with => COST_FORMAT}
     
     
end
