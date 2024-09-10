class SlidesController < ApplicationController
  def index

  end

  def show
    @slide_count = Dir[Rails.root.join("app/views/slides/_slide_*.html.erb")].length

    @slide_number = params[:id].to_i

    respond_to do |fmt|
      fmt.turbo_stream
      fmt.html
    end
  end
end
