1. [Equation of State Calculations by Fast Computing Machines (1953)](https://bayes.wustl.edu/Manual/EquationOfState.pdf). The proud history of Markov chain Monte Carlo (MCMC) methods begins with this paper on molecular dynamics by Nicholas Metropolis and colaborators. 

2. [Monte Carlo sampling methods using Markov chains and their applications (1970)](https://www.jstor.org/stable/2334940?seq=1#metadata_info_tab_contents). In this paper, Wilfred Hastings introduces the "Metropolis" algorithm to a general statistical audience, generalising it to general proposal distributions in the process. 

3. [Maximum Likelihood from Incomplete Data via the EM Algorithm (1977)](http://web.mit.edu/6.435/www/Dempster77.pdf).
In this seminal paper, Dempster, Laird and Rubin introduce the Expectation-Maximisation (EM) algorithm to obtain maximum likelihood estimates in models with latent variables and other missing data situations. 

4. [Optimization by Simulated Annealing (1983)](https://science.sciencemag.org/content/sci/220/4598/671.full.pdf?casa_token=l4X_4ng3VyEAAAAA:JQwegbBrAsM8upy2ri9fM5fL80C27ZOaV-T3ZN845y0O0rlRMWH46u90xGZEet5M3p7bKarfiU1Yy1o). Scott Kirkpatrick and colaborators are one of the many groups credited with the invention of the simulated annealing (SA) method. This paper showcases the application of SA to the famous(ly) NP-hard travelling salesman problem. 

5. [Stochastic Relaxation, Gibbs Distributions, and the Bayesian Restoration of Images (1984)](http://www.cis.jhu.edu/publications/papers_in_database/GEMAN/GemanPAMI84.pdf). The famous Gibbs sampler was conceived by the Geman brothers in a situation where sampling from the whole target was a nightmare, but sampling from each conditional distribution was relatively easy. One of the working horses of computational statistics to this day.

6. [The Calculation of Posterior Distributions by Data Augmentation (1987)](http://www.stat.cmu.edu/~brian/905-2009/all-papers/tanner-wong-1987-with-disc.pdf). In this paper, Martin Tanner and Wing Wong show how to make a problem easier by making it bigger, i.e., by augmenting the state space _a la_ EM algorithm. 

7. [Markov chains for exploring posterior distributions (1994) ](http://www.stat.rutgers.edu/~rongchen/papers/tierney.pdf). In this landmark paper, [Luke Tierney](https://stat.uiowa.edu/people/luke-tierney) gives a great account of the theoretical underpinnings of MCMC theory. 

8. [Reversible jump Markov chain Monte Carlo computation and Bayesian model determination](https://watermark.silverchair.com/82-4-711.pdf?token=AQECAHi208BE49Ooan9kkhW_Ercy7Dm3ZL_9Cf3qfKAc485ysgAAAr8wggK7BgkqhkiG9w0BBwagggKsMIICqAIBADCCAqEGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMI6uTaBziNSTMXiuyAgEQgIICcniaw4siMAyDlps7Sw-OCUhxCrhwKF9ypy12JsoYAqb3ULb-M4OPVdAWS8fsxKdAWkZZIzyIEcQd48b52GsqS8Y8iLvAb__C9vFbFRNBHqdA6HKGfKVKn2JebgIACxsODpzmQ6kYKBOBy3RI-mj_6Pz_SYFxg_wd2uPHQTi2bcHnXzALxde6wVYbjL5YR1dyZD0eZDzZ8eViODCBX_rZCWa93PA7srcdQZ3LLBH4NxW9mLe7lDhTkJXnhCbO5dz_O2SPD7PSkQkyFyCXz72PNlEuozWASGlZDh2LpxVYyfsKPj7p3J67WvbLjByOe1SIenLuzP9x5JgjtxxbwNdd3eQpg4xX50zwu8miGV-x-TPCkQs5Eye4ZGu8slzZYroDrvnL3ASVF6fwAd76pMmWn0pLTq_gyFktXfk5DetnPgB7h2-grOdOAQRjdR_B1d-yqqqoNgnJG4iWb_TluTAYdUbUEv3kXg1Jlw69jEna825_qI2-c-M38hxCkEpU_guBLnrAYaZmg_uY7bX9_WTo61RWbNR01hgxJ1FXbOTwuki_vtZI90zNXK0i5_cvd-luIXMz4lMyyr8rgJj_YCUiv7a71TlpY4B92FQ8ra6iNNZg6cn2pOQHptaS_kfgot5LmiTaRtYvD11dvi8a57rim9ue0YJVSW2gzz1PkySLHfAMYjhGLXlhrczJBHR5CWL92d66CC3DlByo8HYWrBrpNAa5bDBqtlnBrxv1r-awvd6bSGDPo5qbV7IHEniiYelm41R-9Ks32GaKISze7ZZYbuhPvGr-Kq2nHpMO---7HVVUqoEXbCjnUCo-Tkl4z5h55fEa) by the great Peter Green is simply one of the best Computational Statistics papers of all time. It introduces the so-called Reversible Jump MCMC algorithm which allows sampling over the space of models and thus perform model choice at the same time as model fitting. 

9. [Slice sampling (2003)](https://projecteuclid.org/euclid.aos/1056562461). In this seminal paper, Radford Neal introduces the slice sampler, a simple algorithm that often outpeforms Metropolis-Hastings-type samplers.

10. [General state space Markov chains and MCMC algorithms (2004)](https://projecteuclid.org/euclid.ps/1099928648) by [Gareth Roberts](https://en.wikipedia.org/wiki/Gareth_Roberts_(statistician)) and [Jeff Rosenthal](http://probability.ca/jeff/), brings results about Markov chains in uncountable state spaces and general conditions for geometric ergodicity are given. A complete treatise.

11. [A generalized Markov sampler (2004)](https://search.proquest.com/docview/204840305/fulltextPDF/3E8E295FF27D47B0PQ/1?accountid=10673) by Jon Keith, Dirk Kroese and Darryn Bryant shows how one can view the work of Green (1995) (see above) as a special case of a more general sampler. 

12. [MCMC using Hamiltonian dynamics (2011)](https://www.cs.utoronto.ca/~radford/ham-mcmc.abstract.html). Yet another masterpiece by Radford Neal, this paper provides a thorough review of the history and main concepts involving HMC.

13. [The No-U-Turn Sampler: Adaptively Setting Path Lengths in Hamiltonian Monte Carlo (2014)](https://arxiv.org/abs/1111.4246). Matt Hoffmann and Andrew Gelman introduce a novel algorithm that tunes the step size and tree depth of the HMC algorithm automatically.
The No-U-Turn Sampler (NUTS) as it came to christened, is the building block for what would later for the main algorithm implemented in [Stan](https://mc-stan.org/).

14. In [A tutorial on adaptive MCMC](https://people.eecs.berkeley.edu/~jordan/sail/readings/andrieu-thoms.pdf), Cristophe Andrieu and Johannes Thoms give a very nice overview of the advantages and pitfalls (!) of adaptive MCMC. Pay special heed to Section 2.
