class RestsController < ApplicationController
  # GET /rests
  # GET /rests.json
  def index
    @rests = Rest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rests }
    end
  end

  # GET /rests/1
  # GET /rests/1.json
  def show
    @rest = Rest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rest }
    end
  end

  # GET /rests/new
  # GET /rests/new.json
  def new
    @rest = Rest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rest }
    end
  end

  # GET /rests/1/edit
  def edit
    @rest = Rest.find(params[:id])
  end

  # POST /rests
  # POST /rests.json
  def create
    @rest = Rest.new(params[:rest])

    respond_to do |format|
      if @rest.save
        format.html { redirect_to @rest, notice: 'Rest was successfully created.' }
        format.json { render json: @rest, status: :created, location: @rest }
      else
        format.html { render action: "new" }
        format.json { render json: @rest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rests/1
  # PUT /rests/1.json
  def update
    @rest = Rest.find(params[:id])

    respond_to do |format|
      if @rest.update_attributes(params[:rest])
        format.html { redirect_to @rest, notice: 'Rest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rests/1
  # DELETE /rests/1.json
  def destroy
    @rest = Rest.find(params[:id])
    @rest.destroy

    respond_to do |format|
      format.html { redirect_to rests_url }
      format.json { head :no_content }
    end
  end
end
