class FaqpostsController < ApplicationController
  before_action :set_faqpost, only: [:show, :edit, :update, :destroy]

  # GET /faqposts
  # GET /faqposts.json
  def index
    @faqposts = Faqpost.all
  end

  # GET /faqposts/1
  # GET /faqposts/1.json
  def show
  end

  # GET /faqposts/new
  def new
    @faqpost = Faqpost.new
  end

  # GET /faqposts/1/edit
  def edit
  end

  # POST /faqposts
  # POST /faqposts.json
  def create
    @faqpost = Faqpost.new(faqpost_params)
    #binding.pry 
    respond_to do |format|
      if @faqpost.save
        format.html { redirect_to root_url, notice: 'Article added successfully.' }
        #format.html { redirect_to @faqpost, notice: 'Faqpost was successfully created.' }
        #format.json { render :show, status: :created, location: @faqpost }
      else
        format.html { redirect_to root_url, notice: 'Something went wrong.' }
        #format.html { render :new }
        #format.json { render json: @faqpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faqposts/1
  # PATCH/PUT /faqposts/1.json
  def update
    respond_to do |format|
      if @faqpost.update(faqpost_params)
        #format.html { redirect_to root_url, notice: 'Faqpost was successfully updated.' }
        #format.json { render :show, status: :ok, location: @faqpost }
        format.html { redirect_to root_url, notice: 'Article updated successfully.' }
      else
        format.html { redirect_to root_url, notice: 'Something went wrong.' }
        #format.html { render :edit }
        #format.json { render json: @faqpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faqposts/1
  # DELETE /faqposts/1.json
  def destroy
    @faqpost.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Faqpost was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faqpost
      @faqpost = Faqpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faqpost_params
      params.require(:faqpost).permit(:title, :content, :faqcat_id)
    end
end
