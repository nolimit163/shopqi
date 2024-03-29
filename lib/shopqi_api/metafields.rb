module ShopqiAPI
  module Metafields
    def metafields
      Metafield.find(:all, :params => {:resource => self.class.collection_name, :resource_id => id})
    end

    def add_metafield(metafield)
      raise ArgumentError, "You can only add metafields to resource that has been saved" if new?

      metafield.prefix_options = {
        :resource => self.class.collection_name,
        :resource_id => id
      }
      metafield.save
      metafield
    end
  end
end
