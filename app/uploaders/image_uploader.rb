class ImageUploader < CarrierWave::Uploader::Base

  storage :file
  include CarrierWave::MiniMagick
  process :resize_to_limit => [300, 300]

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end



end
