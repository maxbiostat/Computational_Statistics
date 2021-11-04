# Computational Statistics (["Estatística Computacional"](https://emap.fgv.br/disciplina/doutorado/estatistica-computacional))

Course materials for Computational Statistics, a PhD-level course at [EMAp](http://emap.fgv.br/).

## Lecture notes and other resources

- We will be using the excellent [materials](http://www.stats.ox.ac.uk/~rebeschi/teaching/AdvSim/18/index.html) from Professor Patrick Rebeschini (Oxford University) as a general guide for our course. 

As complementary material,

- These lecture [notes](https://statweb.stanford.edu/~susan/courses/s227/)  by stellar statistician [Susan Holmes](https://statweb.stanford.edu/~susan/) are also well worth taking a look.

- [Monte Carlo theory, methods and examples](https://statweb.stanford.edu/~owen/mc/) by [Professor Art Owen](https://statweb.stanford.edu/~owen/), gives a nice and complete treatment of all the topics on simulation, including a whole chapter on variance reduction. 

Other materials, including lecture notes and slides may be posted here as the course progresses. 

[Here](https://github.com/maxbiostat/Computational_Statistics/blob/master/annotated_bibliography.md) you can find a nascent annotated bibliography with landmark papers in the field. 
[This](http://hedibert.org/wp-content/uploads/2021/02/MC-MCMC-references.pdf) review paper by Professor Hedibert Lopes is far better than anything I could conjure, however. 


## Books

Books marked with [a] are advanced material.

**Main**
- Gamerman, D., & Lopes, H. F. (2006). [Markov chain Monte Carlo: stochastic simulation for Bayesian inference](http://www.dme.ufrj.br/mcmc/). Chapman and Hall/CRC.
- Robert, C. P., Casella, G. (2004). [Monte Carlo Statistical Methods](https://www.researchgate.net/profile/Christian_Robert2/publication/2681158_Monte_Carlo_Statistical_Methods/links/00b49535ccaf6ccc8f000000/Monte-Carlo-Statistical-Methods.pdf). John Wiley & Sons, Ltd.

**Supplementary**
- Givens, G. H., & Hoeting, J. A. (2012). [Computational Statistics](https://www.stat.colostate.edu/computationalstatistics/) (Vol. 710). John Wiley & Sons.
- [a] Meyn, S. P., & Tweedie, R. L. (2012). [Markov chains and stochastic stability](https://www.springer.com/gp/book/9781447132691). Springer Science & Business Media.
- [a] Nummelin, E. (2004). [General irreducible Markov chains and non-negative operators](https://www.cambridge.org/core/books/general-irreducible-markov-chains-and-nonnegative-operators/0557D49C011AA90B761FC854D5C14983) (Vol. 83). Cambridge University Press.


## Simulation

- [Random Number Generation](https://www.iro.umontreal.ca/~lecuyer/myftp/papers/handstat.pdf) by [Pierre L'Ecuyer](http://www-labs.iro.umontreal.ca/~lecuyer/);
- [Non-Uniform Random Variate Generation](http://www.nrbook.com/devroye/) by the great [Luc Devroye](http://luc.devroye.org/);
-  Walker's [Alias method](https://en.wikipedia.org/wiki/Alias_method) is a fast way to generate discrete random variables;
- [Rejection Control and Sequential importance sampling](http://stat.rutgers.edu/home/rongchen/publications/98JASA_rejection-control.pdf) (1998), by Liu et al. discusses how to improve importance sampling by controlling rejections.

### Markov chains

- [These](https://pages.uoregon.edu/dlevin/MARKOV/markovmixing.pdf) notes from David Levin and Yuval Peres are excellent and cover a lot of material one might find interesting on Markov processes. 

### Markov chain Monte Carlo

- Charlie Geyer's [website](http://users.stat.umn.edu/~geyer/) is a treasure trove of material on Statistics in general, MCMC methods in particular. 
See, for instance, [On the Bogosity of MCMC Diagnostics](http://users.stat.umn.edu/~geyer/mcmc/diag.html). 
- [Efficient construction of reversible jump Markov chain Monte Carlo proposal distributions](http://www2.stat.duke.edu/~scs/Courses/Stat376/Papers/TransdimMCMC/BrooksRobertsRJ.pdf) is nice paper on the construction of efficient proposals for reversible jump/transdimensional MCMC.

#### Hamiltonian Monte Carlo

The two definitive texts on HMC are [Neal (2011)](https://arxiv.org/pdf/1206.1901.pdf) and [Betancourt (2017)](https://arxiv.org/pdf/1701.02434.pdf). 

#### Normalising Constants

[This](https://radfordneal.wordpress.com/2008/08/17/the-harmonic-mean-of-the-likelihood-worst-monte-carlo-method-ever/) post by Radford Neal explains why the Harmonic Mean Estimator (HME) is a _terrible_ estimator of the evidence.

#### Sequential Monte Carlo and Dynamic models

- [This](https://link.springer.com/book/10.1007/978-3-030-47845-2) book by Nicolas Chopin and Omiros Papaspiliopoulos is a great introduction (as it says in the title) about SMC.
SMC finds application in many areas, but dynamic (linear) models deserve a special mention. The seminal 1997 [book](https://link.springer.com/book/10.1007/b98971) by West and Harrison remains the _de facto_ text on the subject. 

## Optmisation
#### The EM algortithm 
- This elementary [tutorial](https://zhwa.github.io/tutorial-of-em-algorithm.html)  is simple but effective.
- The book [The EM algorithm and Extensions](https://books.google.com.br/books?hl=en&lr=&id=NBawzaWoWa8C&oi=fnd&pg=PR3&dq=The+EM+algorithm+and+Extensions&ots=tp68LOYAvP&sig=iCEMt5YUIMToTSESxLctWcob8VM#v=onepage&q=The%20EM%20algorithm%20and%20Extensions&f=false) is a well-cited resource.
- [Monte Carlo EM](https://github.com/bob-carpenter/case-studies/blob/master/monte-carlo-em/mcem.pdf) by Bob Carpenter (Columbia).

## Miscellanea

- In [these](https://terrytao.wordpress.com/2010/01/03/254a-notes-1-concentration-of-measure/) notes, [Terence Tao](https://en.wikipedia.org/wiki/Terence_Tao) gives insights into **concentration of measure**, which is the reason why integrating with respect to a probability measure in high-dimensional spaces is _hard_. 

- [A Primer for the Monte Carlo Method](https://archive.org/details/APrimerForTheMonteCarloMethod), by the great [Ilya Sobol](https://en.wikipedia.org/wiki/Ilya_M._Sobol), is one of the first texts on the Monte Carlo method.

- The Harris inequality, `E[fg] >= E[f]E[g]`, for `f` and `g` increasing, is a special case of the [FKG inequality](https://en.wikipedia.org/wiki/FKG_inequality). 

- In [Markov Chain Monte Carlo Maximum Likelihood](https://www.stat.umn.edu/geyer/f05/8931/c.pdf), Charlie Geyer shows how one can use MCMC to do maximum likelihood estimation when the likelihood cannot be written in closed-form.
This paper is an example of MCMC methods being used outside of Bayesian statistics.

- [This](https://github.com/maxbiostat/Computational_Statistics/blob/master/supporting_material/1997_Dunbar_CollegeMaths.pdf) paper discusses the solution of Problem A in [assigment 0 (2021)](https://github.com/maxbiostat/Computational_Statistics/blob/master/assignments/warmup_assignment.pdf).

#### Reparametrisation

Sometimes a clever way to make a target distribution easier to compute expectations with respect to is to _reparametrise_ it. Here are some resources:

- A youtube video [Introduction of the concepts and a simple example]( https://www.youtube.com/watch?v=gSd1msFFZTw); 
- [Hamiltonian Monte Carlo for Hierarchical Models](https://arxiv.org/abs/1312.0906) from M. J. Betancourt and Mark Girolami; 
- [A General Framework for the Parametrization of Hierarchical Models](https://projecteuclid.org/journals/statistical-science/volume-22/issue-1/A-General-Framework-for-the-Parametrization-of-Hierarchical-Models/10.1214/088342307000000014.full) from Omiros Papaspiliopoulos, Gareth O. Roberts, and Martin Sköld; 
- [Efficient parametrisations for normal linear mixed models](https://www.jstor.org/stable/2337527?seq=1#metadata_info_tab_contents) from Alan E. Gelfand, Sujit K. Sahu and Bradley P. Carlin. 

See [#4](https://github.com/maxbiostat/Computational_Statistics/issues/4). Contributed by @lucasmoschen.

#### Variance reduction

- [Rao-Blackwellisation](http://www.columbia.edu/~im2131/ps/rao-black.pdf) is a popular technique for obtaining estimators with lower variance. I recommend the recent International Statistical Review [article](https://arxiv.org/abs/2101.01011) by Christian Robert and Gareth Roberts on the topic. 

### Extra (fun) resources

- A [Visualisation](https://chi-feng.github.io/mcmc-demo/app.html) of MCMC for various algorithms and targets.

In these blogs and websites you will often find interesting discussions on computational, numerical and statistical aspects of applied Statistics and Mathematics.

- Christian Robert's [blog](https://xianblog.wordpress.com/);
- John Cook's [website](https://www.johndcook.com/blog/);
- [Statisfaction](https://statisfaction.wordpress.com/) blog.
