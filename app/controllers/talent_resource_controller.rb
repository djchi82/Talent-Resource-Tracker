class TalentResourceController < ApplicationController
  def index
    @talents = Talent.all
  end

end
