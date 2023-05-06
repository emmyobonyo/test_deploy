class ContactbooksController < ApplicationController
  before_action :set_contactbook, only: %i[ show edit update destroy ]

  # GET /contactbooks or /contactbooks.json
  def index
    @contactbooks = Contactbook.all
  end

  # GET /contactbooks/1 or /contactbooks/1.json
  def show
  end

  # GET /contactbooks/new
  def new
    @contactbook = Contactbook.new
  end

  # GET /contactbooks/1/edit
  def edit
  end

  # POST /contactbooks or /contactbooks.json
  def create
    @contactbook = Contactbook.new(contactbook_params)

    respond_to do |format|
      if @contactbook.save
        format.html { redirect_to contactbook_url(@contactbook), notice: "Contactbook was successfully created." }
        format.json { render :show, status: :created, location: @contactbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contactbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactbooks/1 or /contactbooks/1.json
  def update
    respond_to do |format|
      if @contactbook.update(contactbook_params)
        format.html { redirect_to contactbook_url(@contactbook), notice: "Contactbook was successfully updated." }
        format.json { render :show, status: :ok, location: @contactbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contactbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactbooks/1 or /contactbooks/1.json
  def destroy
    @contactbook.destroy

    respond_to do |format|
      format.html { redirect_to contactbooks_url, notice: "Contactbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactbook
      @contactbook = Contactbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contactbook_params
      params.require(:contactbook).permit(:name, :email, :number)
    end
end
