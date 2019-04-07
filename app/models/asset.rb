class Asset < ApplicationRecord
  belongs_to :user
   has_many :Complains, dependent: :destroy
      accepts_nested_attributes_for :Complains, :reject_if => :all_blank, :allow_destroy => true

    ASSET_FORMAT = /\A
    ^[a-zA-Z]+$
    

  /x
     validates :assetname ,
     presence: true, 
     format: { :with => ASSET_FORMAT },
     on: :create
       
       validates :assetname ,
       presence: true, 
       format: { :with => ASSET_FORMAT },
       on: :edit
end
