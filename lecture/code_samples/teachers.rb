blake = Object.new
def blake.loves
  "bicycles"
end

def blake.email
  "blake@flatironschool.com"
end

def blake.first_name
  "Blake"
end

def blake.last_name
  "Johnson"
end

# puts "#{blake.first_name} #{blake.last_name}'s email address is #{blake.email}. Send him a message about #{blake.loves}"

steven = Object.new

def steven.loves
  "programming"
end

def steven.email
  "steven@flatironschool.com"
end

def steven.first_name
  "Steven"
end

def steven.last_name
  "Nunez"
end

# puts "#{steven.first_name} #{steven.last_name}'s email address is #{steven.email}. Send him a message about #{steven.loves}"

class Person
  attr_reader(:first_name, :last_name, :email, :loves)
  def initialize(name, email, loves)
    @first_name, @last_name = parse_name(name)
    @email = email
    @loves = loves
  end

  def first_name
    @first_name
  end

  def to_s
    "#{first_name} #{last_name}'s email address is #{email}. Send him a message about #{loves}"
  end

  private
  def parse_name(name)
    name.split(' ')
  end
end

steven = Person.new("Steven Nunez", "steven@flatironschool.com", "programming")
puts steven
# puts steven.parse_name("Steven Nunez")

def steven.set_first_name(new_name)
  name = new_name
end

def steven.loves
  "programming"
end

def steven.email
  "steven@flatironschool.com"
end

def steven.first_name
  name
end

def steven.last_name
  "Nunez"
end

# steven.set_first_name("Steven")
# puts "#{steven.first_name} #{steven.last_name}'s email address is #{steven.email}. Send him a message about #{steven.loves}"

# class Robot

#   def initialize(name)
#     @name = name
#     @active = false
#   end

#   def name
#     @name
#   end

#   def activate!
#     @active = true
#   end

#   def active?
#     @active
#   end

#   def to_s
#     "Is the #{self.name} active? #{self.active?}"
#   end
# end

# johnny_5   = Robot.new("Johnny 5")
# terminator = Robot.new("The Terminator")

# johnny_5.activate!

# puts "Current level for Johnny 5:  ====== #{johnny_5}"
# puts terminator
# # puts "Is the #{terminator.name} active? #{terminator.active?}"
# # puts "Is the #{johnny_5.name} active? #{johnny_5.active?}"
