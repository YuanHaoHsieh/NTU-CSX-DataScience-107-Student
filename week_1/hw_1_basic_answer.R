### hw_1_question


########################################################### Task 1

# �d�ݤ��ظ�ƶ�: �����(iris)��ƶ�
iris

# �ϥ�dim(), �^��iris���C�ƻP���
dim(iris)

# �ϥ�head() �^��iris���e���C
head(iris)

# �ϥ�tail() �^��iris���᤻�C
tail(iris)

# �ϥ�str() 
str(iris)

# �ϥ�summary() �d��iris�ԭz�ʲέp�B���O����Ʒ��z�C
summary(iris)

########################################################### Task 2

# �ϥ�for loop �L�X�E�E���k��
# Ex: (1x1=1 1x2=2...1x9=9 ~ 9x1=9 9x2=18... 9x9=81)
# ���
NineCrossNine<- matrix(1:81, nrow = 9)
for(x in 1:9)
{
  for(y in 1:9)
  {
    NineCrossNine[x,y]<- x*y
  }
}
print(NineCrossNine)

# �C����
for(x in 1:9)
{
  for(y in 1:9)
  {
    cat(x, "X", y, "=", x*y, "\n")
  }
}

########################################################### Task 3

# �ϥ�sample(), ���X10�Ӥ���10~100����ơA�æs�b�ܼ� nums
nums<- sample(10:100, size = 10)

# �d��nums
nums

# 1.�ϥ�for loop �H�� if-else�A�L�X�j��50�����ơA�ô���("���ƥB�j��50": �Ʀrvalue)
# 2.�S�O�W�h�G�Y�Ʀr��66�A�h����("��66666666666�F")�ä���j��C
for(x in 1:50)
{
  if(2*x < 50)
  {
    next
  }
  else if(2*x == 66)
  {
    cat("���ƥB�j��50:", 2*x, "\n", "��66666666666�F�a", "\n")
    break
  }
  else
  {
    cat("���ƥB�j��50:", 2*x, "\n")
  }
}
########################################################### Task 4

# �мg�@�q�{���X�A��P�_��J���褸�~�� year �O�_���|�~
# ��ƪ�
YearFunction<- function(year)
{
  i<- 1
  while (is.na(year[i]) == FALSE) {
    if((year[i]/100)-floor(year[i]/100) == 0)
    {
      cat("�褸", year[i], "���O�|�~\n")
    }else if(((year[i]/4)-floor(year[i]/4) == 0) && ((year[i]/100)-floor(year[i]/100) != 0))
    {
      cat("�褸", year[i], "�O�|�~\n")
    }else
    {
      cat("�褸", year[i], "���O�|�~\n")
    }
    i<- i+1
  }
}
YearFunction(scan())

a<- strsplit("12345", split = "")
b<- as.vector(a[[1]])
b[3]
#����J�N����L�A��
repeat{
cat("�п�J�~��\n")
year <-scan()

i<- 1
while (is.na(year[i]) == FALSE) {
  if((year[i]/100)-floor(year[i]/100) == 0)
  {
    cat("�褸", year[i], "���O�|�~\n")
  }else if(((year[i]/4)-floor(year[i]/4) == 0) && ((year[i]/100)-floor(year[i]/100) != 0))
  {
    cat("�褸", year[i], "�O�|�~\n")
  }else
  {
    cat("�褸", year[i], "���O�|�~\n")
  }
  i<- i+1
}
if(is.na(year[1]) == FALSE)
{
  break
}else
{
  next
}
}