from django.shortcuts import render

from django.views.generic import ListView

from .models import Exam

class ExamListView(ListView):
	model = Exam
	template_name = 'exam_list.html'
