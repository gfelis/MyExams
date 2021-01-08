from rest_framework import serializers
from .models import Exam


class ExamSerializer(serializers.ModelSerializer):
	class Meta:
		fields = ('id', 'title', 'description', 'date_start','date_finish','location','questions')
		model = Exam
