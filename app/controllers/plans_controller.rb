class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(params[:plan])
    if @plan.save
      redirect_to plans_path, notice: "Plan successfully created"
    else
      render :new
    end
  end
end