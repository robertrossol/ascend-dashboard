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

  def new
    render "applicants/new"
  end

  def create
    headers = %w(name manager mentor unit alert_date employee_id promotion_month)
    parameters = params.keys.select {|param| param.in?(headers)}
    applicant_data = parameters.each.with_object({}) do |param, hsh|
      hsh[param] = params[param]
    end
    p applicant_data
    applicant = Applicant.new(applicant_data)
    applicant.save
    redirect_to '/'
  end
end
