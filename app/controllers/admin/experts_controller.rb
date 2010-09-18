class Admin::ExpertsController < Admin::BaseController
  # GET /experts
  # GET /experts.xml
  def index
    @experts = Expert.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @experts }
    end
  end

  # GET /experts/1
  # GET /experts/1.xml
  def show
    @expert = Expert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expert }
    end
  end

  # GET /experts/new
  # GET /experts/new.xml
  def new
    @expert = Expert.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expert }
    end
  end

  # GET /experts/1/edit
  def edit
    @expert = Expert.find(params[:id])
  end

  # POST /experts
  # POST /experts.xml
  def create
    @expert = Expert.new(params[:expert])

    respond_to do |format|
      if @expert.save
        format.html { redirect_to(@expert, :notice => 'Expert was successfully created.') }
        format.xml  { render :xml => @expert, :status => :created, :location => @expert }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /experts/1
  # PUT /experts/1.xml
  def update
    @expert = Expert.find(params[:id])

    respond_to do |format|
      if @expert.update_attributes(params[:expert])
        format.html { redirect_to(@expert, :notice => 'Expert was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /experts/1
  # DELETE /experts/1.xml
  def destroy
    @expert = Expert.find(params[:id])
    @expert.destroy

    respond_to do |format|
      format.html { redirect_to(experts_url) }
      format.xml  { head :ok }
    end
  end
end
