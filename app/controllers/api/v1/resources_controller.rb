module Api
  module V1
    class ResourcesController < ApplicationController
      respond_to :json
      # return all resources
      def index
        if ApiKey.where("access_token = ?",params[:api_key]).length >=1
          Rails.logger.info "params.inspect"
          if params[:tagged]
            @resources = Resource.tagged?

          elsif params[:common_core]
            @resources = Resource.where("common_core = ?", params[:common_core])
          else
            @resources = Resource.all
          end
        else
          if params[:api_key]
            @resources = {:error => "The api key #{params[:api_key]} is not authorized"}
          else
            @resources = {:error => "you must specify an api_key in the request"}
          end
        end
        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @resources }
        end
      end

      def show
        if ApiKey.where("access_token = ?",params[:api_key]).length >=1
          respond_with Resource.find(params[:id])
        end
      end

      # def create
      #   respond_with Resource.create(params[:Resource])
      # end

      # def update
      #   respond_with Resource.update(params[:id], params[:Resources])
      # end

      # def destroy
      #   respond_with Resource.destroy(params[:id])
      # end
    end
  end
end
