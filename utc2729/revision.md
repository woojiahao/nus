# Revision

## Chapter 1: Causal Inference

- Prediction vs Causation: prediction asks, "what will happen", causation asks, "what are the
  effects of a cause (intervention)"
- Causal questions: counterfactual ("could have been") prediction questions
- Causal effect: difference between outcome if treated ($Y_1$) and outcome if not treated ($Y_0$)
  - Phrasing: difference between actual \<unit> and current \<unit> if more/less \<action>
        was applied
- Potential outcomes framework: causality is tied to an "action" applied to a "unit"
  - "action": treatment/manipulation/intervention
  - "unit": person/firm/country
  - Observe counterfactual by comparing observed outcomes between treated/untreated
- Difference in means: average across treatment and across non-treatment
- Attribute substitution: swap hard questions for easy one
  - "How does \<action> affect \<unit>" to "Do \<unit> with \<action> have \<outcome>"
- Random assignment: manipulating environment to uncover causal relationship
  - Characteristics similar between control and treatment group
  - Verified using balancing test
- Issues with experiments: bias eliminated with random sampling but presence of researchers can
  affect outcome
  - Hawthorne effects: where subjects react to being observed
  - John Henry effects: where subjects react to being in the control group
  - Experiment not internally valid
- Average treatment effect: quantifies impact of treatment for a population
  - Randomized experiment tells us average treatment effect
  - Meaningful only if treatment effect is relatively stable
- Stable Unit Treatment Value Assumption (SUTVA): basic assumption of causal effect stability
  - Potential outcomes of unit i do not depend on the treatments received by other units
  - Violated when
    - Treatment effect differs when more individuals are assigned to it (more individuals should
      not affect the final outcome)
    - Treatment changes the outcomes of the untreated (those who receive treatment affect those
      who don't)
- Natural experiment: real life events resemble randomized experiments
  - Policy interventions (e.g. change in tax rate)
  - Rules and laws (e.g. legal minimum drinking age)
  - Historical episodes (e.g. colonization)
  - Natural events (e.g. rainfall)
  - Contains observable variation in treatment that are random under plausible assumption (quasi)

### Chapter 1 Checklist

1. How to define a causal effect based on the potential outcomes framework?

   The difference between outcome if treated and outcome if not treated.

2. How do experiments with random assignment uncover the causal effect?

   Random assignment ensures that characteristics are similar between the control and treatment
   groups. As a result, any variation in behavior can be attributed to the causal effect.

3. What are the limitations of experiments?

   Hawthorne and John Henry effect, causing the experiment to not be internally valid

4. What is the Stable Unit Treatment Value Assumption and why we need it?

   It is the basic assumption of causal effect stability where it ensures that the potential
   outcome of a unit does not depend on the treatment received by other units

5. What is the essential feature of a natural experiment?

   Should contain observable variation in treatment that are random under plausible assumption.

## Chapter 2: Statistics Basics

- Dummy variables: binary variables
- Continuous variables: includes magnitude
- Scatter plot: visualize causal link between two variables
  - Every dot is an observation
  - More useful for continuous treatment
    - Observes the average values of outcome and how wide spread the values are
- Descriptive evidence: observing the difference in outcome associated with treatment
  - Measured using difference-in-means (care about treatment status) or change in outcome associated with unit of change in treatment (care about treatment intensity)
- Population: complete set of all units of interest to an investigator
  - Population size can be very large
- Sample: observed subset of the population
  - Good sample: representative of population and large enough to be confident about findings
  - Use random selection
  - Large sample size does not guarantee representativeness
- Sample mean: samples from $i=1,\ldots, n$ and each value is $Y_i$

$$\bar{Y} = \frac{1}{n} \sum_{i=1}^{n}Y_{i}$$

- Population (parameter) mean: expectation of variable $Y_i$ ($E[Y_i]$)
  - If $Y_i$ is random, then $E[Y_i]$ is its mean in the population
  - Often unknown, must estimate
- Law of Large Numbers (LLN): with smaller samples, $\bar{Y}$ is never exactly $$E[Y_i]$$ but as sample size gets larger, it approaches the expected value
- Sample statistic/estimator: sample of $\bar{Y}$, approximating population expectation
  - Unbiased if $E[\bar{Y}] = E[Y_i]$ given very large number of samples of any size (average of all samples)
- Sample variance: dispersion of $\bar{Y}$ across repeated samples
  - Best if small, i.e. similar estimates for every sample
  - Depends on variability of data and sample size
  - Very large samples have $\bar{Y}$ as a constant equal to $E[Y_i]$ so 0 sample variance

$$V(\bar{Y})=\frac{\sigma^2_Y}{n}$$

- Standard error: variance of sample mean through standard deviation
  - $\sigma_Y$ is not known so substitute with $$S(Y_i)$$ or the standard deviation of sample

$$SE(\bar{Y}) = \sqrt{V(\bar{Y})} = \frac{\sigma_Y}{\sqrt{n}}$$

- Conditional expectation: expectation outcome of $Y_i$ given condition
- Testing equality of means (t-statistic): consistency between conditional expectations
  - $SE(\bar{Y_1} - \bar{Y_0})$ decreases with sample size
  - t-statistic will (almost) have a standard normal distribution (according to Central Limit Theorem)

$$\frac{\bar{Y_1} - \bar{Y_0}}{SE(\bar{Y_1} - \bar{Y_0})} = \frac{\bar{Y_1} - \bar{Y_0}}{S(Y_i)\sqrt{\frac{1}{n_1} + \frac{1}{n_0}}}$$

- Statistical significance: large t-statistic can reject the null hypothesis (chance to occur is small); p-value < significance
  - Fail to reject null hypothesis != accept null hypothesis (i.e. no evidence in support, but there is evidence to reject)
- Sample size neglect: smaller samples have larger variance
  - Trust the results of larger samples over smaller samples
- Small sample fallacy: small samples demonstrate both outcomes because extreme values skew result
- Sampling bias: some members of a population are systematically more likely to be selected in a sample than others (self-selecting or assigned)
  - Sample is not representative of population
  - E.g. survivorship bias
- Measurement quality: noise is having the points scattered while bias is having points clustered somewhere else
  - Noise cancels out when computing means for outcome but noise in treatment can bias observed relationship between treatment and outcome (i.e. measurement error bias)

![Noise vs Bias](resources/noise_vs_bias.png)

### Chapter 2 Checklist

1. How to define the population and what constitutes a good sample for a specific causal question?

   A good population contains all units of interest and a good sample is a large enough subset of the population that is representative of the population and sufficiently large for findings to be generalizable

2. How to construct descriptive evidence for a cause and effect of interest?

   Constructed using difference-in-means or change in outcome per unit time and should be generated from randomized sampling

3. What kind of sample gives sampling bias?

   Samples that are too small or only contain a certain group of the population

4. What is the problem with a small sample?

   Sample size neglect where smaller samples have larger variances and small sample fallacy where a small sample demonstrates both potential outcomes

5. What is the problem with noisy measurements?

   Noise in outcome is negligible in larger sample sizes as they cancel out, however, noise in treatment can cause bias in the observed relationship between treatment and outcome

## Questions to clarify

- For SUTVA, in the case of "How does a longer education affect someone's income?", would valid
  assumptions be like "A person's income is not affected by other people receiving the same length
  of education as themselves" and "The income of a person with longer education should not affect
  the income of someone with less education"
- In chapter 2, blood pressure example, is the new outcome difference 18? That implies that the observed effect is weaker than the actual effect
