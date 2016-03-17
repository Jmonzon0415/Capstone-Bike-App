class GroupRide < ActiveRecord::Base
  geocoded_by :address
   
  validates_presence_of :time, :date, :name, :description, :ride_type, :length, :address 
  validates :length, numericality: true
  after_validation :geocode

  belongs_to :creator, class_name: "User" 
  belongs_to :location
  has_many :user_group_rides
  has_many :users, through: :user_group_rides 

  


  def creator_email
    creator.email 
  end 

  def creator_name
    creator.first_name
  end 

  def creator_id
    creator.id
  end

  def start_time
     self.date 
  end  



  

  


end
