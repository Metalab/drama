class MembershipKind

  include DataMapper::Resource

  property :id, Serial

  property :name, String
  property :fee, Decimal, :precision => 10, :scale => 2

end
