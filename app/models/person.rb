# http://railstips.org/blog/archives/2009/06/27/mongomapper-the-rad-mongo-wrapper/

class Person #  TODO: or better: employee ?
  include MongoMapper::Document

  key :first_name,  String, :required=>true, :allow_blank => false
  key :last_name,   String, :required=>true, :allow_blank => false
  key :birthdate,   Date
  #timestamps! # does not work ?
  
  many :phone_numbers
  belongs_to :manager
  
  # Doing this actually saves the address right inside the person document. Yep, no joins. 
  # person = Person.new
  # person.phone_numbers << PhoneNumber.new(:phone=>"0633XXXXX")
  # person.phone_numbers << PhoneNumber.new(:phone=>"0512XXXXX")
  # person.save
  
  # Person.all(:conditions => {'phone_numbers.type' => 1})
  
end



