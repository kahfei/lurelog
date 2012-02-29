class LuresController < ApplicationController
  # GET /lures
  # GET /lures.json
  def index
    @lures = Lure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lures }
    end
  end

  # GET /lures/1
  # GET /lures/1.json
  def show
    @lure = Lure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lure }
    end
  end

  # GET /lures/new
  # GET /lures/new.json
  def new
    @lure = Lure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lure }
    end
  end

  # GET /lures/1/edit
  def edit
    @lure = Lure.find(params[:id])
  end

  # POST /lures
  # POST /lures.json
  def create
    @lure = Lure.new(params[:lure])

    respond_to do |format|
      if @lure.save
        format.html { redirect_to @lure, notice: 'Lure was successfully created.' }
        format.json { render json: @lure, status: :created, location: @lure }
      else
        format.html { render action: "new" }
        format.json { render json: @lure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lures/1
  # PUT /lures/1.json
  def update
    @lure = Lure.find(params[:id])

    respond_to do |format|
      if @lure.update_attributes(params[:lure])
        format.html { redirect_to @lure, notice: 'Lure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lures/1
  # DELETE /lures/1.json
  def destroy
    @lure = Lure.find(params[:id])
    @lure.destroy

    respond_to do |format|
      format.html { redirect_to lures_url }
      format.json { head :no_content }
    end
  end
end
