class Member

  include DataMapper::Resource
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable


  property :id, Serial
  property :nickname, String, :required => true
  property :first_name, String, :required => true
  property :last_name, String, :required => true
  property :is_admin, Boolean, :default => false
  
  property :intern_list_email, String, :length => 255

  property :street, String, :required => true, :length => 150
  property :zip_code, String, :required => true
  property :city, String, :required => true, :length => 150
  property :country, String, :required => true
  property :phone_number, String
  property :day_of_birth, Date
  
  has n, :membership_periods

  property :deleted_at, ParanoidDateTime


  validates_format_of :intern_list_email, :as => :email_address
  
  
  timestamps :at

end
