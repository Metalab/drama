require 'spec_helper'

describe "membership_kinds/new.html.haml" do
  before(:each) do
    assign(:membership_kind, stub_model(MembershipKind).as_new_record)
  end

  it "renders new membership_kind form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => membership_kinds_path, :method => "post" do
    end
  end
end
