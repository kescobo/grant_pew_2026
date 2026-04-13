The infant gut microbiome undergoes dramatic, coordinated succession in the first two years of life,
and disruptions to this process have been linked to neurodevelopmental, immune, and metabolic outcomes
that persist into childhood and beyond.
My recent work
@fahurbottinoEarlyLifeMicrobial2025
demonstrated that microbial succession follows conserved universal patterns across diverse geographic
and socioeconomic settings —
patterns consistent enough that microbial composition alone predicts infant age to within 2–3 months.
Separately, analyses of the ECHO-Resonance (n=224, Boston) and Khula (n=427, Cape Town) cohorts
showed that specific microbial species and their neuroactive gene products in the first six months of life
predict cognitive function scores,
brain morphology by MRI,
and visual neural circuit maturation by EEG.
Together, these findings establish a normative backdrop for infant gut development
and document its functional consequences —
but they cannot tell us _why_ particular infants deviate from expected trajectories,
or what those deviations mean for health.

The #underline[_critical gap_]
is the absence of validated computational frameworks
for modeling individual microbiome developmental trajectories.
Existing normative models describe population-level trends
but cannot quantify whether a given infant's trajectory is on track
or how the magnitude and timing of deviations relate to clinical outcomes.
Standard statistical approaches fail at this task as well.
Infant microbiome data exhibit rapid non-linear temporal dynamics,
age-dependent variance,
compositional constraints,
and irregular sampling that violate the assumptions of linear models.
Without tools that properly capture individual-level trajectories with calibrated uncertainty,
microbiome studies remain underpowered to separate meaningful developmental signals from noise.

My #underline[_long-term goal_]
is to understand how colonization conditions, host responses, diet, and environmental exposures
shape early microbiome succession —
and how deviations from normative development produce lasting effects on child health.
The #underline[_overall objective_] of this proposal
is to build validated probabilistic modeling frameworks for individual microbiome trajectory analysis
and deploy them in clinically meaningful contexts.
The #underline[_central hypothesis_],
grounded in the conserved succession patterns documented across 12 countries,
is that principled probabilistic models will reveal individualized trajectory features —
timing of key microbial transitions,
magnitude of deviation from normative succession,
"microbiome age" relative to chronological age —
that associate with neurodevelopmental outcomes
and predict complications in high-risk clinical populations.
To test this hypothesis, I will pursue two #underline[_specific aims_]:

*Aim 1: Build and validate probabilistic models of individual infant gut microbiome developmental trajectories.*
Using existing shotgun metagenomic data from >2,500 infants across 10 global cohorts,
I will develop models that jointly capture population-level succession and individual-specific deviations,
providing calibrated uncertainty estimates for each infant's trajectory.
Models will be validated on held-out cohort data and benchmarked against standard approaches.
Trajectory features derived from these models —
microbiome age delta, transition timing, deviation magnitude —
will be tested for association with neurodevelopmental outcomes (Bayley-III, EEG)
in the ECHO-Resonance and Khula cohorts,
and packaged in a documented open-source library
accessible to clinical researchers without specific programming expertise.
#underline[_Expected outcome:_]
a validated normative trajectory model with demonstrated sensitivity advantages
over existing methods for detecting microbiome–development associations,
and a community software resource that multiplies the scientific return on already-collected cohorts.

*Aim 2: Apply trajectory models to clinical scenarios where microbiome disruption has documented but poorly-quantified effects.*
Leveraging the individual-deviation framework from Aim 1,
I will investigate microbiome trajectory disruption in three contexts
where clinical stakes are high and existing data are available:
preterm birth,
neonatal abstinence syndrome,
and early-life PFAS exposure.
For each,
I will quantify which trajectory features are disrupted,
when disruption occurs,
and whether trajectory-derived measures predict clinical outcomes
beyond standard covariates.
_Expected outcome:_
effect-size estimates and validated predictive models
sufficient to power future interventional studies
targeting microbiome normalization in high-risk infants.

Completion of this work will produce both a scientific resource —
normative trajectory models grounded in global, diverse population data —
and a methodological one,
enabling routine individual-level microbiome developmental analysis
across the clinical research community.
