# app/controllers/main_controller.rb
class MainController < ApplicationController
    def books
        @books = Book.where(Id_store: 1)
        respond_to do |format|
        render 'books'
    end
    end

    def stores
        @stores = Store.all
        respond_to do |format|
        render 'stores'
    end
    end
end
