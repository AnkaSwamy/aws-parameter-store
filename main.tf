resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default= [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.ankadevopsb73.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.ankadevopsb73.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.ankadevopsb73.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.ankadevopsb73.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.ankadevopsb73.store:8080/", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.ankadevopsb73.store", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.ankadevopsb73.store", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.ankadevopsb73.store:27017/catalogue", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.ankadevopsb73.store", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.ankadevopsb73.store", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.ankadevopsb73.store", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.ankadevopsb73.store:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.ankadevopsb73.store", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "redis-dev.ankadevopsb73.store", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.ankadevopsb73.store:27017/users", type = "String" },
    { name = "roboshop.dev.dispatch.amqp_host", value = "rabbitmq-dev.ankadevopsb73.store", type = "String" },
    { name = "roboshop.dev.dispatch.amqp_user", value = "roboshop", type = "String" },


    ### Passwords will be never part of git repos, Usually in organizations we create them manually.
    ###Meaning whom ever have access they will provision these secrets in parameter store.
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },

  ]
}