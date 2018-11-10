class Pupper < ApplicationRecord
    mount_uploader :picture, PictureUploader
end
