class TherapistsController < ApplicationController
  before_action :set_therapist, only: [:show, :update, :destroy]
    
  def index
    @therapist = Therapist.all

    render json: @therapist
  end

  def create
    @therapist = Therapist.new(therapist_params)

    if @therapist.save
      render json: @therapist, status: :created, location: nil
    else
      render json: @therapist.errors, status: :unprocessable_entity
    end
  end

  def update
    if @therapist.update(therapist_params)
      render json: @therapist
    else
      render json: @therapist.errors, status: :unprocessable_entity
    end
  end    

  def show
    render json: @therapist
  end

  def destroy
    @therapist.destroy
  end

  private

  def set_therapist
    @therapist = Therapist.find(params[:id])
  end    

  def therapist_params
    params.permit(:name, :signature)
  end
end
