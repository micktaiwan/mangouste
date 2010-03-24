class PhoneNumber
  include MongoMapper::EmbeddedDocument
  
  key :type,  Integer,  :numeric=>true #  0: no type, 1: personal, 2: work
  key :phone, String,   :required=>true
  #timestamps! # does not work ?
  
end
