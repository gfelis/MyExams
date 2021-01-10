from rest_framework import serializers
from .models import Exam, Student, Grade


class ExamSerializer(serializers.ModelSerializer):
	class Meta:
		fields = ('id', 'title', 'description', 'date','time_start','time_end' ,'location')
		model = Exam
		
class StudentSerializer(serializers.ModelSerializer):
	class Meta:
		fields = ('id','dni', 'name')
		model = Student
		
class GradeSerializer2(serializers.ModelSerializer):
	students_id = StudentSerializer(read_only=False, many=False)
	exam_id = ExamSerializer(read_only=False, many=False)

	class Meta:
		model = Grade
		fields = ['students_id', 'exam_id', 'grade']
		
class GradeSerializer(serializers.ModelSerializer):
	class Meta:
		fields = "__all__"
		model = Grade
