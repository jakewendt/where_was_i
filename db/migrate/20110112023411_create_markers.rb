class CreateMarkers < ActiveRecord::Migration
	def self.up
		create_table :markers do |t|
			t.string :phonenumber
			t.string :deviceid
			t.float  :latitude
			t.float  :longitude
			t.float  :direction
			t.string :name
			t.string :email
			t.timestamps
		end
	end

	def self.down
		drop_table :markers
	end
end
