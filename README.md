## 💻 Computations in Symbolic & Numeric Techniques in Physics

This repository contains my final projects for the **Computations in Symbolic & Numeric Techniques in Physics** course at Istanbul Technical University.  
The projects focus on numerical methods, matrix operations, and special functions commonly used in computational physics.

---

### 📌 Project 1: Matrix Averaging and Nearest Neighbor Analysis

This project aims to compute the average value of all elements in a matrix after applying a nearest-neighbor smoothing technique.

#### 🔍 Description
First, a matrix (`matSK`) is generated using a given summation formula.  
Then, a new matrix (`avematSK`) is constructed by averaging each element with its nearest neighbors. The averaging procedure depends on the position of the element:
- Corner elements
- Edge elements
- Interior elements  

Each element is averaged together with its valid neighboring elements.  
Finally, the global average of the smoothed matrix is calculated and displayed.

This project demonstrates:
- Matrix construction using nested loops  
- Boundary condition handling  
- Numerical averaging techniques  
- Algorithm design in scientific computing  

#### ⚙️ Implementation
The implementation is written in **Fortran**, which is widely used in high-performance scientific computing.

📂 **Code file:**  
`matrix_averaging.f90`

---

### 📌 Project 2: Numerical Calculation of Bessel Functions and Peak Detection

This project focuses on the numerical computation of **Bessel functions of the first kind**, which are important in many areas of physics such as wave propagation, electromagnetism, and quantum mechanics.

#### 🔍 Description
The project includes:
- Numerical integration of the Bessel function using the **Euler quadrature method**
- Implementation of the integral representation of the Bessel function
- Calculation of Bessel function values for a range of inputs
- Detection of peak values in the computed function  

The program evaluates the function over a discretized domain and extracts the peak values using a custom peak-finding algorithm.

This project demonstrates:
- Numerical integration  
- Special functions in physics  
- Scientific programming  
- Signal and peak detection  
- Efficient use of arrays and vectorized structures  

#### ⚙️ Implementation
The code is implemented in **C++** using `valarray` for numerical operations.

📂 **Code file:**  
`bessel_peak_analysis.cpp`

---

### 🛠️ Tools and Concepts
- Numerical methods  
- Scientific computing  
- Fortran and C++ programming  
- Matrix operations  
- Special functions  
- Numerical integration  
- Data analysis and peak detection  
