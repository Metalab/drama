class MembershipPeriod

  include DataMapper::Resource

  property :id, Serial

  property :begin_date, Date
  property :end_date, Date
  property :fee_override, Decimal

  belongs_to :member
  belongs_to :membership_kind
end
