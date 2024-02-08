class ResumeController < ApplicationController
  def index ; end
  # --------------------------------------------------------------------------------------------------------------------
  def template_pdf
    @data = curriculum_params
    puts "\n\n==============\n#{curriculum_params.inspect}\n==============\n\n"

    respond_to do |format|
      format.html { redirect_to root_path }
      format.pdf do
        render pdf: "alex_curriculum",
               template: "resume/template_pdf",
               layout: 'pdf',
               page_size: 'A4',
               orientation: 'Portrait',
               locals: @data,
               margin: { top:10, bottom:10, left:10, right:10 }
      end
    end
  end

  # --------------------------------------------------------------------------------------------------------------------
  private
  def curriculum_params
    params.permit(:about, :name, :github, :email, :linkedin)
  end
end
