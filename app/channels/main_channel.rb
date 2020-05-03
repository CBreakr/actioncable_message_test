class MainChannel < ApplicationCable::Channel
    def subscribed
        puts "subscribed to main"
        stream_from "MainChannel"
    end
    
    def unsubscribed
        puts "unsubscribed from main"
        # Any cleanup needed when channel is unsubscribed
    end
end