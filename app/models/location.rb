class Location < ActiveRecord::Base

  geocoded_by :address
  after_validation :geocode

  has_many :employees
  accepts_nested_attributes_for :employees,
                                allow_destroy: true,
                                reject_if: ->(emp_attrs) { emp_attrs['name'].blank? }

  after_initialize :add_employee

  def address
    # 1515 South Main St. Salt Lake City, UT 84123, US
    "#{street_address} #{street_address2}, #{city}, #{state} #{zip}, US"
  end

  private

  def add_employee
    employees.build if employees.empty?
  end

end
