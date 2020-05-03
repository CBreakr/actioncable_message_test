class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
    puts "subscribed"
    puts params
    # stream_from "some_channel"
    chat_room = ChatRoom.find(params[:id])
    stream_for chat_room
  end

  def unsubscribed
    puts "unsubscribed"
    # Any cleanup needed when channel is unsubscribed
  end
end
