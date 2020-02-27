from django.db import models

# Create your models here.

class Products(models.Model):

	name = models.CharField(max_length=50)
	category = models.CharField(max_length=50,default="")
	image = models.FileField(max_length=50)
	brand = models.CharField(max_length=50)
	price = models.IntegerField()
	size = models.IntegerField()
	color = models.CharField(max_length=50)
	description = models.TextField()

	class Meta:
		db_table = 'products'