class ToDosController < ApplicationController
  before_action :set_to_do, only: [:show, :update, :destroy]

  # GET /to_dos
  # GET /to_dos.json
  def index
    @to_dos = ToDo.all

    render json: @to_dos
  end

  # GET /to_dos/1
  # GET /to_dos/1.json
  def show
    render json: @to_do
  end

  # POST /to_dos
  # POST /to_dos.json
  def create
    @to_do = ToDo.new(to_do_params)
    id = ""
    request_url = request.env["HTTP_REFERER"]
    array = request_url.split('/')
    id = array[-3]
    user = User.find(id.to_i)
    @to_do.user = user
    if @to_do.save
      render json: @to_do, status: :created, location: @to_do
    else
      render json: @to_do.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /to_dos/1
  # PATCH/PUT /to_dos/1.json
  def update
    @to_do = ToDo.find(params[:id])

    if @to_do.update(to_do_params)
      head :no_content
    else
      render json: @to_do.errors, status: :unprocessable_entity
    end
  end

  # DELETE /to_dos/1
  # DELETE /to_dos/1.json
  def destroy
    @to_do.destroy

    head :no_content
  end

  private

    def set_to_do
      @to_do = ToDo.find(params[:id])
    end

    def to_do_params
      params.require(:to_do).permit(:description, :user_id)
    end
end
