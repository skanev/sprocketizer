module Mongoid
  class Identity
    
    protected
      
      # Return an id that is sphinx compatible
      def generate_id
        while true
          id = 100000000000000000000000 + rand(4294967294) # 4,294,967,295 is the theoretical max number of documents a 32 bit sphinx install can index
          candidate = id.to_s
        
          begin
            @document.class.find(candidate) # Resource not found exception if available
          rescue Mongoid::Errors::DocumentNotFound
            id = BSON::ObjectId.from_string(candidate)
            break
          end
        end
        @document.using_object_ids? ? id : id.to_s
      end
    
  end
end