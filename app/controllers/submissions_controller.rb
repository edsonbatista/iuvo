class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  def index
    @submissions = Submission.all
  end

  def show
  end

  def new
    @submission = Submission.new
    @jobs       = Job.all
  end

  def edit
  end

  def create
    @submission = Submission.new(submission_params)
    @submission.user = current_user
    @submission.job  = Job.take
    @submission.status = false

    if @submission.save
      redirect_to @submission, notice: 'Submission was successfully created.'
    else
      render :new
    end
  end

  def update
    if @submission.update(submission_params)
      redirect_to @submission, notice: 'Submission was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @submission.destroy
    redirect_to submissions_url, notice: 'Submission was successfully destroyed.'
  end

  private

  def set_submission
    @submission = Submission.find(params[:id])
  end

  def submission_params
    params.require(:submission).permit(:job_id, :description)
  end
end
