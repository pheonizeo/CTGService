class UpcomingeventsController < ApplicationController



    #before_filter :authenticate, :except => [:login]
    # GET /upcomingevents
    # GET /upcomingevents.xml
    def index
      @upcomingevents = Upcomingevent.find(:all, :order => 'timestart')

      respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @upcomingevents }
      end


    end

    # GET /upcomingevents/1
    # GET /upcomingevents/1.xml
    def show
      @upcomingevent = Upcomingevent.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @upcomingevent }
      end
    end


    # GET /upcomingevents/new
    # GET /upcomingevents/new.xml

    def new


      @upcomingevent = Upcomingevent.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml { render :xml => @upcomingevent }
      end


    end

    # GET /upcomingevents/1/edit
    def edit

      @upcomingevent = Upcomingevent.find(params[:id])
    end

    # POST /upcomingevents
    # POST /upcomingevents.xml
    def create

      @upcomingevent = Upcomingevent.new(params[:upcomingevent])

      respond_to do |format|
        if @upcomingevent.save
          format.html { redirect_to(@upcomingevent, :notice => 'Upcomingevent was successfully created.') }
          format.xml { render :xml => @upcomingevent, :status => :created, :location => @upcomingevent }
        else
          format.html { render :action => "new" }
          format.xml { render :xml => @upcomingevent.errors, :status => :unprocessable_entity }
        end
      end
    end

    # PUT /upcomingevents/1
    # PUT /upcomingevents/1.xml
    def update

      @upcomingevent = Upcomingevent.find(params[:id])

      respond_to do |format|
        if @upcomingevent.update_attributes(params[:upcomingevent])
          format.html { redirect_to(@upcomingevent, :notice => 'Upcomingevent was successfully updated.') }
          format.xml { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml { render :xml => @upcomingevent.errors, :status => :unprocessable_entity }
        end
      end
    end

    # DELETE /upcomingevents/1
    # DELETE /upcomingevents/1.xml
    def destroy

      @upcomingevent = Upcomingevent.find(params[:id])
      @upcomingevent.destroy

      respond_to do |format|
        format.html { redirect_to(upcomingevents_url) }
        format.xml { head :ok }
      end
    end

    protected
    def authenticate

    end

  end

