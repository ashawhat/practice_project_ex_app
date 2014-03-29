require 'active_record'
require './lib/user'

database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['development']
ActiveRecord::Base.establish_connection(development_configuration)


def title_menu
  puts "Welcome to the app"
  main_menu
end

def main_menu
  puts "Are you an ex-husband or an ex-wife?  Select 'X' for ex-husband Select 'Y' for ex-wife"
  puts "Select 'S' for set-up, or type 'exit' to close the application."
  user_input = gets.chomp.upcase
  case user_input
  when 'X' then main_user_husband
  when 'Y' then main_user_wife
  when 'S' then setup
  when 'EXIT'
    puts "Until Next Time!"
  else
    puts "Sorry, was not able to find a valid command!"
    main_menu
  end
end

def setup
  puts "What is your name?"
  input = gets.chomp.titlecase
  puts "Are you the ex-husband (enter '1') or the ex-wife (enter '2')"
  user_id = gets.chomp.to_i
  User.create(:name => input, :user_id => user_id)
    if user_id == 1
      puts "#{input}, Welcome to the ex-wife app."
      main_user_husband
    else puts "#{input}, Welcome to the ex-husband app."
      main_user_wife
    end
end


def main_user_husband
  puts "You made it!"
  puts "Your Menu is as Follows:"
  puts "Press '$' to view Money Requests"
  menu_selection = gets.chomp.to_s
  case menu_selection
  when '$' then financial_menu
  else main_menu
  end
end

def main_user_wife
  puts "Hey Girl Hey!"
  puts "Your Options are as Follows:"
  puts "Press '$' to Request Funds"
  menu_selection = gets.chomp.to_s
  case menu_selection
  when '$' then financial_requests_menu
  else main_menu
  end
end

def financial_menu
  list_wife_finanical_requests
end

def financial_requests_menu

  end

title_menu
