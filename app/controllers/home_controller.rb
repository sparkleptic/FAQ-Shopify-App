class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)


     @faqposts = Faqpost.all
     @faqcats = Faqcat.all

    #redirect_to :controller => 'faqposts', :action => 'new'
    #@faqpost = Faqpost.new
    #render :controller => 'faqposts', :action => 'new'
   # @faqpost = Faqpost.new
    #render 'faqposts/new'
   # render :partial => 'faqposts/new'

  end

end
