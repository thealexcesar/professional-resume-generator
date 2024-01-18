class HomeController < ApplicationController
  def index ; end

  def template_pdf

    respond_to do |format|
      format.html { redirect_to root_path }
      format.pdf do
        render pdf: "alex_curriculum",
               template: "home/template_pdf",
               layout: 'pdf',
               page_size: 'A4',
               orientation: 'Portrait',
               margin: { top:10, bottom:10, left:10, right:10 }
      end
    end
  end
end
