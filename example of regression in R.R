
#Example 14.3
# Import the Debt_Payments data file into a data frame (table) and label it myData.
jaggia_BS_4e_ch14_Data_Files_1 <- read_excel("jaggia_BS_4e_ch14_Data_Files-1.xlsx",
                                             sheet = "Debt_Payments")
myData <- jaggia_BS_4e_ch14_Data_Files_1

#a. What is the sample regression equation?


Model <- lm(Debt ~ Income+Unemployment, data=myData)
summary(Model)

Model$coefficients[1] #B0
Model$coefficients[2] #B1
Model$coefficients[3] #B2

e=0

Debt= 198.9956 +10.51216 * Income + 0.6185772

#b. Interpret the regression coefficients.


#c. Predict debt payments if income is $80000 and the unemployment rate is 7.5%

Income= 80
Unemployment= 7.5 #Why not 0.075? because in the table it is based on a percentage

(Debt= 198.9956 +10.51216 * Income + 0.6185772)
#or
predict(Model, data.frame(Income= 80, Unemployment=7.5))
#predict model has less decimals, making it slightly different answer

#Q13 in Exercises 14.2
#In a simple linear regression, the following sample regression equation is obtained

y=436-17*x

# a.	Interpret the slope coefficient.

#Estimated slope coefficient B1 equals -17. Thus, as x1 increase by 1 unit,
#y is predicted to decrease by 17 units

# b.	Predict y if x equals -15.
x=-15
(y=436-17*x)
#691

#Q15 in Exercises 14.2

#In a multiple regression, the following sample regression equation is obtained:

y= 152 + 12.9*x1 +2.7*x2

# a.	Predict y if x1 equals 20 and x2 equals 35.

x1=20
x2=35

(y= 152 + 12.9*x1 +2.7*x2)
#504.5

# b.	Interpret the slope coefficient of x1.

#As x1 increases by one unit, y is predicted to increase by 12.9 units, holding x2 constant.


#Q19 in Exercises 14.2

#Forty observations were used to estimate y = B0 + B1*x1+B2*x2+e. 

#          coefficients   StandardError   tStat     p-value
#Intercept    13.83           2.42        5.71      1.56E-06
#x1           -2.53           0.15        -16.87    5.84E-19
#x2           0.29            0.06        4.83      2.38E-05 

# a.	What is the estimate for B1? Interpret this value.

#The point estimate of B1 is -2.53. As x1 increases by 1 unit,
#y is predicted to decrease by 2.53 units, holding x2 as constant.

# b.	What is the sample regression equation?

y= 13.83-2.53*x1+0.29*x2

# c.	What is the predicted value for y if 

x1= -9
x2= 25

(y= 13.83-2.53*x1+0.29*x2)
#43.85