class SkillsController < ApplicationController
  before_action :set_skill, only: [:destroy]
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    respond_to do |format|
      if @skill.save
        format.html { 
          flash[:notice] = 'Skill was successfully created.'
          redirect_to about_url
        }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to about_url, notice: 'Skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to about_url, notice: 'Skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:title, :percent_utilized)
  end

  def set_skill
    @skill = Skill.find(params[:id])
  end
end
