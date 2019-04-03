class Asset < ApplicationRecord
  belongs_to :user
   has_many :Complains, dependent: :destroy
   validates :assetname , presence: true
   accepts_nested_attributes_for :Complains, :reject_if => :all_blank, :allow_destroy => true
end
