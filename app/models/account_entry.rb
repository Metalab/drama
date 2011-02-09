class AccountEntry

  include DataMapper::Resource

  property :id, Serial

  property :amount, Decimal
  property :booked_at, DateTime
  property :text, String, :length => 255
  property :created_by, String
  belongs_to :account

end
