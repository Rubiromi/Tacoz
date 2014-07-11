class Location < ActiveRecord::Base

  geocoded_by :address
  after_validation :geocode

  def address
    # 1515 South Main St. Salt Lake City, UT 84123, US
    "#{street_address} #{street_address2}, #{city}, #{state} #{zip}, US"
  end

end
