#coding: utf-8
class AgrimoneyController < ApplicationController
    
  def index
    @content = params[:content]
    render 'site/index'
  end

end