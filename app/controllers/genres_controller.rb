# frozen_string_literal: true
class GenresController < ApplicationController
  before_action :require_user
  before_action :require_admin_authorization, only: %i[manage new edit create update destroy]

  # GET /genres/1 or /genres/1.json
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def manage
    @genres = Genre.all
  end

  # GET /genres/new
  def new
    @genre = Genre.new
  end

  # GET /genres/1/edit
  def edit
    @genre = Genre.find(params[:id])
  end

  # POST /genres or /genres.json
  def create
    @genre = Genre.new(genre_params)

    respond_to do |format|
      if @genre.save
        format.html { redirect_to "/genres/admin", notice: "genre was successfully created." }
        format.json { render :show, status: :created, location: @genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genres/1 or /genres/1.json
  def update
    @genre = Genre.find(params[:id])
    respond_to do |format|
      if @genre.update(genre_params)
        format.html { redirect_to "/genres/admin", notice: "genre was successfully updated." }
        format.json { render :show, status: :ok, location: @genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genres/1 or /genres/1.json
  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    respond_to do |format|
      format.html { redirect_to "/genres/admin", notice: "genre and all associated books were successfully destroyed." }
      format.json { head :no_content }
    end
  end

    private

  # Only allow a list of trusted parameters through.
  def genre_params
    params.require(:genre).permit(:genre)
  end
end
