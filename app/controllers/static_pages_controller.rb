class StaticPagesController < ApplicationController


  # all resources where public => true


  def home
    @public_resources = Resource.where("public=true").order('grade_level ASC','subject ASC','name ASC')
    @my_resources = Resource.where(educator_id: current_educator.id) unless current_educator.nil?
    @me = Educator.where(id: current_educator.id) unless current_educator.nil?
    # @family = @me.family_id
    # @my_students = Student.where(family_id: @family)
    @students = Student.all

  end



end
