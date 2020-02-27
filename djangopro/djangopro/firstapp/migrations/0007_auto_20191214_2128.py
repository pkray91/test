# Generated by Django 2.2.5 on 2019-12-14 15:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('firstapp', '0006_test'),
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('roll_no', models.TextField()),
                ('name', models.TextField(max_length=40)),
                ('stud_class', models.TextField()),
                ('department', models.TextField()),
            ],
        ),
        migrations.DeleteModel(
            name='Test',
        ),
    ]
