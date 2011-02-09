require 'spec_helper'

describe "membership_kinds/index.html.haml" do
  before(:each) do
    assign(:membership_kinds, [
      stub_model(MembershipKind),
      stub_model(MembershipKind)
    ])
  end

  it "renders a list of membership_kinds" do
    render
  end
end
