# Generated by Django 2.2.5 on 2019-12-14 15:55

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('firstapp', '0005_delete_employee'),
    ]

    operations = [
        migrations.CreateModel(
            name='Test',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('email', models.EmailField(max_length=254)),
                ('mobile', models.BigIntegerField()),
                ('salary', models.IntegerField()),
            ],
        ),
    ]
