module WoocommerceAPI
  module V3
    class Customer < Resource
      attribute :id, Integer
      attribute :email
      attribute :first_name
      attribute :last_name
      attribute :username
      attribute :password
      attribute :last_order_id, Integer
      attribute :avatar_url
      attribute :billing_address, Address
      attribute :shipping_address, Address
      attribute :role

      # Read Only
      alias_attribute :date_created, :created_at
      alias_attribute :date_modified, :updated_at
      
      attribute :created_at     , DateTime, writer: :private
      attribute :updated_at     , DateTime, writer: :private
      attribute :total_spent    , Integer , writer: :private
      attribute :orders_count   , Integer , writer: :private
      attribute :last_order_date, DateTime, writer: :private
    end
  end
end
