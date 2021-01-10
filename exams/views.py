from django.shortcuts import render
from rest_framework import generics, filters, mixins
from rest_framework.response import Response
from rest_framework.views import APIView

from django.views.generic import ListView

from .models import Exam, Student, Grade
from .serializers import ExamSerializer, StudentSerializer, GradeSerializer, GradeSerializer2

class ExamList(generics.ListCreateAPIView):
	queryset = Exam.objects.all()
	serializer_class = ExamSerializer
	filter_backends = [filters.SearchFilter]
	search_fields = ['title', 'description']
	
class ExamDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Exam.objects.all()
	serializer_class = ExamSerializer

class StudentList(generics.ListCreateAPIView):
	queryset = Student.objects.all()
	serializer_class = StudentSerializer
	filter_backends = [filters.SearchFilter]
	search_fields = ['dni', 'name']
	
class StudentDetail(APIView):
	def get(self, request,  *args, **kwargs):
        	student = Student.objects.filter(dni=kwargs['dni'])
        	serializer = StudentSerializer(student, many=True)
        	return Response(serializer.data)
	
class GradeList(generics.ListCreateAPIView):
	queryset = Grade.objects.all()
	serializer_class = GradeSerializer
	filter_backends = [filters.SearchFilter]
	search_fields = ['students_id', 'exam_id']
	
#class GradeDetail(generics.RetrieveUpdateDestroyAPIView):
#	queryset = Grade.objects.all()
#	serializer_class = GradeSerializer

class GradeExamList(generics.ListCreateAPIView):
	serializer_class = GradeSerializer
	def get_queryset(self, *args, **kwargs):
		queryset = Grade.objects.filter(exam_id = self.kwargs['exam_id'])
		return queryset
		
class GradeStudentList(APIView):
	def get(self, request,  *args, **kwargs):
        	grade = Grade.objects.filter(students_id__dni=kwargs['dni'])
        	serializer = GradeSerializer2(grade, many=True)
        	return Response(serializer.data)
