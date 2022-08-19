class PeopleController < ApplicationController
    before_action :set_person, only: [:show, :edit, :update, :destroy]
  
    def index
      @people = Person.all
    end
  
    def show
    end
  
    def new
      @person = Person.new
    end
  
    def create
      @person = Person.new(person_params)
  
      if @person.save
        redirect_to people_path, notice: "Person was successfully created."
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @person.update(person_params)
        redirect_to people_path, notice: "Person was successfully updated."
      else
        render :edit
      end
    end
  
    def destroy
      @person.destroy
      redirect_to people_path, notice: "Person was successfully destroyed."
    end
  
    private
  
    def set_person
      @person = Person.find(params[:id])
    end
  
    def person_params
      params.require(:person).permit(:name, :doc, :age)
    end
  end
