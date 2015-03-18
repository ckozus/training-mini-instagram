class Photo < ActiveRecord::Base
  belongs_to :user

  has_attached_file :asset, styles: { thumb: "100x100#" }
  validates_attachment_presence :asset
  validates_attachment_content_type :asset, content_type: /\Aimage\/.*\Z/

end
