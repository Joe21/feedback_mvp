class Feedback < ActiveRecord::Base
  attr_accessible :name, :description, :weight, :date, :image_url, :media_link
end