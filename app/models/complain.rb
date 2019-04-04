class Complain < ApplicationRecord
  belongs_to :user
  belongs_to :asset
  belongs_to :serviceprovider
  mount_uploader :attachment, AttachmentUploader
     validates :description,:appointment,:mailid,:user_id,:asset_id, presence: true
end
