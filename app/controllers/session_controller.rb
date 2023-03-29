class SessioController < ApplicationController
    def track
        cookies[:page_views] ||= 0
        cookies[:page_views] = cookies[:page_views].to_i + 1
        session[:page_views] ||= 0
        session[:page_views] += 1
        byebug
    end
end