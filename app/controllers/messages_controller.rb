class MessagesController < ApplicationRecord
    def index
        id = rand(1..Message.count)
        if id.nil?
            render json: {error: 'not found'}.to_json, status: 404
        else
            @Message = Message.find(id)
            render json: @Message
        end
    end
end
