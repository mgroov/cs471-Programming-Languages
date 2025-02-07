!     Matthew Groover
!     9/28/20
!     this program shows the time complexity
!     of basic languages  
      program gausselim
      implicit none

      Integer::n=3
      Integer::i,j

      real::s

      real,dimension(:,:),allocatable::a
      real,dimension(:),allocatable::x
      REAL :: time_begin, time_end
      real::t


      print*, "Enter the size of the array:"
      read*,n

      
      allocate(a(n,n+1))
      allocate(x(n))

      do i=1,n
         do j=1,n+1
            a(i,j) = INT((rand() * (20 - 1 + 1)) + 1 )
         end do
      end do

      print *,a


      do j=1,n
         do i=j+1,n
            a(i,:)=a(i,:)-a(j,:)*a(i,j)/a(j,j)
         end do
      end do

   

      do i=n,1,-1
         s=a(i,n+1)
         do j=i+1,n
            s=s-a(i,j)*x(j)
         end do
         x(i) = s/a(i,i)
      end do

!print *,x
!=======================250==================================
      n= 250
      
      deallocate(a)
      deallocate(x)
      
      allocate(a(n,n+1))
      allocate(x(n))

      do i=1,n
         do j=1,n+1
            a(i,j) = INT((rand() * (20 - 1 + 1)) + 1 )
         end do
      end do

      CALL CPU_TIME ( time_begin )

      do j=1,n
         do i=j+1,n
            a(i,:)=a(i,:)-a(j,:)*a(i,j)/a(j,j)
         end do
      end do



      do i=n,1,-1
         s=a(i,n+1)
         do j=i+1,n
            s=s-a(i,j)*x(j)
         end do
         x(i) = s/a(i,i)
      end do

      CALL CPU_TIME ( time_end )
           
      t= (time_end - time_begin ) *1000

      print *,'250 took: ',t

!===============================================================

      


!=======================500==================================
      n= 500

      deallocate(a)
      deallocate(x)
      allocate(a(n,n+1))
      allocate(x(n))

      do i=1,n
         do j=1,n+1
            a(i,j) = INT((rand() * (20 - 1 + 1)) + 1 )
         end do
      end do

      CALL CPU_TIME ( time_begin )

      do j=1,n
         do i=j+1,n
            a(i,:)=a(i,:)-a(j,:)*a(i,j)/a(j,j)
         end do
      end do



      do i=n,1,-1
         s=a(i,n+1)
         do j=i+1,n
            s=s-a(i,j)*x(j)
         end do
         x(i) = s/a(i,i)
      end do

      CALL CPU_TIME ( time_end )

      t= (time_end - time_begin ) *1000

      print *,'500 took: ',t

!===============================================================


!=======================1000==================================
      n= 1000

      deallocate(a)
      deallocate(x)
      allocate(a(n,n+1))
      allocate(x(n))

      do i=1,n
         do j=1,n+1
            a(i,j) = INT((rand() * (20 - 1 + 1)) + 1 )
         end do
      end do

      CALL CPU_TIME ( time_begin )

      do j=1,n
         do i=j+1,n
            a(i,:)=a(i,:)-a(j,:)*a(i,j)/a(j,j)
         end do
      end do



      do i=n,1,-1
         s=a(i,n+1)
         do j=i+1,n
            s=s-a(i,j)*x(j)
         end do
         x(i) = s/a(i,i)
      end do

      CALL CPU_TIME ( time_end )

      t= (time_end - time_begin ) *1000

      print *,'1000 took: ',t

!===============================================================


!=======================1500==================================
      n= 1500

      deallocate(a)
      deallocate(x)
      allocate(a(n,n+1))
      allocate(x(n))

      do i=1,n
         do j=1,n+1
            a(i,j) = INT((rand() * (20 - 1 + 1)) + 1 )
         end do
      end do

      CALL CPU_TIME ( time_begin )

      do j=1,n
         do i=j+1,n
            a(i,:)=a(i,:)-a(j,:)*a(i,j)/a(j,j)
         end do
      end do



      do i=n,1,-1
         s=a(i,n+1)
         do j=i+1,n
            s=s-a(i,j)*x(j)
         end do
         x(i) = s/a(i,i)
      end do

      CALL CPU_TIME ( time_end )

      t= (time_end - time_begin ) *1000

      print *,'1500 took: ',t

!===============================================================

      
!=======================2000==================================
      n= 2000
      
      deallocate(a)
      deallocate(x)
      allocate(a(n,n+1))
      allocate(x(n))

      do i=1,n
         do j=1,n+1
            a(i,j) = INT((rand() * (20 - 1 + 1)) + 1 )
         end do
      end do

      CALL CPU_TIME ( time_begin )

      do j=1,n
         do i=j+1,n
            a(i,:)=a(i,:)-a(j,:)*a(i,j)/a(j,j)
         end do
      end do



      do i=n,1,-1
         s=a(i,n+1)
         do j=i+1,n
            s=s-a(i,j)*x(j)
         end do
         x(i) = s/a(i,i)
      end do

      CALL CPU_TIME ( time_end )

      t= (time_end - time_begin ) *1000

      print *,'2000 took: ',t

!===============================================================


      end program gausselim
     
