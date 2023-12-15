# Heart Failure Clinical Records analytics
# Upload Heart Failure Clinical Records Data\


# Aggression Analysis
summary(Heart)

# Simple linear regression
model_A = lm(diabetes ~ anaemia,
             data = Heart)
summary(model_A)

# Polynomial regression, Quadratic regression
model_A1 = lm(diabetes ~ age + I(anaemia^2),
              data = Heart)
summary(model_A1)

# Polynomial regression, cubic regression
model_A2 = lm(diabetes ~ age + I(anaemia^2) + I(anaemia^3),
              data = Heart)
summary(model_A2)


#  Multiple linear regression
model_B1 = lm(diabetes ~ age + high_blood_pressure,
              data = Heart)
summary(model_B1)


model_B3 = lm(DEATH_EVENT ~ age + high_blood_pressure + creatinine_phosphokinase + platelets,
              data = Heart)
summary(model_B3)



# Regression diagnostics,  typical approach
model_A = lm(diabetes ~ anaemia,
             data = Heart)
par(mfrow=c(2,2))

model_B3 = lm(DEATH_EVENT ~ age + high_blood_pressure + creatinine_phosphokinase + platelets,
              data = Heart)
par(mfrow=c(2,2))
plot(model_B3)