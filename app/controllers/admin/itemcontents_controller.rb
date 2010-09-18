class Admin::ItemcontentsController < Admin::BaseController
  # GET /itemcontents
  # GET /itemcontents.xml
  def index
    @itemcontents = Itemcontent.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /itemcontents/1
  # GET /itemcontents/1.xml
  def show
    @itemcontent = Itemcontent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /itemcontents/new
  # GET /itemcontents/new.xml
  def new
    @itemcontent = Itemcontent.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /itemcontents/1/edit
  def edit
    @itemcontent = Itemcontent.find(params[:id])
  end

  # POST /itemcontents
  # POST /itemcontents.xml
  def create
    @itemcontent = Itemcontent.new(params[:itemcontent])

    respond_to do |format|
      if @itemcontent.save
        format.html { redirect_to("/admin/itemcontents", :notice => 'Itemcontent was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /itemcontents/1
  # PUT /itemcontents/1.xml
  def update
    @itemcontent = Itemcontent.find(params[:id])

    respond_to do |format|
      if @itemcontent.update_attributes(params[:itemcontent])
        format.html { redirect_to("/admin/itemcontents", :notice => 'Itemcontent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itemcontent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itemcontents/1
  # DELETE /itemcontents/1.xml
  def destroy
    @itemcontent = Itemcontent.find(params[:id])
    @itemcontent.destroy

    respond_to do |format|
      format.html { redirect_to(itemcontents_url) }
      format.xml  { head :ok }
    end
  end
end
