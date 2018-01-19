class FaqcatsController < ApplicationController
  before_action :set_faqcat, only: [:show, :edit, :update, :destroy]
  layout "list", only: [:list]


  # GET /faqcats
  # GET /faqcats.json
  def index
    @faqcats = Faqcat.all
  end

  # GET /faqcats/1
  # GET /faqcats/1.json
  def show
  end

  # GET /faqcats/new
  def new
    @faqcat = Faqcat.new
  end

  # GET /faqcats/1/edit
  def edit
  end

  def list
  #  @faqcats = Faqcat.all
  end

  # POST /faqcats
  # POST /faqcats.json
  def create
    @faqcat = Faqcat.new(faqcat_params)
    #binding.pry          # Execution will stop here.

    respond_to do |format|
      if @faqcat.save
        #format.html { redirect_to @faqcat, notice: 'Faqcat was successfully created.' }
        #format.json { render :show, status: :created, location: @faqcat }
        format.html { redirect_to root_url, notice: 'Category added successfully.' }
      else
        #format.html { render :new }
        #format.json { render json: @faqcat.errors, status: :unprocessable_entity }
        format.html { redirect_to root_url, notice: 'Something went wrong.' }
        
      end
    end
  end

  # PATCH/PUT /faqcats/1
  # PATCH/PUT /faqcats/1.json
  def update
    respond_to do |format|
      if @faqcat.update(faqcat_params)
        format.html { redirect_to root_url, notice: 'Category updated successfully.' }
        #format.html { redirect_to @faqcat, notice: 'Category was successfully updated.' }
        #format.json { render :show, status: :ok, location: @faqcat }
      else
        format.html { redirect_to root_url, notice: 'Something went wrong.' }
        #format.html { render :edit }
        #format.json { render json: @faqcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faqcats/1
  # DELETE /faqcats/1.json
  def destroy
    @faqcat.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Faqcat was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faqcat
      @faqcat = Faqcat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faqcat_params
      params.require(:faqcat).permit(:title)
    end
end
