# Generated by Django 3.0.4 on 2021-01-09 19:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('exams', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='exam',
            name='location',
            field=models.CharField(default='127.0.0.1:8000/api/v1', max_length=250),
        ),
        migrations.AlterField(
            model_name='exam',
            name='title',
            field=models.CharField(max_length=250, unique=True),
        ),
    ]
