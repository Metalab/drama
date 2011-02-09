class Account

  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :account_entries

  property :deleted_at, ParanoidDateTime
end
