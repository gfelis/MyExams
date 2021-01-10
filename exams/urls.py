from django.urls import path

from .views import ExamList, ExamDetail, StudentList, StudentDetail, GradeList, GradeDetail, GradeExamList, GradeStudentList

urlpatterns = [
	
	path('exams/<int:pk>/', ExamDetail.as_view()),
	path('exams/', ExamList.as_view()),
	path('students/<int:pk>/', StudentDetail.as_view()),
	path('students/', StudentList.as_view()),
	path('exams/<int:exam_id>/grades/', GradeExamList.as_view()),
	path('students/<str:dni>/grades/', GradeStudentList.as_view()),
	path('grades/', GradeList.as_view()),
]
