- [Equation of State Calculations by Fast Computing Machines (1953)](https://bayes.wustl.edu/Manual/EquationOfState.pdf). The proud history of Markov chain Monte Carlo (MCMC) methods begins with this paper on molecular dynamics by Nicholas Metropolis and colaborators. 

- [Monte Carlo sampling methods using Markov chains and their applications (1970)](https://www.jstor.org/stable/2334940?seq=1#metadata_info_tab_contents). In this paper, Wilfred Hastings introduces the "Metropolis" algorithm to a general statistical audience, generalising it to general proposal distributions in the process. 

- [Maximum Likelihood from Incomplete Data via the EM Algorithm (1977)](http://web.mit.edu/6.435/www/Dempster77.pdf).
In this seminal paper, Dempster, Laird and Rubin introduce the Expectation-Maximisation (EM) algorithm to obtain maximum likelihood estimates in models with latent variables and other missing data situations. 

- [Optimization by Simulated Annealing (1983)](https://science.sciencemag.org/content/sci/220/4598/671.full.pdf?casa_token=l4X_4ng3VyEAAAAA:JQwegbBrAsM8upy2ri9fM5fL80C27ZOaV-T3ZN845y0O0rlRMWH46u90xGZEet5M3p7bKarfiU1Yy1o). Scott Kirkpatrick and colaborators are one of the many groups credited with the invention of the simulated annealing (SA) method. This paper showcases the application of SA to the famou(usly) NP-hard travelling salesman problem. 

- [Stochastic Relaxation, Gibbs Distributions, and the Bayesian Restoration of Images (1984)](http://www.cis.jhu.edu/publications/papers_in_database/GEMAN/GemanPAMI84.pdf). The famous Gibbs sampler was conceived by the Geman brothers in a situation where sampling from the whole target was a nightmare, but sampling from each conditional distribution was relatively easy. One of the working horses of computational statistics to this day.

- [Slice sampling (2003)](https://projecteuclid.org/euclid.aos/1056562461). In this seminal paper, Radford Neal introduces the slice sampler, a simple algorithm that often outpeforms Metropolis-Hastings-type samplers.

- [MCMC using Hamiltonian dynamics (2011)](https://www.cs.utoronto.ca/~radford/ham-mcmc.abstract.html). Yet another masterpiece by Radford Neal, this paper provides a thorough review of the history and main concepts involving HMC.

- [The No-U-Turn Sampler: Adaptively Setting Path Lengths in Hamiltonian Monte Carlo (2014)](https://arxiv.org/abs/1111.4246). Matt Hoffmann and Andrew Gelman introduce a novel algorithm that tunes the step size and tree depth of the HMC algorithm automatically.
The No-U-Turn Sampler (NUTS) as it came to christened, is the building block for what would later for the main algorithm implemented in [Stan](https://mc-stan.org/).
