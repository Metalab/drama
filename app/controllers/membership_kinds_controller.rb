class MembershipKindsController < ApplicationController
  # GET /membership_kinds
  # GET /membership_kinds.xml
  def index
    @membership_kinds = MembershipKind.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @membership_kinds }
    end
  end

  # GET /membership_kinds/1
  # GET /membership_kinds/1.xml
  def show
    @membership_kind = MembershipKind.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @membership_kind }
    end
  end

  # GET /membership_kinds/new
  # GET /membership_kinds/new.xml
  def new
    @membership_kind = MembershipKind.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @membership_kind }
    end
  end

  # GET /membership_kinds/1/edit
  def edit
    @membership_kind = MembershipKind.get(params[:id])
  end

  # POST /membership_kinds
  # POST /membership_kinds.xml
  def create
    @membership_kind = MembershipKind.new(params[:membership_kind])

    respond_to do |format|
      if @membership_kind.save
        format.html { redirect_to(@membership_kind, :notice => 'Membership kind was successfully created.') }
        format.xml  { render :xml => @membership_kind, :status => :created, :location => @membership_kind }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @membership_kind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /membership_kinds/1
  # PUT /membership_kinds/1.xml
  def update
    @membership_kind = MembershipKind.get(params[:id])

    respond_to do |format|
      if @membership_kind.update_attributes(params[:membership_kind])
        format.html { redirect_to(@membership_kind, :notice => 'Membership kind was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @membership_kind.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /membership_kinds/1
  # DELETE /membership_kinds/1.xml
  def destroy
    @membership_kind = MembershipKind.get(params[:id])
    @membership_kind.destroy

    respond_to do |format|
      format.html { redirect_to(membership_kinds_url) }
      format.xml  { head :ok }
    end
  end
end
