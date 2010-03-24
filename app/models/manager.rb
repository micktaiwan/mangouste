class Manager < Person

  many :persons # TODO: how to change the name of the relation ? has_many :team_members, :through=>:person
  
end
