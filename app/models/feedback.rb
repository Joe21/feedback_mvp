class Feedback < ActiveRecord::Base
  attr_accessible :name, :description, :weight, :date, :image, :media_link

  has_many :images  
end