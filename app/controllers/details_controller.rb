class DetailsController < ApplicationController
  before_action :set_detail, only: %i[ show edit update destroy]

  # GET /details or /details.json
  def index
    @userid = params[:param1]
    #@details = Detail.all
    @owner = User.select('user_fullname').where("user_id = ?",@userid)
    @name  = Detail.joins(:user).select('users.user_fullname, details.phone_number').where("users.user_id = ?",@userid)
    @phones  = Detail.select('user_id, phone_number, phone_id').where("user_id = ?",@userid)
    @length = @name.size
    @detail = Detail.find_by_user_id(params[:id])

  end

  # GET /details/1 or /details/1.json
  def show
    @phones  = Detail.select('user_id, phone_number, phone_id').where("user_id = ?",@userid)
    @userid = params[:param2]
    @detail = Detail.find_by_user_id(params[:id])
    @number = Detail.find_by_phone_id(params[:id])
  end

  # GET /details/new
  def new
    @userid = params[:param2]
    @detail = Detail.new
  end

  # GET /details/1/edit
  def edit
      @userid = params[:id]
      @phones  = Detail.select('user_id,phone_number, phone_id').where("user_id = ?",@userid)
      @detail = Detail.find_by_user_id(params[:id])
  end

  # POST /details or /details.json
  def create
    @detail = Detail.new(detail_params)

    respond_to do |format|
      if @detail.save
        format.html { redirect_to users_url(@detail), notice: "Detail was successfully created." }
        format.json { render :show, status: :created, location: @detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details/1 or /details/1.json
  def update

        @detail = Detail.find(params[:id])

          respond_to do |format|
            if @detail.update(update_params)
              format.html { redirect_to users_url(@detail), notice: "Detail was successfully updated." }
              format.json { render :show, status: :ok, location: @detail }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @detail.errors, status: :unprocessable_entity }
            end
          end
  end

  # DELETE /details/1 or /details/1.json
  def destroy
     
      @phone = Detail.find(params[:id])
      @phone.destroy

      respond_to do |format|
      format.html { redirect_to users_url, notice: "Phone Number was successfully deleted." }
      format.json { head :no_content }
      end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail
      @detail = Detail.find_by_user_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detail_params
      params.require(:detail).permit(:user_id, :phone_id, :phone_number)
    end

    def update_params
      params.require(:detail).permit(:phone_id, :phone_number)
    end  


end
