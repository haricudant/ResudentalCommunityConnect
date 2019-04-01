class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :votes, dependent: :destroy
         has_many :vote_values, through: :votes
         has_one :profile
         has_many :assets, dependent: :destroy
         has_many :complains, dependent: :destroy
        
         
         def voted_for?(poll)
          vote_values.any? {|v| v.poll == poll }
         end
  #class << self
    def from_omniauth(auth)
      uid = auth.uid
      info = auth.info.symbolize_keys!
      user = User.find_or_initialize_by(uid: uid)
      user.name = info.name
      user.image_url = info.image
      user.save!
      user
    end
end