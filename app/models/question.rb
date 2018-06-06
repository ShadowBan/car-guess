class Question < ApplicationRecord
  has_attached_file :car_image, styles: { medium: '500x500', thumb: '50x50' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :car_image, content_type: /\Aimage\/.*\z/
  crop_attached_file :car_image

end
