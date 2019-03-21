class JobsController < ApplicationController
  def index
    @jobs = Job.all
    if params[:id]
      @selected_job = Job.find(params[:id])
    else
      @selected_job = Job.last
    end
  end

  def new; end
  
  def create
    @jobs = Job.new(job_params)
    @jobs.save

    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:name, :website, :title, 
                                :description, :location, :email)
  end
end

