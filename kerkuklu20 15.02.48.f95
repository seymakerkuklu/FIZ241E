!090200124 Şeyma Kerküklü
!The aim of this question is to calculate the average of the all elements of the avematSK matrix. Assigning matSK matrix by given equation and calculating each element of matSK matrix. Then, by separately taking average for each element, the element and the element's nearest neighbours sum divided by 1+ the number of the nearest neighbours. This result is assigned to the avematSK matrix. By defining elements of avematSK finally the average of the elements can be calculated and assigned to averageSK and displayed.
program myproject
implicit none

integer::kSK,i,j
!kSK is from equation, i,j are used for loops 
integer,parameter::NrowSK=(4+1)*19,NcolSK=(4+1)*23
!NrowSK is the row value as a parameter and NcolSK is the column value as a parameter for matSK and avematSK
real,dimension(NrowSK,NcolSK)::matSK,avematSK
!matSK and avematSK are NrowSK x NcolSK dimensioned matrixes
real::averageSK,total
!averageSK is the average of all elements in avematSK matrix and total is the summ of the elements in avematSK matrix

!This loop assigns the result of the equation to the elements of matSK matrix
do i=1,NrowSK
    do j=1,NcolSK
        do kSk=0,(i+j)
            matSK(i,j)=matSK(i,j)+(8.0/((4*kSK+1)*(4*kSK+3)))
        end do
    end do
end do

!This loop assigns elements for avematSK matrix by taking average of the element from the matSK matrix and the nearest neighbors of that element.
do i=1,NrowSK
    do j=1,NcolSK
    
!This if statement has three parts: first row then (else if) the rows between the first row and finally (else)the last row

!if j equals to one, if j is bigger than one and (else if) smaller than the value of the last column and lastly (else) j is the last column

!if i equals to one and j equals to one, it refers a 11 of matSK which has nearest neighbours as a12 and a21 therefore the result equals to the average of these three elements which is assigned to b11 of avematSK
!if i equals to one and j is bigger than one and smaller than the value of the last column, it refers the elements which has three nearest neighbours: one row down,one column right and one column left. Therefore the result equals to the average of these four elements which is assigned to avematSK
!if i equals to one and j is the last column, it refers the elements which has two nearest neighbours: one row down,one column left.Therefore the result equals to the average of these three elements which is assigned to avematSK


!(else if) j is bigger than one and  smaller than the value of the last column and j equals to one,it refers the elements which has three nearest neighbours: one row down, one row up and one column right.Therefore the result equals to the average of these four elements which is assigned to avematSK
!(else if) j is bigger than one and  smaller than the value of the last column and (else if) j is bigger than one and smaller than the value of the last column,it refers the elements which has four nearest neighbours: one row down, one row up, one column left and one column right.Therefore the result equals to the average of these five elements which is assigned to avematSK
!(else if) j is bigger than one and  smaller than the value of the last column and j is the last column,it refers the elements which has three nearest neighbours: one row up, one row down and one column left.Therefore the result equals to the average of these four elements which is assigned to avematSK


!(else) j is the last column and j equals to one,it refers the elements which has two nearest neighbours: one row up and one column right.Therefore the result equals to the average of these three elements which is assigned to avematSK
!(else) j is the last column and  j is bigger than one and smaller than the value of the last column,it refers the elements which has three nearest neighbours: one row up, one column left and one column right.Therefore the result equals to the average of these four elements which is assigned to avematSK
!(else) j is the last column and j is the last column, it refers the elements which has two nearest neighbours: one row up and one column left.Therefore the result equals to the average of these three elements which is assigned to avematSK

        if (i==1) then 
            if (j==1) then 
                avematSK(i,j)=(matSK(i,j)+matSK(i+1,j)+matSK(i,j+1))/3
            else if (1<j .and. j<NcolSK) then
                avematSK(i,j)=(matSK(i,j)+matSK(i+1,j)+matSK(i,j-1)+matSK(i,j+1))/4
            else
                avematSK(i,j)=(matSK(i,j)+matSK(i+1,j)+matSK(i,j-1))/3
            end if
            
        else if (1<i .and. i<NrowSK) then
            if (j==1) then
                avematSK(i,j)=(matSK(i,j)+matSK(i-1,j)+matSK(i+1,j)+matSK(i,j+1))/4
            else if (1<j .and. j<NcolSK) then
                avematSK(i,j)=(matSK(i,j)+matSK(i-1,j)+matSK(i+1,j)+matSK(i,j-1)+matSK(i,j+1))/5
            else
                avematSK(i,j)=(matSK(i,j)+matSK(i-1,j)+matSK(i+1,j)+matSK(i,j-1))/4
            end if

        else
            if (j==1) then
                avematSK(i,j)=(matSK(i,j)+matSK(i-1,j)+matSK(i,j+1))/3
            else if (1<j .and. j<NcolSK) then
                avematSK(i,j)=(matSK(i,j)+matSK(i-1,j)+matSK(i,j-1)+matSK(i,j+1))/4
            else
                avematSK(i,j)=(matSK(i,j)+matSK(i-1,j)+matSK(i,j-1))/3
            end if
        end if
    end do
end do

!This loop adds together the element of the avematSK matrix and assigns it to the value,total
do i=1,NrowSK
    do j=1,NcolSK
        total=total+avematSK(i,j)
    end do
end do

averageSK=total/(NrowSK*NcolSK)
print*,averageSK

end program



