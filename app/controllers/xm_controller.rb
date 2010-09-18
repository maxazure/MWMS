class XmController < ApplicationController
  def zhengxing
    @css = 'zhengxing'
  end

  def meirong
    @css = 'meirong'
  end

  def jg
    @css = 'jg'
  end
  
  def show
    @css = 'xmnr'
    @itemcontent = Itemcontent.find_by_pagename(params[:pagename])
    respond_to do |format|
      format.html # show.html.erb
    end
  end

end
