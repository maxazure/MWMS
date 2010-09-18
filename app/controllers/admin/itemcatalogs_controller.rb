class Admin::ItemcatalogsController < Admin::BaseController
  # GET /itemcatalogs
  # GET /itemcatalogs.xml
  def index
    @itemcatalogs = Itemcatalog.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /itemcatalogs/1
  # GET /itemcatalogs/1.xml
  def show
    @itemcatalog = Itemcatalog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /itemcatalogs/new
  def new
    @itemcatalog = Itemcatalog.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /itemcatalogs/1/edit
  def edit
    @itemcatalog = Itemcatalog.find(params[:id])
  end

  # POST /itemcatalogs
  # POST /itemcatalogs.xml
  def create
    
    @itemcatalog = Itemcatalog.new(params[:itemcatalog])
    @itemcatalog.user_id = session['user_id']

    respond_to do |format|
      if @itemcatalog.save
        format.html { redirect_to('/admin/itemcatalogs', :notice => 'Itemcatalog was successfully created.') }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itemcatalog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itemcatalogs/1
  # PUT /itemcatalogs/1.xml
  def update
    @itemcatalog = Itemcatalog.find(params[:id])

    respond_to do |format|
      if @itemcatalog.update_attributes(params[:itemcatalog])
        format.html { redirect_to('/admin/itemcatalogs', :notice => 'Itemcatalog was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /itemcatalogs/1
  # DELETE /itemcatalogs/1.xml
  def destroy
    @itemcatalog = Itemcatalog.find(params[:id])
    @itemcatalog.destroy

    respond_to do |format|
      format.html { redirect_to(admin_itemcatalogs_url) }
    end
  end
end
