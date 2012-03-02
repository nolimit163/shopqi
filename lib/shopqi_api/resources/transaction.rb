module ShopqiAPI
  class Transaction < Base
    self.prefix = "/admin/orders/:order_id/"
  end
end
