from django.db import models
# Create your models here.
class Crud(models.Model):

	fname = models.CharField(max_length=50)
	lname = models.CharField(max_length=50)
	email = models.EmailField()
	mobile = models.BigIntegerField()
	salary = models.FloatField()
	address = models.TextField()
	

	class Meta:
		db_table = 'crud'