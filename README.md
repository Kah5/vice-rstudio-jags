# The CyVerse VICE RStudio image with JAGS added

The base image is one of the Rocker images Dockerizing the RStudio Server IDE,
further customized for the CyVerse
[VICE](https://learning.cyverse.org/projects/vice/en/latest/) data science
workbench, augmented with the standard distributed Debian package for JAGS (Just
Another Gibbs Sampler for Bayesian MCMC); see:
https://tracker.debian.org/pkg/jags The rjags and coda packages get
pre-installed into this by the mechanism that Rocker likes to use (install2.r).

Usage outside CyVerse is similar to the base image, for example
```
docker run -v $(pwd):/home/rstudio --rm -p 8787:80 ltrr/vice-rstudio-jags:3.6.0
```
Following the convention the upstream Rocker images use, tag numbers refer to
the R software version included in the image, not to Git tags in the source
repository.