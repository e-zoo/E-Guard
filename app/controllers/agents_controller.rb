class AgentsController < ApplicationController

    def index  
    end

    def new
        @agent = Agent.new
    end

    def create
        @agent = Agent.new(agent_params)
        @agent.save
        redirect_to @agent
    end

    def show

    end

    private
    def agent_params
        params.require[:agent].permit[:name, :description, :adresse1, :adresse2, :city, :state, :zipcode, :phone, :email]
    end

end