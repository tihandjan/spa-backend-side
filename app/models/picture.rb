class Picture < ApplicationRecord
  belongs_to :article
  belongs_to :project
  mount_uploader :file, PictureUploader
end
