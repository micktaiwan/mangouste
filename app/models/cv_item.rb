# a cv_item is an item in a cv_section (they share some common attributes title, position) 
class CvItem < CvSection
  include MongoMapper::Document

  key :title, String
  key :description, String
  key :position, Integer, :numeric=>true, :required=>true
end
