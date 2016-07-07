class BasicInfo
    attr_accessor :firstname, :lastname, :image, :phonenumber, :email
   def initialize(firstname, lastname, image, phonenumber, email)
      @firstname = firstname
      @lastname = lastname
      @image = image
      @phonenumber = phonenumber
      @email = email
   end
end