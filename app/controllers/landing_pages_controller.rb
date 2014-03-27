class LandingPagesController < ApplicationController
  before_action :set_landing_page, only: [:show, :edit, :update, :destroy]

  # GET /landing_pages
  # GET /landing_pages.json
  def index
    @landing_pages = LandingPage.all
  end

  # GET /landing_pages/1
  # GET /landing_pages/1.json
  def show
    @prospect = Prospect.new
  end

  # GET /landing_pages/new
  def new
    @landing_page = LandingPage.new
  end

  # GET /landing_pages/1/edit
  def edit
  end

  # POST /landing_pages
  # POST /landing_pages.json
  def create
    @landing_page = LandingPage.new(landing_page_params)

    respond_to do |format|
      if @landing_page.save
        format.html { redirect_to @landing_page, notice: 'Landing page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @landing_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @landing_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landing_pages/1
  # PATCH/PUT /landing_pages/1.json
  def update
    respond_to do |format|
      if @landing_page.update(landing_page_params)
        format.html { redirect_to @landing_page, notice: 'Landing page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @landing_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landing_pages/1
  # DELETE /landing_pages/1.json
  def destroy
    @landing_page.destroy
    respond_to do |format|
      format.html { redirect_to landing_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing_page
      @landing_page = LandingPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landing_page_params
      params.require(:landing_page).permit(:head_color, :head_font, :body_font, :image_caption, :body_copy, :video, :video_caption, :guarantee, :privacy, :button2_text, :button2_color, :campaign_channel, :keyword_group, :campaign_name, :headline, :subhead, :image, :captionbutton_text, :call_to_action, :button_color, :background_color)
    end
end
