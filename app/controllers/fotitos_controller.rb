class FotitosController < ApplicationController
  before_action :set_fotito, only: [:show, :edit, :update, :destroy]

  # GET /fotitos
  # GET /fotitos.json
  def index
    @fotitos = Fotito.all
  end

  # GET /fotitos/1
  # GET /fotitos/1.json
  def show
  end

  # GET /fotitos/new
  def new
    @fotito = Fotito.new
  end

  # GET /fotitos/1/edit
  def edit
  end

  # POST /fotitos
  # POST /fotitos.json
  def create
    @fotito = Fotito.new(fotito_params)

    respond_to do |format|
      if @fotito.save
        format.html { redirect_to @fotito, notice: 'Fotito was successfully created.' }
        format.json { render :show, status: :created, location: @fotito }
      else
        format.html { render :new }
        format.json { render json: @fotito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotitos/1
  # PATCH/PUT /fotitos/1.json
  def update
    respond_to do |format|
      if @fotito.update(fotito_params)
        format.html { redirect_to @fotito, notice: 'Fotito was successfully updated.' }
        format.json { render :show, status: :ok, location: @fotito }
      else
        format.html { render :edit }
        format.json { render json: @fotito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotitos/1
  # DELETE /fotitos/1.json
  def destroy
    @fotito.destroy
    respond_to do |format|
      format.html { redirect_to fotitos_url, notice: 'Fotito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotito
      @fotito = Fotito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotito_params
      params.require(:fotito).permit(:nombre, :imagen)
    end
end
