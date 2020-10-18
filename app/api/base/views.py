from rest_framework import viewsets
from . import serializers
from users.models import CustomUser


class UserViewSet(viewsets.ModelViewSet):
    queryset = CustomUser.objects.all()
    serializer_class = serializers.UserSerializer
