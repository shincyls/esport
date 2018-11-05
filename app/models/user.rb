class User < ApplicationRecord

    has_many :match_predictions
    has_many :matches, through: :match_predictions

    #Validate The Format and Presence of Required Information
    validates :username, 
    presence: {message: "Username must be presence."},
    uniqueness: {message: "Username already exist, please choose different."}, 
    format: {with: /^[a-zA-Z0-9_\.]*$/, :multiline => true, message: " must be valid characters. (A-Z and 0-9 only)"}
    validates :email, 
    presence: {message: "Email must be presence."},
    uniqueness: {message: "Email already exist"}, 
    format: {with: /.+@.+\..+/, message: "Email must be in valid format."}
    # validates :first_name, presence: {message: " must be presence."}
    # validates :last_name, presence: {message: " must be presence."}
    validates :phone_number, 
    presence: {message: "Phone Number must be presence."}
    validates :password, 
    presence: {message: "Password must be presence."}, 
    confirmation: {message: "Please check again your password."}, 
    length: {:within => 8..10, :too_short => 'Password Minimum 8 Characters', :too_long => 'Password Maximum 10 Characters'}

    #Bcrypt with Secured Password
    has_secure_password

    #CarrierWave for uploader
    mount_uploader :avatar, AvatarUploader

    enum role: ["super", "admin", "user"]

    def fullname
       self.first_name + " " + self.last_name
    end

end