class MarkersController < ApplicationController

	skip_before_filter :verify_authenticity_token

	# GET /markers
	# GET /markers.xml
	def index
		@markers = Marker.all

		respond_to do |format|
			format.html # index.html.erb
			format.xml	{ render :xml => @markers }
		end
	end

	# GET /markers/1
	# GET /markers/1.xml
	def show
		@marker = Marker.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.xml	{ render :xml => @marker }
		end
	end

#	# GET /markers/new
#	# GET /markers/new.xml
#	def new
#		@marker = Marker.new
#
#		respond_to do |format|
#			format.html # new.html.erb
#			format.xml	{ render :xml => @marker }
#		end
#	end

#	# GET /markers/1/edit
#	def edit
#		@marker = Marker.find(params[:id])
#	end

	# POST /markers
	# POST /markers.xml
	def create
		@marker = Marker.new(params[:marker])
		@marker.save!
		render :text => "Success", :layout => false
	rescue
		render :text => "Failure", :layout => false

#		respond_to do |format|
#			if @marker.save
#				format.html { redirect_to(@marker, :notice => 'Marker was successfully created.') }
#				format.xml	{ render :xml => @marker, :status => :created, :location => @marker }
#			else
#				format.html { render :action => "new" }
#				format.xml	{ render :xml => @marker.errors, :status => :unprocessable_entity }
#			end
#		end
	end

#	# PUT /markers/1
#	# PUT /markers/1.xml
#	def update
#		@marker = Marker.find(params[:id])
#
#		respond_to do |format|
#			if @marker.update_attributes(params[:marker])
#				format.html { redirect_to(@marker, :notice => 'Marker was successfully updated.') }
#				format.xml	{ head :ok }
#			else
#				format.html { render :action => "edit" }
#				format.xml	{ render :xml => @marker.errors, :status => :unprocessable_entity }
#			end
#		end
#	end

#	# DELETE /markers/1
#	# DELETE /markers/1.xml
#	def destroy
#		@marker = Marker.find(params[:id])
#		@marker.destroy
#
#		respond_to do |format|
#			format.html { redirect_to(markers_url) }
#			format.xml	{ head :ok }
#		end
#	end
end
