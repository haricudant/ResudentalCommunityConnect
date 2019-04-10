class AssetObserver < ActiveRecord::Observer
 observe :asset
  def after_update(asset)
   # @user=User.find(trip.user_id)
    
   #@value = Asset.find(params[:id])
   @value = asset.id
   @user = Complain.last.mailid
    if(asset.previous_changes.any?)
		   AssetNotifierMailer.mailer(@user,@value).deliver
    end
 
  end
end