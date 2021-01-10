from django.db import models

class Exam(models.Model):
	title = models.CharField(max_length=250, unique=True)
	description = models.CharField(max_length=250)
	date_start = models.DateField()
	date_finish= models.DateField()
	location = models.CharField(max_length=250, default= '127.0.0.1:8000/api/v1')
	
	def __str__(self):
		return self.title
		
class Student(models.Model):
	student_id = models.CharField(max_length=9, unique=True)
	name = models.CharField(max_length=50)
	
	def __str__(self):
		return self.student_id
		
class Grade(models.Model):
	students_id = models.ForeignKey(Student, on_delete=models.DO_NOTHING)
	exam_id = models.ForeignKey(Exam, on_delete=models.DO_NOTHING)
	grade = models.IntegerField()
	
	def __str__(self):
		return self.grade
	
