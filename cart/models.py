from django.db import models

# Create your models here.
class Cart(models.Model):

	pid = models.IntegerField()
	pname = models.CharField(max_length=50)
	pprice = models.FloatField()
	pbrand = models.CharField(max_length=30)
	quantity = models.IntegerField()

	class Meta:
		db_table = 'cart'