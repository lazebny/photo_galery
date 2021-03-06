class PhotoGallery::BaseUploader < CarrierWave::Uploader::Base
# class PhotoGallery::BaseUploader < CarrierWave::Uploader::GoogleDrive
  # google_login    'vadim.lazebny@gmail.com'
  # google_password 'Woodstok69'

  # def url
  #   # binding.pry
  #   if Rails.env.production?
  #     'https://dl.dropboxusercontent.com/1/view/cph48ze9nckmgb4/Приложения/photo_galery_store/uploads/'
  #   else
  #     'https://dl.dropboxusercontent.com/1/view/cph48ze9nckmgb4/Приложения/photo_galery_store/' + path if path
  #   end
  # end

  def default_url
    fallback = "fallback/" + ["no-image.png"].compact.join('_')
    ActionController::Base.helpers.asset_path fallback
  end

  def self.set_storage
    if Rails.env.production?
      :dropbox
    else
      #:google_drive
      #:dropbox
      :file
    end
    #:fog
  end

  storage set_storage
end
