class ChangePinIdToInteger < ActiveRecord::Migration
   def change
	  execute %q{
	    alter table likes
	    alter column pin_id
	    type int using cast(pin_id as int)
	  }
	end
end
