class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 
  has_many :user_group_rides
  has_many :created_groups, class_name: "GroupRides", foreign_key: :creator_id
  has_many :group_rides, through: :user_group_rides




  



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
