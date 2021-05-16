class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :kitchensink ]

  def home; end

  def dashboard; end

  def kitchensink; end
end
