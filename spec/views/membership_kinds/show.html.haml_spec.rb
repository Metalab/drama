require 'spec_helper'

describe "membership_kinds/show.html.haml" do
  before(:each) do
    @membership_kind = assign(:membership_kind, stub_model(MembershipKind))
  end

  it "renders attributes in <p>" do
    render
  end
end
