//090200124 Şeyma Kerküklü
#include <iostream>
#include <valarray>
#define pi 3.141593
#include <valarray>
using namespace std;
//this program allows us to calculate bessel functions of the first kind
//fSK is the function f(z) which is integrated through our codes as bessel function
double fSK (int n, double x, double theta)
{
    double res;
    res = cos(x*sin(theta) -n*theta);
    return (res);
}
//this calculates integration with euler quadrature method with using fSK function; by dividing M intervals, 0 to pi.
//And zi is our theta value which can be calculated with the given formula.
//res is the result of the integration
double besseljSK (int n, double x)
{
    double res,zi,b;
    int M,a,i;
    M=10000;
    b= pi;
    a=0;
    res=0.0;
    for (i=1;i<M+1;i++) //this loops calculate each theta value,zi and the given integral 
    {
        zi=a+(i-1)*(b-a)/M;
        res=res+((b-a)/M)*fSK(n,x,zi)/pi;
    }
return(res);
}
//this function calculate the peak values in the bessel function
void findmypeaksSK(valarray<double>v,valarray<double>&peaks)
{
    int i,c;
    c=0;
    for (i=1;i<v.size();i++) //this loop find the peak values and assigns it to the vector peaks
    {
        if(v[i]>v[i-1] && v[i]>v[i+1]) //this if condition finds the peak values
        {
            if(c<peaks.size()) //this statement will check the size of the peaks equals to to the seted value
            {
              peaks[c]=v[i];
            c=c+1;  
            }
            
        }
    }
}

//our main function creates the vectors,values that will be needed to calculate the integration
int main()
{
    int num1,num2,num3;
    int i,j,g;
    double h,initial;
    num1=5000;
    num2=6;
    num3=4;
    valarray<double>myvals(num1),mybessel(num1),mypeaksSK(num2);
    h=0.05;
    initial=0.0;
    myvals[0]=initial;
    for (int i=1;i<num1+1;i++) //this loop assigns myvals elements
    {
        myvals[i]=initial+h*i;  
    }
    
    for (j=0;j<num1+1;j++) //this loop assings mybessel elements
    {
        mybessel[j]= besseljSK(num3,myvals[j]);
    
    }
    
    findmypeaksSK(mybessel, mypeaksSK);
for (g=0;g<num2;g++) //this loops will print the peak values
{
    cout<<mypeaksSK[g]<<'\n';
}

return 0;
}







