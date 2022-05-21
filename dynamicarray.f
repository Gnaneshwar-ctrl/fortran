PROGRAM dynamic
      ! illustrating dynamic array allocation 
      IMPLICIT NONE
      iwp=SELECTED_REAL_KIND(15)
      ! decleration variable space of 2-d array
      REAL,ALLOCATABLE::a(:,:)
      REAL::two=2.0_iwp ,d3=3.0_iwp
      INTEGER::m,n
      ! now read in the bounds for a 
      READ*,m,n
      ! allocating actual space for a 
      ALLOCATE(a(m,n))
      READ*,a
      PRINT*,two*SQRT(a)+d3
      ! Deallocating storage assigned to a 
      DEALLOCATE(a)
      STOP
END PROGRAM dynamic 
