class OrgsController < ApplicationController
  before_action :set_org, only: %i[ show update destroy ]

  # GET /orgs
  def index
    @orgs = Org.all

    if @orgs
      render json: {status: "SUCCESS", message: "Fetched all the orgs successfully", data: @orgs}, status: :ok
    else
      render json: orgs.errors, status: :bad_request
    end


  end

  # GET /orgs/1
  # render json: @org
  # GET /orgs/:id
  def show
    render json: Org.find(params[:id])
  end

  # POST /orgs
  def create
    @org = Org.new(org_params)

    if @org.save
      # render json: @org, status: :created, location: @org
      render json: {status: "SUCCESS", message: "Org was created successfully!", data: @org}, status: :created
    else
      render json: @org.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orgs/1
  def update
    if @org.update(org_params)
      render json: @org
    else
      render json: @org.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orgs/1
  def destroy
    @org.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_org
      @org = Org.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def org_params
      params.require(:org).permit(:name, :zip)
    end
end
