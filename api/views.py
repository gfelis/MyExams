from django.shortcuts import render
from rest_framework import generics
from exams.models import Exam
from .serializers import ExamSerializer

class ExamAPIView(generics.ListAPIView):
	queryset = Exam.objects.all()
	serializer_class = ExamSerializer
