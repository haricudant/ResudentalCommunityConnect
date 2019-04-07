class AssetObserver < ActiveRecord::Observer
 observe :asset
 
  def after_update(asset)
   puts ""
   # @user=User.find(trip.user_id)
    
   #@value = Asset.find(params[:id])
   @value = asset.id
   @user = Complain.find(@value).mailid
    if(asset.previous_changes.any?)
		   AssetNotifierMailer.mailer(@user,@value).deliver
    end
 
  end
end