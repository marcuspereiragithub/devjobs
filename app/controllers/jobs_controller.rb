class JobsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @jobs = Job.all
    if params[:id]
      @selected_job = Job.find(params[:id])
    else
      @selected_job = Job.last
    end
  end

  def new
    @jobs = current_user.jobs.build
  end
  
  def create
    @jobs =  current_user.jobs.build(job_params)
    if @jobs.save
      redirect_to jobs_path 
    else
      render 'new'
    end
  end

  private

  def job_params
    params.require(:job).permit(:name, :website, :title, 
                                :description, :location, :email)
  end
end

