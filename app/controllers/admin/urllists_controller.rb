class Admin::UrllistsController < Admin::BaseController

  # GET /urllists
  # GET /urllists.xml
  def index
    @urllists = Urllist.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @urllists }
    end
  end

  # GET /urllists/new
  # GET /urllists/new.xml
  def new
    @urllist = Urllist.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /urllists/1/edit
  def edit
    @urllist = Urllist.find(params[:id])
  end

  # POST /urllists
  # POST /urllists.xml
  def create
    @urllist = Urllist.new(params[:urllist])
    @urllist.user_id = session[:user_id]
    respond_to do |format|
      if @urllist.save
        format.html { redirect_to("/admin/urllists", :notice => 'Urllist was successfully created.') }
        format.xml  { render :xml => @urllist, :status => :created, :location => @urllist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @urllist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /urllists/1
  # PUT /urllists/1.xml
  def update
    @urllist = Urllist.find(params[:id])

    respond_to do |format|
      if @urllist.update_attributes(params[:urllist])
        format.html { redirect_to("/admin/urllists", :notice => 'Urllist was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /urllists/1
  # DELETE /urllists/1.xml
  def destroy
    @urllist = Urllist.find(params[:id])
    @urllist.destroy

    respond_to do |format|
      format.html { redirect_to(admin_urllists_url) }
      format.xml  { head :ok }
    end
  end
end
