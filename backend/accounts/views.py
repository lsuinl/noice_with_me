from django.contrib import auth
from django.contrib.auth.models import User
from django.shortcuts import redirect, render
from .models import Account
from rest_framework import viewsets
from .serializers import AccountSerializer

# 회원가입
class accountView(viewsets.ModelViewSet):
    queryset = Account.objects.all() # 모든 속성 데려오기
    serializer_class = AccountSerializer # JSON 형태로 넘겨줌

# def signup(request):
#     if request.method == 'POST':
#         if request.POST['password'] == request.POST['password_re']:
#             user = User.objects.create_user(
#                 username=request.POST['username'],
#                 password=request.POST['password'],
#                 email=request.POST['email'],
#                 birthday=request.POST['birthday'],
#                 role=request.POST['role'],
#                 phone=request.POST['phone'],
#                 school=request.POST['school']
#             )
#             auth.login(request, user)
#             return redirect('/nwm') # 회원가입 성공시, nwm 페이지로 이동
#         return render(request, 'signup.html')
#     return render(request, 'signup.html')
#
# def login(request):
#     if request.method == "GET":
#         return render(request, '로그인_스크린')
#     elif request.method == "POST":
#         context = {}
#
#         id = request.POST.get('id')
#         password = request.POST.get('password')

