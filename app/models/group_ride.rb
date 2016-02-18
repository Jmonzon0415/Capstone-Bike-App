class GroupRide < ActiveRecord::Base
  belongs_to :creator, class_name: "User" 
  has_many :user_group_rides
  has_many :users, through: :user_group_rides 

  def creator_name
    creator.email 
  end 



  


end
