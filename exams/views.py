from django.shortcuts import render
from rest_framework import generics, filters

from django.views.generic import ListView

from .models import Exam
from .serializers import ExamSerializer

class ExamList(generics.ListCreateAPIView):
	queryset = Exam.objects.all()
	serializer_class = ExamSerializer
	filter_backends = [filters.SearchFilter]
	search_fields = ['title', 'description']
	
class ExamDetail(generics.RetrieveUpdateDestroyAPIView):
	queryset = Exam.objects.all()
	serializer_class = ExamSerializer
	


