# a job_position is a specialized cv_item to represent job positions 
class JobPosition < CvItem
  include MongoMapper::Document # FIXME: not necessary ?

  key :started_on, Date, :required=>true, :allow_blank => false
  key :ended_on, Date, :required=>true, :allow_blank => false
  key :company, String
  key :client, String
  key :location, String
  key :technologies, Array
end
