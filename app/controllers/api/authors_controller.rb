module API
  class AuthorsController < ApplicationController
    # before_action :set_author, only: [:show, :edit, :update, :destroy]

    # GET /authors
    # GET /authors.json
    def index
      @authors = Author.all
      render json: @authors.to_json, status: 200
    end

    # GET /authors/1
    # GET /authors/1.json
    def show
      render json: {action:"show"}
    end

    # GET /authors/new
    def new
      # @author = Author.new
      render json: {action:"new"}
    end

    # GET /authors/1/edit
    def edit
    end

    # POST /authors
    # POST /authors.json
    def create
      @author = Author.new(author_params)

      respond_to do |format|
        if @author.save
          format.html { redirect_to @author, notice: 'Author was successfully created.' }
          format.json { render :show, status: :created, location: @author }
        else
          format.html { render :new }
          format.json { render json: @author.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /authors/1
    # PATCH/PUT /authors/1.json
    def update
      respond_to do |format|
        if @author.update(author_params)
          format.html { redirect_to @author, notice: 'Author was successfully updated.' }
          format.json { render :show, status: :ok, location: @author }
        else
          format.html { render :edit }
          format.json { render json: @author.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /authors/1
    # DELETE /authors/1.json
    def destroy
      # @author.destroy
      # respond_to do |format|
      #   format.html { redirect_to authors_url, notice: 'Author was successfully destroyed.' }
      #   format.json { head :no_content }
      # end
      render json: {action:"destroy"}
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_author
        @author = Author.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def author_params
        params[:author]
      end
  end
end