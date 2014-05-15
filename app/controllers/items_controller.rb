class ItemsController < ApplicationController
  def new
    @issues = Issue.all
    @collection = Collection.find(params[:collection_id])
    @item = CollectionItem.new
  end

  def create
    collection = Collection.find(params[:collection_item][:collection])
    issue = Issue.find(params[:collection_item][:issue])
    CollectionItem.create(issue: issue, collection: collection)
    redirect_to collection_path(collection)
  end
end
