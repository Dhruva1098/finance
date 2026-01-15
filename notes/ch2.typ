#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)
#set text(
  font: "New Computer Modern",
  size: 11pt
)
#set par(
  justify: true
)

// Configure heading numbering
#set heading(numbering: "1.")

// Title
#align(center)[
  #text(size: 17pt, weight: "bold")[Brownian Motion & Geometric Brownian Motion]
]

= Standard Brownian Motion (Wiener Process)

Standard Brownian motion, often denoted as $W_t$ (or $B_t$), is a continuous-time stochastic process that serves as a fundamental building block in stochastic calculus and quantitative finance. It is characterized by the following properties:

+ *Initialization:* $W_0 = 0$ with probability 1.
+ *Independent Increments:* For any $0 <= t_1 < t_2 < ... < t_n$, the increments $W_(t_2) - W_(t_1), ..., W_(t_n) - W_(t_(n-1))$ are independent random variables.
+ *Gaussian Increments:* For any $t > s >= 0$, the increment $W_t - W_s$ is normally distributed with mean 0 and variance $t - s$:
  $ W_t - W_s tilde cal(N)(0, t - s) $
+ *Continuity:* The paths $t -> W_t$ are continuous almost surely (though they are nowhere differentiable).

The probability density function for the position of the particle at time $t$ is:

$ f(x, t) = 1 / sqrt(2 pi t) exp(- x^2 / (2t)) $

= Geometric Brownian Motion (GBM)

Geometric Brownian Motion is a continuous-time stochastic process in which the logarithm of the randomly varying quantity follows a Brownian motion with drift. It is widely used to model stock prices in the Black-Scholes model because it ensures the quantity $S_t$ remains positive.

== Stochastic Differential Equation (SDE)
A stochastic process $S_t$ is said to follow a GBM if it satisfies the following SDE:

$ d S_t = mu S_t d t + sigma S_t d W_t $

Where:
- $S_t$ is the asset price at time $t$.
- $mu$ (mu) is the percentage drift (constant).
- $sigma$ (sigma) is the percentage volatility (constant).
- $W_t$ is a Standard Brownian Motion.

== Analytical Solution
Using Itô's Lemma, the SDE can be solved explicitly. If we apply the transformation $f(S_t) = ln(S_t)$, the solution is:

$ S_t = S_0 exp((mu - 1/2 sigma^2)t + sigma W_t) $

== Key Statistics
The statistical properties of GBM differ from standard Brownian motion because of the log-normal distribution:

- *Expected Value:* $ E[S_t] = S_0 e^(mu t) $
- *Variance:* $ "Var"(S_t) = S_0^2 e^(2 mu t) (e^(sigma^2 t) - 1) $

The term $mu - 1/2 sigma^2$ represents the actual growth rate of the log-price, distinguishing it from the arithmetic drift $mu$.
