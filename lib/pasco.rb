require 'rubygems'
require 'ruby-debug'
class Pasco
 attr_reader :url,:modified_time,:acess_time,:file_name,:directory,:http_header
def initialize(url="",modified_time="",acess_time="",file_name="",directory="",http_header="")
   @url = url
   @modified_time = modified_time
   @acess_time = acess_time;
   @file_name = file_name
   @directory =directory
   @http_header = http_header
 end

 def self.get_history(file_name)
   if !file_name.nil? &&  File.extname(file_name) == ".dat"
     if RUBY_PLATFORM=~ /linux/ || RUBY_PLATFORM =~ /darwin/
        result =`pasco "#{file_name}"`
     else #FOR Windows Ihave Not tested yet
       result=`pasco.exe "#{file_name}"`
     end  
     @ie_histories = self.process_history(result)
   else
     puts "Please enter file name"
     return -1
   end 
   return @ie_histories
  end 
 
  
  def self.process_history(result)
    ie_histories = []
    results =result.split("\n")
    results.each do |result|
      if !result.match(/^URL/).nil?
        result_of_url = result.split("\t")
        browsing_url = result_of_url[1].match(/((\w+):\/\/(.+))/)[0]
        modified_time = result_of_url[2]
        acess_time = result_of_url[3]
        file_name = result_of_url[4]
        directory = result_of_url[5]
        http_header = result_of_url[6]
        ie_histories << Pasco.new(browsing_url,modified_time,acess_time,file_name,directory,http_header)
      end
    end
    ie_histories
  end
 
end

