class GroupRide < ActiveRecord::Base
  belongs_to :creator, class_name: "User" 
  has_many :users 
  has_many :users, through: :user_group_ride

  def creator_name
    creator.email 
  end 

  


end
