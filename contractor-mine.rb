class Contact
  attr_reader :id
  attr_reader :first_name, :last_name, :email, :note

  @@contacts = [ ]   # Array use for contacts below!
  @@next_id = 1   # Needs unigue ID to trackq who they are!

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email  = email
    @note = note

    @id = @@next_id # Creating ID for each.
    @@next_id += 1
    @@contacts << self # attaching ID for each.
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name,email, note )
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return
  end

  # This method should return all of the existing contacts
  def self.all
    return @@Contact
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
       if id == contact.id
       return contact
       end
     end
   end
  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, new_value)
   if attribute == "first_name"
     self.first_name = new_value
   elsif attribute == "last_name"
     self.last_name = new_value
   elsif attribute == "email"
     self.email = new_value
   elsif attribute == "note"
     self.note = new_value
   end

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty

    def self.find_by(attribute, value)

      case attribute
      when 'first_name'
        result = @@contacts.select {|contact| contact.first_name == value}
        result.length == 0 ? (puts "Sorry, this #{attribute} does not exist") : (return result.first(1))
      when 'last_name'
        result = @@contacts.select {|contact| contact.last_name == value}
        result.length == 0 ? (puts "Sorry, this #{attribute} does not exist") : (return result.first(1))
      when 'email'
        result = @@contacts.select {|contact| contact.email == value}
        result.length == 0 ? (puts "Sorry, this #{attribute} does not exist") : (return result.first(1))
      when 'note'
        result = @@contacts.select {|contact| contact.note == value}
        result.length == 0 ? (puts "Sorry, this #{attribute} does not exist") : (return result.first(1))
      end

  end

  # This method should delete all of the contacts
  def self.delete_all
      @@Contact.clear
  end


  def full_name
    "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete.self
    return true
  end


  # Feel free to add other methods here, if you need them.

end

contact = Contact.new('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')

puts contact.first_name

contact2 = Contact.new('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')

puts contact2.first_name
