class WelcomeController < ApplicationController

  def delete_person
      Person.all.first.destroy
      redirect_to :action => "index"
  end

  def create_person
    person = Person.new
    person.first_name = 'foo'
    person.last_name = 'bar'
    person.phone_numbers << PhoneNumber.new(:phone=>"0633XXXXX")
    person.phone_numbers << PhoneNumber.new(:phone=>"0512XXXXX")
    person.save
    redirect_to :action => "index"
  end

  def delete_user
      User.all.first.destroy
      redirect_to :action => "index"
  end

  def create_user
    person = User.new
    person.first_name = 'foo2'
    person.last_name = 'bar2'
    person.login = 'foobar2'
    person.password = 'secret'
    person.save
    redirect_to :action => "index"
  end

  def index
    @persons = Person.all
    @users = User.all
  end
end
