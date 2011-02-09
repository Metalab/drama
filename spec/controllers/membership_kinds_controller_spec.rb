require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MembershipKindsController do

  def mock_membership_kind(stubs={})
    @mock_membership_kind ||= mock_model(MembershipKind, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all membership_kinds as @membership_kinds" do
      MembershipKind.stub(:all) { [mock_membership_kind] }
      get :index
      assigns(:membership_kinds).should eq([mock_membership_kind])
    end
  end

  describe "GET show" do
    it "assigns the requested membership_kind as @membership_kind" do
      MembershipKind.stub(:get).with("37") { mock_membership_kind }
      get :show, :id => "37"
      assigns(:membership_kind).should be(mock_membership_kind)
    end
  end

  describe "GET new" do
    it "assigns a new membership_kind as @membership_kind" do
      MembershipKind.stub(:new) { mock_membership_kind }
      get :new
      assigns(:membership_kind).should be(mock_membership_kind)
    end
  end

  describe "GET edit" do
    it "assigns the requested membership_kind as @membership_kind" do
      MembershipKind.stub(:get).with("37") { mock_membership_kind }
      get :edit, :id => "37"
      assigns(:membership_kind).should be(mock_membership_kind)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created membership_kind as @membership_kind" do
        MembershipKind.stub(:new).with({'these' => 'params'}) { mock_membership_kind(:save => true) }
        post :create, :membership_kind => {'these' => 'params'}
        assigns(:membership_kind).should be(mock_membership_kind)
      end

      it "redirects to the created membership_kind" do
        MembershipKind.stub(:new) { mock_membership_kind(:save => true) }
        post :create, :membership_kind => {}
        response.should redirect_to(membership_kind_url(mock_membership_kind))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved membership_kind as @membership_kind" do
        MembershipKind.stub(:new).with({'these' => 'params'}) { mock_membership_kind(:save => false) }
        post :create, :membership_kind => {'these' => 'params'}
        assigns(:membership_kind).should be(mock_membership_kind)
      end

      it "re-renders the 'new' template" do
        MembershipKind.stub(:new) { mock_membership_kind(:save => false) }
        post :create, :membership_kind => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested membership_kind" do
        MembershipKind.stub(:get).with("37") { mock_membership_kind }
        mock_membership_kind.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :membership_kind => {'these' => 'params'}
      end

      it "assigns the requested membership_kind as @membership_kind" do
        MembershipKind.stub(:get) { mock_membership_kind(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:membership_kind).should be(mock_membership_kind)
      end

      it "redirects to the membership_kind" do
        MembershipKind.stub(:get) { mock_membership_kind(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(membership_kind_url(mock_membership_kind))
      end
    end

    describe "with invalid params" do
      it "assigns the membership_kind as @membership_kind" do
        MembershipKind.stub(:get) { mock_membership_kind(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:membership_kind).should be(mock_membership_kind)
      end

      it "re-renders the 'edit' template" do
        MembershipKind.stub(:get) { mock_membership_kind(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested membership_kind" do
      MembershipKind.stub(:get).with("37") { mock_membership_kind }
      mock_membership_kind.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the membership_kinds list" do
      MembershipKind.stub(:get) { mock_membership_kind }
      delete :destroy, :id => "1"
      response.should redirect_to(membership_kinds_url)
    end
  end

end
