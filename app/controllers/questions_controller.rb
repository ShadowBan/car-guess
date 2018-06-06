class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy, :crop]

  # GET /questions
  def index
    @questions = Question.all
  end

  # GET /questions/1
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  def crop
  end

  # POST /questions
  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question, notice: 'Question was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /questions/1
  def update
    if @question.update(question_params)
      redirect_to @question, notice: 'Question was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
    redirect_to questions_url, notice: 'Question was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id] || params[:question_id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_params
      params.require(:question).permit(
        :car_image, 
        :car_image_original_w, 
        :car_image_original_h,
        :car_image_crop_x, 
        :car_image_crop_y, 
        :car_image_crop_w, 
        :car_image_crop_h,
        :car_image_aspect,
        :car_image_box_w
      )
    end
end
