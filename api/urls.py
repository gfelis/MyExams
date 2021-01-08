from django.urls import path

from .views import ExamAPIView

urlpatterns = [
	path('', ExamAPIView.as_view()),
]
