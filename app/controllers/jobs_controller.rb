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
    @job = current_user.jobs.build
  end
  
  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job =  current_user.jobs.build(job_params)
    if @job.save
      redirect_to jobs_path 
    else
      render 'new'
    end
  end
  
  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      flash[:success] = "Object was successfully updated"
      redirect_to jobs_url
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    if @job.destroy
      flash[:success] = 'Object was successfully deleted.'
      redirect_to jobs_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to jobs_url
    end
  end
  

  private

  def job_params
    params.require(:job).permit(:name, :website, :title, 
                                :description, :location, :email)
  end
end

