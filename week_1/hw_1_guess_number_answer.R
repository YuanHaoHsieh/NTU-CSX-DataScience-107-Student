# �q�Ʀr�C��
# �򥻥\��
# 1. �мg�@�ӥ�"�q���H������"���P�Ʀr���|���(1A2B�C��)
# 2. ���a�i"����"�q�q���Ҳ��ͪ��Ʀr�A�ô��ܲq�������G(EX:1A2B)
# 3. �@���q��A�t�Υi�۰ʭp�⪱�a�q��������

# �B�~�\��G�C�����a��J���|�ӼƦr��A�ˬd���a����J�O�_���T(���~�ˬd)

ans<- sample(0:9, size = 4)
c<- 0
repeat{
  guess<- readline("�п�J�|�Ӥ����ƪ��Ʀr:")
  intermediate<- strsplit(guess, split = "")
  guessi<- as.vector(intermediate[[1]])
  a<- 0
  b<- 0
  c<- c+1
  d<- 0
  for(x in 1:4)
  {
    if(d == 1)
    {
      break
    }else
    {
      for(y in 1:4)
      {
        if(y == x)
        {
          next
        }else if(guessi[x] == guessi[y])
        {
          cat("�ҥH�ڤ��O���F���n���ƤF��")
          c<- c-1
          d<- 1
          break
        }else
        {
          next
        }
      }  
    }  
  }  
  for(x in 1:4)
  {
    if(as.integer(guessi[x]) == ans[x])
    {
      a<- a+1
    }else
    {
      for(y in 1:4)
      {
        if(as.integer(guessi[x]) == ans[y])
        {
          b<- b+1
          break
        }else
        {
          next
        }
      }
    }
  }
  if(d == 1)
  {
    next
  }else 
  {
    cat(a, "A", b, "B\n")
    if(a == 4)
    {
      cat("���ߧA�q��F\n")
      break
    }else if(c == 10)
    {
      cat("�A�ӻ��F\n")
      break
    }else
    {
      cat("�A�q�F", c, "��")
      next
    }
  }  
}