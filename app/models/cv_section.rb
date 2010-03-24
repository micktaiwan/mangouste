# a cv_section delimins the main parts of the CV (profesionnal exp, schools, languages etc.)
class CvSection
  include MongoMapper::Document

  key :title, String
  key :position, Integer, :numeric=>true, :required=>true

  many :cv_items
end
