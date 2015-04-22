class CarBrand < ActiveRecord::Base
	mount_uploader :logo, LogoUploader
end
