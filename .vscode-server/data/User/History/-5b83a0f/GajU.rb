class StaticPagesController < ApplicationController
  
  def home    # 関数定義
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help    # 関数定義
  end

  def about    # 関数定義
  end
  
  def contact    # 関数定義
  end
end
