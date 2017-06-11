class ItemTagsController < ApplicationController
  def index
    @item_tags = ItemTag.all

    render("item_tags/index.html.erb")
  end

  def show
    @item_tag = ItemTag.find(params[:id])

    render("item_tags/show.html.erb")
  end

  def new
    @item_tag = ItemTag.new

    render("item_tags/new.html.erb")
  end

  def create
    @item_tag = ItemTag.new

    @item_tag.tags_id = params[:tags_id]
    @item_tag.item_id = params[:item_id]

    save_status = @item_tag.save

    if save_status == true
      redirect_to("/item_tags/#{@item_tag.id}", :notice => "Item tag created successfully.")
    else
      render("item_tags/new.html.erb")
    end
  end

  def edit
    @item_tag = ItemTag.find(params[:id])

    render("item_tags/edit.html.erb")
  end

  def update
    @item_tag = ItemTag.find(params[:id])

    @item_tag.tags_id = params[:tags_id]
    @item_tag.item_id = params[:item_id]

    save_status = @item_tag.save

    if save_status == true
      redirect_to("/item_tags/#{@item_tag.id}", :notice => "Item tag updated successfully.")
    else
      render("item_tags/edit.html.erb")
    end
  end

  def destroy
    @item_tag = ItemTag.find(params[:id])

    @item_tag.destroy

    if URI(request.referer).path == "/item_tags/#{@item_tag.id}"
      redirect_to("/", :notice => "Item tag deleted.")
    else
      redirect_to(:back, :notice => "Item tag deleted.")
    end
  end
end
