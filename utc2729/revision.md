# Revision

## Chapter 1: Causal Inference

- Prediction vs Causation: prediction asks, "what will happen", causation asks, "what are the
  effects of a cause (intervention)"
- Causal questions: counterfactual ("could have been") prediction questions
- Causal effect: difference between outcome if treated ($Y_1$) and outcome if not treated ($Y_0$)
  - Phrasing: difference between actual \<unit> and current \<unit> if more/less \<action>
        was applied
- Potential outcomes framework: causality is tied to an "action" applied to a "unit"
  - "action": treatment/manipulation/intervention (binary)
  - "unit": person/firm/country (continuous)
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

### Checklist

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

## Questions to clarify

- For SUTVA, in the case of "How does a longer education affect someone's income?", would valid
  assumptions be like "A person's income is not affected by other people receiving the same length
  of education as themselves" and "The income of a person with longer education should not affect
  the income of someone with less education"