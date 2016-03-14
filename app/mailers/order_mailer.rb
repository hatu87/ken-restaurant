class OrderMailer < ApplicationMailer
  default from: 'hatu87@gmail.com'

  def finished_order_email(order)
    @order = order

    mail(to:@order.email, subject: 'Finished Order at Ken Restaurant')
  end
end
