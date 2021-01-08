from django.db import models

class GetLocation(models.Model):
    port = models.IntegerField()
    host = models.CharField(default="127.0.0.1", max_length=20)
    bind_key = models.CharField(max_length=20)

    def __str__(self):
        return f"{self.host}:{self.port}/{self.bind_key}"

class Exam(models.Model):
	title = models.CharField(max_length=250)
	description = models.CharField(max_length=250)
	date_start = models.DateField()
	date_finish= models.DateField()
	
	def __str__(self):
		return self.title
