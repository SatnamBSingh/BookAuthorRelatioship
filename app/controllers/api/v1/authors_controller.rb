module Api
  module V1
    class AuthorsController < ApplicationController
      def index
        authors = Author.all.as_json(include: :books)
        # authors = Author.all
        render json: {status: 'SUCCESS', message:'Loaded authors', data:authors},status: :ok
      end
      def show
        author = Author.find(params[:id]).as_json(include: :books)
        render json: {status: 'SUCCESS', message:'Loaded authors', data:author},status: :ok
      end
    end
  end
end