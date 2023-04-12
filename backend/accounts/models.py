from django.db import models

# 회원가입 - 이메일, 이름, 비밀번호, 생년월일, 대상, 전화번호, 소속학교
class Account(models.Model):
    user_id = models.CharField(max_length=32, unique=True, verbose_name='아이디')
    user_pw = models.CharField(max_length=300, verbose_name='비밀번호')
    user_name = models.CharField(max_length=16, unique=True, verbose_name='이름')
    user_email = models.EmailField(max_length=100, unique=True, default='', verbose_name='이메일')
    user_birth = models.DateTimeField(auto_now_add=True, verbose_name='생일') # 버튼 선택으로 수정 예정
    user_role = models.CharField(max_length=4, verbose_name='역할') # 버튼 선택으로 수정 예정
    user_phone = models.CharField(max_length=11, unique=True, verbose_name='전화번호')
    user_school = models.CharField(max_length=32, verbose_name='학교')