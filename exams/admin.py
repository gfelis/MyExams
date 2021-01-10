from django.contrib import admin

from .models import Exam, Student, Grade

admin.site.register(Exam)
admin.site.register(Student)
admin.site.register(Grade)
