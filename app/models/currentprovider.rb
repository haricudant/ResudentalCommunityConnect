class Currentprovider < ApplicationRecord
    validates :cost,:standingcharge,:pslvcharge, presence: true
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
