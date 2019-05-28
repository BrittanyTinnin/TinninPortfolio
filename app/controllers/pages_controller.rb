class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
    @skills = Skill.all
  end
end
