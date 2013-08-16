class ContactsController < ApplicationController
  
  def index
  	if params[:tag]
      @contacts = Contact.tagged_with(params[:tag])
    else
      @contacts = Contact.all
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
  	@contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

   def create
    safe_contact = params.require(:contact).permit(:name, :email, :phone_number, :notes, :tag, :tags, :tag_list)
    @contact = Contact.new safe_contact

    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  def update
  	safe_contact = params.require(:contact).permit(:name, :email, :phone_number, :notes, :tag, :tags, :tag_list)
    @contact = Contact.find(params[:id])

    if @contact.update(safe_contact)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  def destroy
  	@contact.destroy
  	flash[:notice] = "'#{@contact.name}' has been removed from your address book."

  	redirect_to contacts_path
  end



  private

  def load_contact
  	@contact = Contact.find(params[:id])
  end

end
