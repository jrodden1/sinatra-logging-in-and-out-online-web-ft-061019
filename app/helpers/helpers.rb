class Helpers

   def self.current_user(session_hash)
      User.find_by_id(session_hash[:user_id])
   end
   
   def self.is_logged_in?(session_hash)
      !!session_hash[:user_id] && !!Helpers.current_user(session_hash)
   end

end