class StaticController < ApplicationController
  before_action :authenticate_user!, only: [:not_index]
  def index
  end

  def not_index
  end
end
