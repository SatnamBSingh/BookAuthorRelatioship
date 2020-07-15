module Api
  module V1
    class AuthorsController < ApplicationController
      def index
        authors = Author.all
        render json: {status: 'SUCCESS', message:'Loaded authors', data:authors},status: :ok
      end
    end
  end
end
