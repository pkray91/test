from django.db import models

# Create your models here.

class User_Profile(models.Model):
	name = models.TextField()
	email = models.EmailField(unique=True)
	mobile = models.BigIntegerField()
	salary = models.IntegerField()
	image = models.ImageField(upload_to='images/',default="")
	address = models.TextField()
    

	