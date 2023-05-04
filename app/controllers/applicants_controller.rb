class ApplicantsController < ApplicationController

  def index
    @applicants = Applicant.all
    render 'index'
  end

  def show
    applicant_id = params[:id]
    @applicant = Applicant.find_by(id: applicant_id)
    render "show"
  end

  def edit
    applicant_id = params[:id]
    @applicant = Applicant.find_by(id: applicant_id)
    render "edit"
  end

  def update
    applicant_id = params[:id]
    @applicant = Applicant.find_by(id: applicant_id)

    @applicant.attributes.keys.each do |attribute|
      @applicant[attribute] = params[attribute.to_sym]
    end
    @applicant.save
    redirect_to "/applicants/#{applicant_id}"
  end

  def new
    render "new"
  end

  def create
    headers = %w(name manager mentor unit alert_date employee_id promotion_month)
    parameters = params.keys.select {|param| param.in?(headers)}
    applicant_data = parameters.each.with_object({}) do |param, hsh|
      hsh[param] = params[param]
    end
    applicant = Applicant.new(applicant_data)
    applicant.save
    redirect_to '/applicants'
  end
end
