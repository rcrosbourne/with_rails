class Applicationlog < ActiveRecord::Base
  #attr_accessible :log_channel, :log_datetime, :log_filename, :log_message, :log_source, :log_type
  include Tire::Model::Search
  include Tire::Model::Callbacks
  include Tire::Model::Persistence
  
 #property :log_channel
  
  #mapping do
#	  indexes :id
#	  indexes :log_channel#
	  #indexes :log_filename
	  #indexes :log_source
	  #indexes :log_message # analyzer: 'snowball'
	  #indexes :log_datetime, type: 'date'
	  #indexes :log_type
	#end
  def self.search(text)
  	unless text.empty?
		Tire.search('applicationlog') do
			query do
    			string "#{text}*"
  			end
  			#raise to_curl
		end.results
	end	
  end
end
