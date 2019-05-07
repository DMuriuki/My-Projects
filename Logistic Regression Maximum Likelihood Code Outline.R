##ALY 6020 Predictive Analytics
##Assignment 1

##Logistic Regression via Maximum Likelihood Estimation - Code Outline


#Load data and prepare for analysis
#[you can just run this section without changing anything]

sales <- read.csv("http://ucanalytics.com/blogs/wp-content/uploads/2017/09/Data-L-Reg-Gradient-Descent.csv")
sales$X1plusX2 <- NULL
var_names <- c("expenditure", "income", "purchase")
names(sales) <- var_names

#Standardize predictors (X1, X2) to facilitate gradient descent optimization
sales$expenditure <- scale(sales$expenditure, scale=TRUE, center = TRUE)
sales$income <- scale(sales$income, scale=TRUE, center = TRUE)

#Predictor variables matrix
X <- as.matrix(sales[,c(1,2)])

#Add ones to Predictor variables matrix (for intercept, B0)
X <- cbind(rep(1,nrow(X)),X)

#Response variable matrix
Y <- as.matrix(sales$purchase)

#end of data import/prep section


#Create user-defined logistic maximum likelihood function
#[complete logistic log likelihood equation]
logl <- function(theta,x,y){
    y <- y
    x <- as.matrix(x)
    beta <- theta[1:ncol(x)]
    loglik <-  #[be sure to add logistic log likelihood equation here!]
    return(-loglik)
}


# Define initial values for the parameters
theta.start = rep(0,3)
names(theta.start) = colnames(X)

# Optimize log likelihood function to find parameters that maximize the negative log likelihood function
#[use your log likelihood function and the optim() function to get estimated parameters]
mle = optim(par= ,fn= ,x= ,y= ,hessian=T)

#par - is initial values of beta (the empty matrix of 0's))
#fn - is your user-defined logl function you creatd above
#x=predcitor values, X
#y=outcome, Y


#Summarize parameter estimates, SEs, ec. in new object called "out"
out = list(beta=mle$par,se=diag(sqrt(solve(mle$hessian))),ll=2*mle$value)

#Get parameter values from out object and beta attribute
#[call "out" object and "beta" attribute, separated by $, as in object$attribute]



#End of Logistic Regression via Maximum Likelihood Estimation Code Outline
