class TodosController < ApplicationController

  # attr_reader :reference, :external_reference, :amount, :state, :origination_time, :till_name
  # # GET /todos
  # def index
  #   @todos = Todo.all
  #   json_response(@todos)
  # end
  #
  # # POST /todos
  # def create
  #   @todo = Todo.create!(todo_params)
  #   json_response(@todo, :created)
  # end
  #
  # # GET /todos/:id
  # def show
  #   json_response(@todo)
  # end
  #
  # # PUT /todos/:id
  # def update
  #   @todo.update(todo_params)
  #   head :no_content
  # end
  #
  # # DELETE /todos/:id
  # def destroy
  #   @todo.destroy
  #   head :no_content
  # end
  #
  # private
  #
  # def todo_params
  #   # whitelist params
  #   params.permit(:title, :created_by)
  # end
  #
  # def set_todo
  #   @todo = Todo.find(params[:id])
  # end

  # POST /parse
  def receive
    K2ConnectRuby::K2Client.new(ENV["K2_SECRET_KEY"]).authorize_client("Request")
    # truth_value = K2ConnectRuby::K2Authorize.authenticate(k2_test.hash_body, k2_test.api_secret_key, k2_test.k2_signature)
    # if truth_value
    #   k2_components = K2ConnectRuby::K2SplitRequest.request_body_components(k2_test.hash_body)
    #   puts(k2_components.topic)
    #   return 200
    # else
    #   return 401
    # end
  end

end
