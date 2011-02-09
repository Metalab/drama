require "spec_helper"

describe MembershipKindsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/membership_kinds" }.should route_to(:controller => "membership_kinds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/membership_kinds/new" }.should route_to(:controller => "membership_kinds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/membership_kinds/1" }.should route_to(:controller => "membership_kinds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/membership_kinds/1/edit" }.should route_to(:controller => "membership_kinds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/membership_kinds" }.should route_to(:controller => "membership_kinds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/membership_kinds/1" }.should route_to(:controller => "membership_kinds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/membership_kinds/1" }.should route_to(:controller => "membership_kinds", :action => "destroy", :id => "1")
    end

  end
end
