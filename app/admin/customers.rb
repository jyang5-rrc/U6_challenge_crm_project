ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :full_name, :phone_number, :email_address, :notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :phone_number, :email_address, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :full_name, :phone_number, :email_address, :notes, :image
  #permit_params :full_name, :phone_number, :email_address, :notes, images: [] # for multiple images

  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    actions
  end

  filter :full_name
  filter :phone_number
  filter :email_address

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :full_name
      row :phone_number
      row :email_address
      row :notes
      row :image do |customer|
        if customer.image.attached?
        #if customer.images.attached?# for multiple images
          image_tag url_for(customer.image), width: '50%'
        else
          text_node "No image uploaded"
        end
      end
    end
    active_admin_comments
  end

end
