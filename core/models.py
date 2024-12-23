from django.db import models
from django.contrib.auth.models import User
from django.contrib.auth import get_user_model
from PIL import Image
from django.urls import reverse
from django.core.mail import send_mail
from django.db.models.signals import post_save
from django.dispatch import receiver

class Product(models.Model):
    product_name = models.CharField(max_length=100)
    unit_price = models.PositiveIntegerField()
    product_image = models.ImageField(default="default_product.png", upload_to="products_pics")
    created_by = models.ForeignKey(User, on_delete=models.CASCADE)  # Add this line

    def __str__(self):
        return self.product_name

    def save(self, *args, **kwargs):
        super(Product, self).save(*args, **kwargs)

        img = Image.open(self.product_image.path)

        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.product_image.path)

def get_sentinel_user():
    return get_user_model().objects.get_or_create(username='deleted user')[0]

def get_sentinel_user_id():
    return get_sentinel_user().id 

class Invoice(models.Model):
    invoice_number = models.BigAutoField(primary_key=True)
    customer_name = models.CharField(max_length=100)
    created_by = models.ForeignKey(User,on_delete=models.SET(get_sentinel_user),default=get_sentinel_user_id)
    date_created = models.DateTimeField(auto_now=True)
    total = models.PositiveBigIntegerField(default=0)

    def __str__(self):
        return self.customer_name+'(Inv_no.'+str(self.invoice_number)+')'
    
    def get_absolute_url(self):
        return reverse('add_items_on_invoice', kwargs={'pk': self.pk})
    
    def save(self, *args, **kwargs):
        self.total = sum(item.accumulated for item in self.invoiceitem.all())
        super(Invoice, self).save(*args, **kwargs)

def get_sentinel_product():
    return Product.objects.get_or_create(product_name='deleted product',unit_price=0)[0]

def get_sentinel_product_id():
    return get_sentinel_product().id

class InvoiceItem(models.Model):
    invoice = models.ForeignKey(Invoice, on_delete=models.CASCADE, related_name="invoiceitem")
    item = models.ForeignKey(Product, on_delete=models.SET(get_sentinel_product),default='',null=True,blank=True)
    quantity = models.PositiveIntegerField()
    accumulated = models.PositiveIntegerField(default=0)
    
    def __str__(self):
        return self.invoice.customer_name

    def save(self, *args, **kwargs):
        self.accumulated = (self.item.unit_price)*(self.quantity) 
        super(InvoiceItem, self).save(*args, **kwargs)

# Signal receiver for Product model
@receiver(post_save, sender=Product)
def notify_admin_on_new_product(sender, instance, created, **kwargs):
    print("New product signal triggered")
    if created:
        subject = 'New Product Added'
        message = f"A new product '{instance.product_name}' has been added."
        from_email = 'maverickmyth333@gmail.com'  # Replace with your email
        recipient_list = ['gingfreecss325@gmail.com']  # Replace with admin email
        send_mail(subject, message, from_email, recipient_list)