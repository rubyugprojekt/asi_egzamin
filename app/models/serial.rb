class Serial < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    
   
  has_attached_file :serial_img, styles: { serial_index: "250x350>", serial_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :serial_img, content_type: /\Aimage\/.*\Z/
end
