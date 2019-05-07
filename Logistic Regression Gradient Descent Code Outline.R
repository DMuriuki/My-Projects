##ALY 6020 Predictive Analytics
##Assignment 1 

##Logistic Regression via Gradient Descent - Code Outline


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

#Sigmoid Function
#Create user-defined sigmoid function for logistic regression
#[this function is complete]

sigmoid <- function(z){
  g <- 1/(1+exp(-z))
  return(g)
}

#Cost Function
#Create user-defined Loss Function specific to logistic regression gradient descent
#[finish the equation for J - the logistic regression cost/loss function]

logistic_cost_function <- function(beta){
  m <- nrow(X)
  g <- sigmoid(X%*%beta)
  J <- (1/m)*sum((-Y*log(g)) - ((1-Y)*log(1-g)))
  return(J)
}

#Gradient Descent Function
#Create user-defined Gradient Descent Function specific to Logistic Regression
#[finish the equation for Beta - the updated weight (beta-alpha*delta)]

logistic_gradient_descent <- function(alpha, iterations, beta, x, y){
    for (i in 1:iterations) {
        error <- (sigmoid(X%*%beta) - Y)
        delta <- #[put delta formula here]
        beta <- #[put updated beta equation here]
    }
    return(list(parameters=beta))
}


#Set initial parameters for gradient descent

# Define learning rate and iteration limit
initial_alpha <- 0.01 #learning rate
num_iterations <- 10000 #number of times we'll run the loop in the function
empty_beta <- matrix(c(0,0,0), nrow=3) # initialized parameters (matrix of 0s)


#Run logistic regression gradient descent to find beta parameters
#[fill in all of the arguments for the user-defined logistic gradient descent function]
output <- logistic_gradient_descent(alpha = , iterations = , beta = , x = , y = )

#Get final estimated parameters from our output object:
#[call object "output" and stored attribute "parameters", separated by a $, as in object$attribute]


#End of Logistic Regression via Gradient Descent Code Outline