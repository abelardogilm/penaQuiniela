class QuinielasController < ApplicationController
  # GET /quinielas
  # GET /quinielas.json
  def index
    @quinielas = Quiniela.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quinielas }
    end
  end

  # GET /quinielas/1
  # GET /quinielas/1.json
  def show
    @quiniela = Quiniela.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quiniela }
    end
  end

  # GET /quinielas/new
  # GET /quinielas/new.json
  def new
    @quiniela = Quiniela.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quiniela }
    end
  end

  # GET /quinielas/1/edit
  def edit
    @quiniela = Quiniela.find(params[:id])
  end

  # POST /quinielas
  # POST /quinielas.json
  def create
    @quiniela = Quiniela.new(params[:quiniela])

    respond_to do |format|
      if @quiniela.save
        format.html { redirect_to @quiniela, notice: 'Quiniela was successfully created.' }
        format.json { render json: @quiniela, status: :created, location: @quiniela }
      else
        format.html { render action: "new" }
        format.json { render json: @quiniela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quinielas/1
  # PUT /quinielas/1.json
  def update
    @quiniela = Quiniela.find(params[:id])

    respond_to do |format|
      if @quiniela.update_attributes(params[:quiniela])
        format.html { redirect_to @quiniela, notice: 'Quiniela was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @quiniela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quinielas/1
  # DELETE /quinielas/1.json
  def destroy
    @quiniela = Quiniela.find(params[:id])
    @quiniela.destroy

    respond_to do |format|
      format.html { redirect_to quinielas_url }
      format.json { head :ok }
    end
  end
end
