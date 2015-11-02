class TrainingsController < ApplicationController
  before_action :set_training, only: [:show, :edit, :update]
	before_action :authenticate_user!, except: [:show]

  # GET /trainings/1
  # GET /trainings/1.json
  def show
		@training = Training.find(1)
  end

  # GET /trainings/new
  def new
    @training = Training.new
  end

  # GET /trainings/1/edit
  def edit
		@training = Training.find(1)
  end

  # POST /trainings
  # POST /trainings.json
  def create
    @training = Training.new(training_params)

    respond_to do |format|
      if @training.save
        format.html { redirect_to '/training', notice: 'Обучение создано.' }
        format.json { render :show, status: :created, location: @training }
      else
        format.html { render :new }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainings/1
  # PATCH/PUT /trainings/1.json
  def update
    respond_to do |format|
      if @training.update(training_params)
        format.html { redirect_to '/training', notice: 'Обучение обновлено.' }
        format.json { render :show, status: :ok, location: @training }
      else
        format.html { render :edit }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training
      @training = Training.find(1)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_params
			params.require(:training).permit(:content,
				training_pictures_attributes: [:id, :alt, :caption, :image, :_destroy])
    end
end
