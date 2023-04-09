from django.contrib import auth
from django.contrib.auth.models import User
from django.shortcuts import redirect, render


# 회원가입
# 해야하는 것 : 중복 아이디 -> 회원가입 실패
def signup(request):
    if request.method == 'POST':
        if request.POST['password'] == request.POST['password_re']:
            user = User.objects.create_user(
                username=request.POST['username'],
                password=request.POST['password'],
                email=request.POST['email'],
            )
            auth.login(request, user)
            return redirect('/nwm') # 회원가입 성공시, nwm 페이지로 이동
        return render(request, 'signup.html')
    return render(request, 'signup.html')