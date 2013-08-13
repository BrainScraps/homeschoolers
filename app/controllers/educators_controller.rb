class EducatorsController < ApplicationController

  def show 
    @educator = Educator.find(params[:id])
  end

  def edit

    @educator = Educator.find(params[:id])
    @family = @educator.family
    binding.pry

    #@educator.update_attributes(params[:educator])
  end

  def update


    @educator = Educator.find(params[:id])

    @educator.update_attributes( params[:educator])

    if (params[:family_name] != '') && !@educator.family.nil?
      if @educator.family.name != params[:family_name]
        @educator.family.update_name(params[:family_name])
      end
    end

    if (params[:family_motto] != '') && !@educator.family.nil?
      if @educator.family.motto != params[:family_motto]
        @educator.family.update_motto(params[:family_motto])
      end
    end

    if @educator.family.nil? && (params[:family_name] != '')
      binding.pry
      @educator.create_family(name: params[:family_name], motto: params[:family_motto])
      @educator.save
    end

    binding.pry

    redirect_to educator_path(@educator)
  end
end