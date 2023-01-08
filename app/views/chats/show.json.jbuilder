// app/views/chats/show.json.jbuilder
    
    json.extract! @chat, :id, :username, :message
    json.url chat_url(@chat, format: :json)