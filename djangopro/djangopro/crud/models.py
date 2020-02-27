from django.db import models

# Create your models here.

class Employee(models.Model):
	#eid = models.AutoField()#integer AUTO_INCREMENT NOT NULL
	name = models.CharField(max_length=50)
	email = models.EmailField()
	mobile = models.BigIntegerField()
	address = models.TextField()
	salary = models.CharField(max_length=50,default="")
	image = models.FileField(default="")

	class Meta:
		db_table = "employee"