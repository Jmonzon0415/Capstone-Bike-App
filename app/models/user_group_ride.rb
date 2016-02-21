class UserGroupRide < ActiveRecord::Base
  belongs_to :user 
  belongs_to :group_ride 

  def joined_users 
  end 


end
