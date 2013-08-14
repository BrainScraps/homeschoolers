class StaticPagesController < ApplicationController


  # all resources where public => true


  def home
      @public_resources = Resource.where("public=true").order('grade_level ASC','subject ASC','name ASC')
      @students = Student.all

      if current_educator
            @my_resources = Resource.where(educator_id: current_educator.id)
            @me = Educator.where(id: current_educator.id).first
            @family = @me.family.id
            @my_students = Student.where(family_id: @family)

      end


  end



end
