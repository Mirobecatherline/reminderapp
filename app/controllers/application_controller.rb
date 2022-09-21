require 'logger'
logger = Logger.new('log.log')
logger.level = Logger::INFO
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users=User.all
    
    if users.exists?
        res={

          "status"=>"success",
          "data"=>JSON.parse(users.to_json)
        }
        JSON[res]
  
    else 
        res={

          "status"=>"failure",
          "data"=>"no users in database"
        }
        JSON[res]
    end
  end
  get "/events" do
    events=Event.all
    if events.exists?
        res={

          "status"=>"success",
          "data"=>JSON.parse(events.to_json)
        }
        JSON[res]
  
    else 
        res={

          "status"=>"failure",
          "data"=>"no events in database"
        }
        JSON[res]
    end
  end
  get "/messages" do
    messages=Message.all
    
    if messages.exists?
      # logger.info("messages")
        res={

          "status"=>"success",
          "data"=>JSON.parse(messages.to_json)
        }
        JSON[res]
  
    else 
        res={

          "status"=>"failure",
          "data"=>"no messages in database"
        }
        JSON[res]
    end
    
  end
  post '/new_messages' do
    message = Message.create(
      phone_no: params[:phone_no],
      short_code: params[:short_code],
      message: params[:message],
      message_type: params[:message_type],
      message_time: params[:message_time]
    )
    message.to_json
  end
end
