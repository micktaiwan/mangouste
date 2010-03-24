class User < Person
  include MongoMapper::Document

  key :login,  String, :required=>true, :allow_blank => false
  key :password,  String, :required=>true, :allow_blank => false
  key :email
end
