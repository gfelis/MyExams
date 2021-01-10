from django.shortcuts import render
from rest_framework import generics, filters

from django.views.generic import ListView

from .models import Exam, Student, Grade
from .serializers import ExamSerializer, StudentSerializer, GradeSerializer

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
	search_fields = ['student_id', 'name']
	
class StudentDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Student.objects.all()
	serializer_class = StudentSerializer
	
class GradeList(generics.ListCreateAPIView):
	queryset = Grade.objects.all()
	serializer_class = GradeSerializer
	filter_backends = [filters.SearchFilter]
	search_fields = ['student_id', 'exam_id']
	
class GradeDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Grade.objects.all()
	serializer_class = GradeSerializer
