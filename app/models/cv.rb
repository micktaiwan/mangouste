# a cv has a person with an address and then cv_section( which include cv_items or job_positions)
class Cv
  include MongoMapper::Document

  key :title, String
  key :subtitle, String

  # many :cv_sections
  one :person
end
