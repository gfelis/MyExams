# Generated by Django 3.0.4 on 2021-01-10 17:27

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('exams', '0002_auto_20210110_1649'),
    ]

    operations = [
        migrations.RenameField(
            model_name='student',
            old_name='student_id',
            new_name='dni',
        ),
    ]