from django.db import models

class Exam(models.Model):
	id = models.PositiveIntegerField(primary_key=True)
	title = models.CharField(max_length=250)
	description = models.CharField(max_length=250)
	date_start = models.DateField()
	date_finish= models.DateField()
	questions = models.FileField(upload_to='exam_questions', default= 'No Questions')
	
	def __str__(self):
		return self.title
