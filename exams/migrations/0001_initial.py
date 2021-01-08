# Generated by Django 3.0.4 on 2021-01-08 15:21

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Exam',
            fields=[
                ('id', models.PositiveIntegerField(primary_key=True, serialize=False)),
                ('title', models.CharField(max_length=250)),
                ('description', models.CharField(max_length=250)),
                ('date_start', models.DateField()),
                ('date_finish', models.DateField()),
                ('questions', models.FileField(default='No Questions', upload_to='exam_questions')),
            ],
        ),
    ]
