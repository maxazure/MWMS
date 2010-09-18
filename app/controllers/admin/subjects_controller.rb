class Admin::SubjectsController <  Admin::BaseController
  # GET /subjects
  # GET /subjects.xml
  def index
    @subjects = Subject.paginate :page => params[:page],:conditions=>["user_id=?",session[:user_id]], :order => 'created_at DESC'

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /subjects/1
  # GET /subjects/1.xml
  def show
    @subject = Subject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /subjects/new
  # GET /subjects/new.xml
  def new
    @subject = Subject.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /subjects/1/edit
  def edit
    @subject = Subject.find(params[:id])
  end

  # POST /subjects
  # POST /subjects.xml
  def create
    @subject = Subject.new(params[:subject])
    @subject.user_id = session[:user_id]

    respond_to do |format|
      if @subject.save
        format.html { redirect_to(admin_subjects, :notice => 'Subject was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /subjects/1
  # PUT /subjects/1.xml
  def update
    @subject = Subject.find(params[:id])

    respond_to do |format|
      if @subject.update_attributes(params[:subject])
        format.html { redirect_to(admin_subjects_url, :notice => 'Subject was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.xml
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    respond_to do |format|
      format.html { redirect_to(subjects_url) }
      format.xml  { head :ok }
    end
  end
end
