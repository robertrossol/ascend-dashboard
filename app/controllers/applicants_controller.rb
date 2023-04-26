class ApplicantsController < ApplicationController

  def index
    @applicants = Applicant.all
    render "applicants/index"
  end

  def show
    applicant_id = params[:id]
    @applicant = Applicant.find_by(id: applicant_id)
    render "applicants/show"
  end
end
