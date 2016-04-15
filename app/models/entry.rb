class Entry < ActiveRecord::Base

# use 'type' column for types of wines
self.inheritance_column = nil

mount_uploader :picture, PictureUploader

validates :wine, presence: true

private
  
  def self.search(search)
    like_operator = Rails.env.production? ? "ILIKE" : "LIKE"
    where("wine #{like_operator} ? OR type #{like_operator} ?", "%#{search}%", "%#{search}%")
  end

end
