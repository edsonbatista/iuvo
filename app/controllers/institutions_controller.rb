class InstitutionsController < ApplicationController
  before_action :set_institution, only: [:show, :edit, :update, :destroy]

  def index
    @institutions = Institution.all
  end

  def show
  end

  def new
    @institution = Institution.new
  end

  def edit
  end

  def create
    service = Institutions::Creator.new(current_user, institution_params)
    service.call
    @institution = service.record

    if @institution.persisted?
      redirect_to @institution, notice: 'Institution was successfully created.'
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @institution.update(institution_params)
        format.html { redirect_to @institution, notice: 'Institution was successfully updated.' }
        format.json { render :show, status: :ok, location: @institution }
      else
        format.html { render :edit }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @institution.destroy
    respond_to do |format|
      format.html { redirect_to institutions_url, notice: 'Institution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_institution
    @institution = Institution.find(params[:id])
  end

  def institution_params
    params.require(:institution).permit(:name)
  end
end
