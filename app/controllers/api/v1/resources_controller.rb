module Api
  module V1
    class ResourcesController < ApplicationController
      respond_to :json

      # return all resources
      def index
        if params[:tagged] == true
          @resources = Resource.tagged?
        else
          @resources = Resource.all
        end
        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @resources }
        end      
      end

      def show
        respond_with Resource.find(params[:id])
      end

      def create
        respond_with Resource.create(params[:Resource])
      end

      def update
        respond_with Resource.update(params[:id], params[:Resources])
      end

      def destroy
        respond_with Resource.destroy(params[:id])
      end
    end
  end
end
