# Generated by Django 2.2.5 on 2019-12-26 04:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('profile_maker', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_profile',
            name='display_picture',
            field=models.FileField(upload_to='images/'),
        ),
    ]
