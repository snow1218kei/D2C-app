class Image1sController < ApplicationController
  before_action :admin_user,     only: [:index, :show, :new, :create]
  before_action :set_image1, only: %i[ show edit update destroy ]

  # GET /image1s or /image1s.json
  def index
    @image1s = Image1.all
  end

  # GET /image1s/1 or /image1s/1.json
  def show
  end

  # GET /image1s/new
  def new
    @image1 = Image1.new
  end

  # GET /image1s/1/edit
  def edit
  end

  # POST /image1s or /image1s.json
  def create
    @image1 = Image1.new(image1_params)

    respond_to do |format|
      if @image1.save
        format.html { redirect_to @image1, notice: "Image1 was successfully created." }
        format.json { render :show, status: :created, location: @image1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image1s/1 or /image1s/1.json
  def update
    respond_to do |format|
      if @image1.update(image1_params)
        format.html { redirect_to @image1, notice: "Image1 was successfully updated." }
        format.json { render :show, status: :ok, location: @image1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @image1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image1s/1 or /image1s/1.json
  def destroy
    @image1.destroy
    respond_to do |format|
      format.html { redirect_to image1s_url, notice: "Image1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image1
      @image1 = Image1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image1_params
      params.require(:image1).permit(:image)
    end
end
