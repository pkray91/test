from django.db import models

# Create your models here.
class Basicapi(models.Model):

	name = models.CharField(max_length=50)
	email = models.CharField(max_length=50)
	mobile = models.BigIntegerField()
	salary = models.IntegerField()

	class Meta:
		db_table = 'basicapi'

	def __str__(self):
		return self.name