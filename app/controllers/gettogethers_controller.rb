class GettogethersController < ApplicationController
  def index

    @gtgs = Gettogether.all

    if params[:start_date].nil?
      datevar = Time.now.utc
    else 
      datevar = params[:start_date]
    end

    @date = Time.parse("#{datevar}")
    @start_date = Date.new(@date.year, @date.month, @date.day) 
    @events = Gettogether.find(:all, :conditions => ['start_time between ? and ?', @start_date, @start_date + 7])

  end

  def create
    @gtg = Gettogether.new(params[:gettogether])

    @gtg.convert_datetimes(params[:gettogether][:start_time], params[:gettogether][:end_time])

  

    if @gtg.save

      redirect_to gettogether_path(@gtg)

    else

      redirect_to new_gettogethers_path
    end
  end

  def new

    @gtg = Gettogether.new

  end

  def edit

    @gtg = Gettogether.find(params[:id])

  end

  def update

    @gtg = Gettogether.find(params[:id])

    @gtg.update_attributes(params[:gettogether])

  end

  def destroy
    @gtg = Gettogether.find(params[:id])
    @gtg.destroy

    redirect_to index_gettogethers_path
  end

  def show
    @gtg = Gettogether.find(params[:id])

    @educators = @gtg.educators


  end
end
