class ApplicationlogsController < ApplicationController
  # GET /applicationlogs
  # GET /applicationlogs.json
  def index
    @applicationlogs = Applicationlog.search('faves')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applicationlogs }
    end
  end

  # GET /applicationlogs/1
  # GET /applicationlogs/1.json
  def show
    @applicationlog = Applicationlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applicationlog }
    end
  end

  # GET /applicationlogs/new
  # GET /applicationlogs/new.json
  def new
    @applicationlog = Applicationlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applicationlog }
    end
  end

  # GET /applicationlogs/1/edit
  def edit
    @applicationlog = Applicationlog.find(params[:id])
  end

  # POST /applicationlogs
  # POST /applicationlogs.json
  def create
    @applicationlog = Applicationlog.new(params[:applicationlog])

    respond_to do |format|
      if @applicationlog.save
        format.html { redirect_to @applicationlog, notice: 'Applicationlog was successfully created.' }
        format.json { render json: @applicationlog, status: :created, location: @applicationlog }
      else
        format.html { render action: "new" }
        format.json { render json: @applicationlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applicationlogs/1
  # PUT /applicationlogs/1.json
  def update
    @applicationlog = Applicationlog.find(params[:id])

    respond_to do |format|
      if @applicationlog.update_attributes(params[:applicationlog])
        format.html { redirect_to @applicationlog, notice: 'Applicationlog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applicationlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicationlogs/1
  # DELETE /applicationlogs/1.json
  def destroy
    @applicationlog = Applicationlog.find(params[:id])
    @applicationlog.destroy

    respond_to do |format|
      format.html { redirect_to applicationlogs_url }
      format.json { head :no_content }
    end
  end
end
