# Generated by Django 3.0.4 on 2021-01-08 19:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('exams', '0003_auto_20210108_1908'),
    ]

    operations = [
        migrations.AlterField(
            model_name='exam',
            name='locations',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.DO_NOTHING, to='exams.ExamLocation'),
        ),
    ]
