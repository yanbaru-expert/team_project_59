ActiveAdmin.register Text do
  permit_params :genre, :title, :content

  index do
    selectable_column
    id_column
    column :genre, :text, &:genre_i18n
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :genre, :text, &:genre_i18n
      row :title
      row :content
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      input :genre, as: :select, collection: Text.genres_i18n.invert
      input :title
      input :content
    end
    f.actions
  end

  filter :genre, as: :select, collection: Text.genres_i18n.invert.transform_values { |v| Text.genres[v] }
  filter :title
  filter :content
  filter :created_at
  filter :updated_at
end
