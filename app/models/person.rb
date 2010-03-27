# http://railstips.org/blog/archives/2009/06/27/mongomapper-the-rad-mongo-wrapper/

class Person #  TODO: or better: employee ?
  include MongoMapper::Document

  key :first_name,      String, :required=>true, :allow_blank => false
  key :last_name,       String, :required=>true, :allow_blank => false
  key :birthdate,       Date
  key :driver_license,  String
  #timestamps! # does not work ?
  
  many :phone_numbers
  belongs_to :manager
  
end

