class User < ApplicationRecord

    has_many :match_predictions
    has_many :matches, through: :match_predictions

    #Validate The Format and Presence of Required Information
    #validates :username, 
    #presence: {message: "Username must be presence."},
    #uniqueness: {message: "Username already exist, please choose different."}, 
    #format: {with: /^[a-zA-Z0-9_\.]*$/, :multiline => true, message: " must be valid characters. (A-Z and 0-9 only)"}

    validates :email, 
    presence: {message: "Email must be presence."},
    uniqueness: {message: "Email already exist"}, 
    format: {with: /.+@.+\..+/, message: "Email must be in valid format."}

    validates :identity_number,
    presence: {message: "IC Number must be presence."},
    uniqueness: {message: "IC Number already exist"}, 
    format: {with: /\d{6}-\d{2}-\d{4}/, message: "IC Number must be in valid format xxxxxx-xx-xxxx."}

    validates :phone_number, 
    presence: {message: "Phone Number must be presence."}

    validates :password, 
    presence: {message: "Password must be presence."}, 
    confirmation: {message: "Please check again your password."}, 
    length: {:within => 8..10, :too_short => 'Password Minimum 8 Characters', :too_long => 'Password Maximum 10 Characters'}

    before_create :generate_token

    #Bcrypt with Secured Password
    has_secure_password

    #CarrierWave for uploader
    mount_uploader :avatar, AvatarUploader

    enum role: ["super", "admin", "user"]

    def send_password_reset
        self.password_reset_token = generate_token
        self.password_reset_sent_at = Time.now
        #self.save
        UserMailer.forgot_password(self).deliver # This sends an e-mail with a link for the user to reset the password
    end
     
    # This generates a random password reset token for the user
    def generate_token
          return SecureRandom.urlsafe_base64
    end

    def set_username
        @prefix = rand_prefix
        @set = sprintf("#{@prefix}%04d", self.id)
        self.username = @set
    end

    def highlight(uid)
        self.id = uid
        return "current_user"
    end

    def fullname
       self.first_name + " " + self.last_name
    end

    def rand_prefix
        case rand(1..3)
        when 1
            return "kz"
        when 2
            return "kc"
        when 3
            return "kd"
        end
    end

    def total_answers(tourid)
        @predictions = self.match_predictions.where(tournament_id: tourid)
        count = 0
        for predict in @predictions 
            count += 1 unless predict.answer_1.blank?
            count += 1 unless predict.answer_2.blank?
            count += 1 unless predict.answer_3.blank?
            count += 1 unless predict.answer_4.blank?
            count += 1 unless predict.answer_5.blank?
        end
        return count
    end

    protected

    def generate_token
        self.password_reset_token = loop do
        random_token = SecureRandom.urlsafe_base64(nil, false)
        break random_token unless User.exists?(password_reset_token: random_token)
        end
    end

end