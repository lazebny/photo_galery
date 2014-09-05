class PhotoGallery::BaseUploader < CarrierWave::Uploader::Base
# class PhotoGallery::BaseUploader < CarrierWave::Uploader::GoogleDrive
  # google_login    'vadim.lazebny@gmail.com'
  # google_password 'Woodstok69'

  if Rails.env.production?
    storage :dropbox
  else
    # storage :google_drive
    # storage :dropbox
    storage :file
    # storage :file
  end
  # storage :fog
end
