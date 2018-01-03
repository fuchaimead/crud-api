require 'httparty'
require 'json'
require 'pry'

# Constant - should not change
BASE_URL = "http://json-server.devpointlabs.com/api/v1"

# all users method 

def all_users 
  response = HTTParty.get("#{BASE_URL}/users").parsed_response
  response.each do |user|
    puts "ID: #{user['id']}"
    puts "First: #{user['first_name']}"
    puts "Last: #{user['last_name']}"
    puts "Phone: #{user['phone_number']}"
    puts ''
  end 
  option
end

def single_user 
  #use the number input to be the id in the response
  #if the url exists show data on that user
  #else user does not exist or there are no users, add some
  response = HTTParty.get("#{BASE_URL}/users/:id").parsed_response
  puts "What user would you like to view? Provide an ID."
  answer = gets.strip 
  if answer == user['id']
    puts user.values
  else 
    puts 'not a valid'
  end 
end 

def create_user

end 

def add_user
end 

def update_user
end 


def option
  menu
  option = gets.to_i
  case option
  when 1 
    all_users
  when 2
    single_user
  when 3 
    add_user
  when 4
    update_user
  when 6
    exit
  else 
    puts "Not a valid option."
  end
end

def menu
  puts "==================="
  puts "1) Show All Users"
  puts "2) View Single User"
  puts "3) Add User"
  puts "4) Update User"
  puts "5) Delete User"
  puts "6) Exit"
  puts "==================="
end
  
option