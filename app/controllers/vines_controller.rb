class VinesController < ApplicationController
  before_action :set_vine, only: [:show, :edit, :update, :destroy]

  def index
    @vines = Vine.all
  end

  def show
  end

  def new
    @vine = Vine.new
  end

  def edit
  end

  def create
    @vine = Vine.new(vine_params)

    respond_to do |format|
      if @vine.save
        format.html { redirect_to @vine, notice: 'Vine was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vine }
      else
        format.html { render action: 'new' }
        format.json { render json: @vine.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vine.update(vine_params)
        format.html { redirect_to @vine, notice: 'Vine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vine.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vine.destroy
    respond_to do |format|
      format.html { redirect_to vines_url }
      format.json { head :no_content }
    end
  end

  private
    def set_vine
      @vine = Vine.find(params[:id])
    end

    def vine_params
      params.require(:vine).permit(:url, :thumb, :caption)
    end
end
