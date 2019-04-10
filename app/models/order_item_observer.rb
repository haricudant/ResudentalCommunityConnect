class OrderItemObserver < ActiveRecord::Observer
 observe :order_item
 
  def after_update(order_item)
   puts "thalaivaaaaa"
   # @user=User.find(trip.user_id)
    
   #@value = Asset.find(params[:id])
  # @value = asset.id
   #@user = Complain.find(@value).mailid
    #if(asset.previous_changes.any?)
		  # AssetNotifierMailer.mailer(@user,@value).deliver
    #end
 
  end
end