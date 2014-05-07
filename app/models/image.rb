class Image < ActiveRecord::Base
  attr_accessible :data
  belongs_to :feedbacks
  mount_uploader :image, ImageUploader
end
