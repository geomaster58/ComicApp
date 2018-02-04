class Comic < ApplicationRecord
  mount_uploader :image, ComicUploader
end
