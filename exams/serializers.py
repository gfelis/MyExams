from rest_framework import serializers
from .models import Exam, Student, Grade


class ExamSerializer(serializers.ModelSerializer):
	class Meta:
		fields = ('id', 'title', 'description', 'date_start','date_finish','location')
		model = Exam
		
class StudentSerializer(serializers.ModelSerializer):
	class Meta:
		fields = ('student_id', 'name')
		model = Student
		
class GradeSerializer(serializers.ModelSerializer):
	class Meta:
		fields = ('students_id', 'exam_id','grade')
		model = Grade
