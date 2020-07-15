module Api
  module V1
    class AuthorsController < ApplicationController
      def index
        authors_books = [[]]
        authors = []
        books = []
        authors = Author.all
        authors.each do |author|
          books << author.books
          authors << author
          authors_books << [authors][books] 
        end
        render json: {status: 'SUCCESS', message:'Loaded authors', data:authors_books},status: :ok
      end
    end
  end
end
