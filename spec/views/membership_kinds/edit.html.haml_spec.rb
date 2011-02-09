require 'spec_helper'

describe "membership_kinds/edit.html.haml" do
  before(:each) do
    @membership_kind = assign(:membership_kind, stub_model(MembershipKind))
  end

  it "renders the edit membership_kind form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => membership_kinds_path(@membership_kind), :method => "post" do
    end
  end
end
