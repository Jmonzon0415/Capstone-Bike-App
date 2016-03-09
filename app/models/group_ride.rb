class GroupRide < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  belongs_to :creator, class_name: "User" 
  belongs_to :location
  has_many :user_group_rides
  has_many :users, through: :user_group_rides 

  


  def creator_name
    creator.email 
  end 

  def start_time
     self.date 
  end   



  


end
