class JobsController < ApplicationController

before_action :find_job, only: [:show, :edit, :update, :destroy]

def index
end

def show
end

def edit
end

def new
@job = Job.new
end
def create
  @job = Job.new(job_params)
   if @job.save
    redirect_to @job
     else 
    render "New"
   end

end

def update
end


def destroy
end

def job_params
params.require(:job).permit(:title, :description, :company, :url)
end

def find_jobs
 @job = Job.find(parms[:id])
end



end
