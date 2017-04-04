  class Contact
    attr_reader :id
    attr_reader :first_name, :last_name, :email, :note

    @@contacts = [ name ]   # Array use for contacts below!
    @@next_id = [1000]    # Needs unigue ID to trackq who they are!

    # Means you need this information.
    def initialize(first_name, last_name, email, note = 'N/A')
      @first_name = first name
      @last_name = last name
      @email  = email
      @note = note

      @id = @@next_id # Creating ID for each.
      @@next_id += 1
      @@contacts << self # attaching ID for each.
    end
  end

  def self.all
   @@contacts
  end

  # created using attr_reader - this is asking for a first and last name
  def full_name
    "#{first_name} #{last_name}"
  end
