class CatchesController < ApplicationController
  # GET /catches
  # GET /catches.json
  def index
    @catches = Catch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catches }
    end
  end

  # GET /catches/1
  # GET /catches/1.json
  def show
    @catch = Catch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @catch }
    end
  end

  # GET /catches/new
  # GET /catches/new.json
  def new
    @catch = Catch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @catch }
    end
  end

  # GET /catches/1/edit
  def edit
    @catch = Catch.find(params[:id])
  end

  # POST /catches
  # POST /catches.json
  def create
    @catch = Catch.new(params[:catch])

    respond_to do |format|
      if @catch.save
        format.html { redirect_to @catch, notice: 'Catch was successfully created.' }
        format.json { render json: @catch, status: :created, location: @catch }
      else
        format.html { render action: "new" }
        format.json { render json: @catch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /catches/1
  # PUT /catches/1.json
  def update
    @catch = Catch.find(params[:id])

    respond_to do |format|
      if @catch.update_attributes(params[:catch])
        format.html { redirect_to @catch, notice: 'Catch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @catch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catches/1
  # DELETE /catches/1.json
  def destroy
    @catch = Catch.find(params[:id])
    @catch.destroy

    respond_to do |format|
      format.html { redirect_to catches_url }
      format.json { head :no_content }
    end
  end
end
