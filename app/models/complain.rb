class Complain < ApplicationRecord
  belongs_to :user
  belongs_to :asset
  belongs_to :serviceprovider
  mount_uploader :attachment, AttachmentUploader
  
    ASSET_FORMAT = /\A
    ^[a-zA-Z]+$
    

  /x
     validates :description,:appointment,:mailid,:user_id,:asset_id, presence: true
end
