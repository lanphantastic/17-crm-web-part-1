gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :text


  ###### CLASS VARIABLE ######
  # @@contacts = []
  # @@next_id = 1000

  # This method should initialize the contact's attributes
  # def initialize(first_name,last_name,email,notes = 'N/A')
  #   @first_name = first_name
  #   @last_name  = last_name
  #   @email      = email
  #   @notes      = notes
  #
  #   @id = @@next_id
  #   @@next_id += 1
  # end

  # # This method should call the initializer,
  # # store the newly created contact, and then return it
  # def self.create(first_name,last_name,email,notes)
  #   new_contact = Contact.new(first_name,last_name,email,notes)
  #   @@contacts << new_contact
  #   return new_contact
  # end
  #
  # # This method should return all of the existing contacts
  # def self.all
  #   return @@contacts
  # end
  #
  # # This method should accept an id as an argument
  # # and return the contact who has that id
  # def self.find(id)
  #   @@contacts.find do |contact|
  #     contact.id == id
  #   end
  # end
  #
  # # This method should allow you to specify
  # # 1. which of the contact's attributes you want to update
  # # 2. the new value for that attribute
  # # and then make the appropriate change to the contact
  # def update(current, latest)
  #   if current == @first_name
  #     @first_name = latest
  #   elsif current == @last_name
  #     @last_name = latest
  #   elsif current == @email
  #     @email = latest
  #   end
  # end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  # def self.find_by(user_input)
  #   @@contacts.each do |contact|
  #
  #     if contact.id == user_input || contact.first_name == user_input || contact.last_name == user_input || contact.email == user_input || contact.full_name == user_input
  #       return "Name: #{contact.full_name} \nEmail: #{contact.email} \nNotes: #{contact.note} \nid: #{contact.id}"
  #     end
  #   end
  # end

  # This method should delete all of the contacts
  # def self.delete_all
  #   @@contacts.clear
  # end

  def full_name
    "#{first_name} #{last_name}"
  end

#   # This method should delete the contact
#   # HINT: Check the Array class docs for built-in methods that might be useful here
#   def delete
#     @@contacts.delete(self)
#   end
#
#   # Feel free to add other methods here, if you need them.
#
#   def first_name
#     @first_name
#   end
#
#   def last_name
#     @last_name
#   end
#
#   # a getter
#   def email
#     @email
#   end
#
#   def note
#    #
#   end
#
#   def id
#     @id
#   end
#
#   # a setter
#   def first_name=(first_name)
#     @first_name = first_name
#   end
#
#   def email=(email)
#     @email = email
#   end
#
#   def note=(note)
      #
#   end
#
end

Contact.auto_upgrade!
#
# puts "Empty Contact List"
# puts Contact.all.inspect
# puts
#
# betty = Contact.create('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
# mary = Contact.create('Mary','Williams','marywilliams@gmail.com','Loves Dragonball Z')
# bruce = Contact.create('Bruce','Wayne','brucewayne@wayneenterprise.com','I am the darkness. I am the knight. I AM BATMAN!')
#
# puts
# puts "New contacts in the list"
# puts Contact.all.inspect
#
# puts
# puts "Find Bruce Wayne by first name"
# puts Contact.find_by('Bruce')
#
# puts
# puts "Delete Mary"
# puts mary.delete
#
# puts
# puts "Contact list with only two person"
# puts Contact.all.inspect
#
# puts
# puts "Delete all"
# puts Contact.delete_all
# puts Contact.all.inspect
# # p Contact.find_by("first_name","Betty")
