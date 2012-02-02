class EventsController < ApplicationController
  
  def new 
    @event = Event.new
  end
  
  def create  
    @event = Event.new(params[:event])  
    
    respond_to do |format|  
      if @event.save  
        format.js  
      else  
        format.js { render :action => "new" }  
      end  
    end  
  end
 
end
