class MagaginesController < ApplicationController
  # GET /magagines
  # GET /magagines.json
  def index
    @magagines = Magagine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @magagines }
    end
  end

  # GET /magagines/1
  # GET /magagines/1.json
  def show
    @magagine = Magagine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @magagine }
    end
  end

  # GET /magagines/new
  # GET /magagines/new.json
  def new
    @magagine = Magagine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @magagine }
    end
  end

  # GET /magagines/1/edit
  def edit
    @magagine = Magagine.find(params[:id])
  end

  # POST /magagines
  # POST /magagines.json
  def create
    @magagine = Magagine.new(params[:magagine])

    respond_to do |format|
      if @magagine.save
        format.html { redirect_to @magagine, notice: 'Magagine was successfully created.' }
        format.json { render json: @magagine, status: :created, location: @magagine }
      else
        format.html { render action: "new" }
        format.json { render json: @magagine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /magagines/1
  # PUT /magagines/1.json
  def update
    @magagine = Magagine.find(params[:id])

    respond_to do |format|
      if @magagine.update_attributes(params[:magagine])
        format.html { redirect_to @magagine, notice: 'Magagine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @magagine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magagines/1
  # DELETE /magagines/1.json
  def destroy
    @magagine = Magagine.find(params[:id])
    @magagine.destroy

    respond_to do |format|
      format.html { redirect_to magagines_url }
      format.json { head :no_content }
    end
  end
end
