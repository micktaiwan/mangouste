class User < Person
  include MongoMapper::Document
  # FIXME: do we need to include this again as it derives from Person ? See Manager.rb

  key :login,  String, :required=>true, :allow_blank => false
  key :password,  String, :required=>true, :allow_blank => false
  key :email
  
end

