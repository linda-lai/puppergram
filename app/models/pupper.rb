class Pupper < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :comments
end
