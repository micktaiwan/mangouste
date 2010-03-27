class Address
  include MongoMapper::Document

  key :postal_address,  String
  key :postal_code,     String
  key :town,            String

  belongs_to :person
end

