### Usage

rails g model Contact name:string contact_no:string email:string contactable:references{polymorphic}

rails db:migrate



### To Model
  has_contacts


### to view

<%= f.simple_fields_for :contacts do |sa| %>
  <%= render 'contacts/contact_fields', f: sa %>
<% end %>

and create view with same fields

### To Controller