from django.urls import path

from .views import ExamList, ExamDetail

urlpatterns = [
	
	path('<int:pk>/', ExamDetail.as_view()),
	path('', ExamList.as_view()),
]
