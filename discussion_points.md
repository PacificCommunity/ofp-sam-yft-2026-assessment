The overarching objectives for the 2026 assessment were to develop a model with
good convergence properties, to simplify the model as much as possible, and to
incorporate innovations recommended by experts, including the Scientific
Committee.

1. Model convergence and the search for a positive definite Hessian (PDH)

- This was known to be a considerable challenge, based on the experience from
  the yellowfin 2023 assessment. The diagnostic model in that assessment had a
  PDH, but only 17\% of the grid models. There was no guarantee that the 2026
  assessment model could achieve a PDH.

- Early in the stepwise development of the current assessment, after adding
  three years of new data, the model no longer achieved a PDH. This continued to
  be the case for every subsequent stepwise change until at the very end, after
  a determined search across a variety of model configuration options, a PDH
  model was found. From the full set of 120 ensemble models, 35\% had a PDH,
  which increased to 88\% after filtering the ensemble based on gradients and
  negative eigenvalues.

2. Simplifying the model as much as possible

- At the start of the assessment work, the fisheries definitions were revisited.
  The 2023 assessment adopted a simplified regional structure near the end of
  the model development, but the fisheries definitions remained unchanged. With
  fewer regions, it was clear that some fisheries could be combined, especially
  fisheries that use the same gear in the same region.

- An attempt was made by the stock assessor of the yellowfin assessment this
  year to combine many fisheries. For example, to absorb some of the smaller
  fisheries that have negligible annual catches, and also to combine fisheries
  that use different gears but have similar length composition. A series of
  proposals were evaluated by domain experts with detailed knowledge of the
  fisheries and the sampling process, and the final conclusion was that it would
  not be advisable to go very far in combining different fisheries. Some
  fisheries were in fact split into separate fisheries in this year's assessment
  work, to distinguish between the fisheries of Indonesia, Philippines, and
  Vietnam that used to be combined. In the end, the total number of extraction
  fisheries changed from 32 to 31 between the assessments.

- Near the end of the stepwise model development, as the search for a PDH model
  was becoming more urgent, the feature of orthogonal polynomial recruitment
  (OPR) was found to be the only way to produce a PDH model for the yellowfin
  assessment. Some of the negative eigenvalues of stepwise models were related
  to specific recruitment in a given region, year, and quarter, where there is
  little data to guide the model estimation of such specific recruitment events.
  These negative eigenvalues are a model artifact coming from the estimation of
  too many parameters where there is too little information. OPR is a very
  substantial simplification of the model in terms of estimated parameters, as
  this change in the stepwise development caused the number of parameters to
  decrease from 1963 to only 452 parameters. OPR is a polynomial smoother that
  requires the modeller to explore and specify different degrees of smoothing
  over years, seasons, and regions, while keeping an eye on and penalizing
  unusual recruitment predictions near the end of the time series. In other
  words, OPR can be seen as a simplification in terms of parameter estimation,
  but a slightly increased level of complexity for the stock assessment work.

3. Innovations recommended by experts, including the Scientific Committee

- Converting all weight composition data to length was a structural change that
  is likely to yield several benefits in the long term. Among other things, it
  facilitates the analysis of data conflict, comparing fisheries using the same
  currency, and tracking progress of reducing data conflict. Using only length
  composition data can also lead to simple and streamlined design and
  implementation of the next-generation tuna assessment software.

- Regional scaling was a highly deterministic factor in previous assessments,
  where the CPUE indices effectively dictated how the population biomass was
  divided between regions. In the current assessment, this approach is replaced
  with a multivariate normal prior that gives the model more freedom regarding
  the distribution of biomass between the regions.

- Effort creep has been a discussion point for the Scientific Committee in the
  past, and there is a wide consensus that the level of effort creep should be
  modelled as greater than zero. At this year's Pre-Assessment Workshop, a
  decision was made on how technological effort creep should be implemented in
  the yellowfin assessment. The incorporation of this new feature is an
  improvement that should result in a more accurate estimation of historical
  stock trends, relevant for the sustainable management of the fishery.

--------------------------------------------------------------------------------

# Future recommendations

1. Data conflict

- The intention of the yellowfin stock assessor for this year's analysis was to
  address the data conflict between different likelihood components in greater
  detail than in the previous assessment. Due to a continuous stream of other
  issues and challenges in this year's assessment work, the analysis of data
  conflict had to be put aside, but it remains an important aspect to analyze
  further. It appears that the various structural changes introduced in the
  current assessment may have reduced the data conflict to some degree, but
  future work is required to quantify and analyze the data conflict between
  different fisheries and perhaps apply expert judgement to reduce the level of
  data conflict between specific fisheries.

- In some cases, it might be as simple as being one fishery disagreeing with
  many fisheries, within the same region. In such cases, one might choose to put
  more faith on the many fisheries that are independently sampled and are in
  agreement, while downweighting the fishery that is at odds with the rest. One
  might conclude that there is empirical evidence that something is off in the
  sampling, data processing, and analytical assumptions for that particular
  fishery, making it less reliable about informing about population trends.

- In other cases, it might be one fishery in disagreement with another fishery
  in the same region. In such cases, it is sometimes known that fishery A has a
  much better sampling coverage and is more likely to represent the underlying
  population trends than fishery B.

2. Regional aspects of the assessment

- With the new regional scaling approach, it would be worthwhile to track the
  regional distribution of biomass and compare the estimated proportion of
  biomass in each region. The comparison could focus on the current assessment
  and the previous assessment, and also on stepwise models to evaluate whether
  the new regional scaling approach appears to give sensible estimates, how much
  the estimated proportions vary from the prior, and how stable are the
  estimated proportions, e.g., between different stepwise models.

- The previous assessment simplified the regional structure from 9 to 5 regions,
  but SC discussions have reflected an interest in possible further
  simplifications. One option could be a single-region model with fleets as
  areas. This year, single-region models were developed both for yellowfin and
  bigeye. This analysis could be followed up and taken further, both
  analytically and as an important discussion at the interface between science
  and management. Another option that has been mentioned in the past would be to
  consider excluding the higher latitudes, which may cause model estimation
  difficulties and where less than 5\% of the yellowfin catch comes from.

- Analyses of alternative regional structures are best conducted outside of the
  main assessment season. The ongoing design and development of next-generation
  tuna assessment software has committed some time and focus on this topic. It
  remains an open question that has an important effect both from the standpoint
  of statistical estimation and for the management of tuna resources across
  widely differing regions.

3. Growth and natural mortality

- The hard linking between the Lorenzen natural mortality curve and the growth
  curve may be a concern. For example, the estimated value of the L1 parameter,
  the length at the youngest age of 1 quarter, in the diagnostic model is
  relatively low compared to the observed lengths at age 1 in the otolith data.
  The likelihood component that benefits from this low value of L1 is the
  tagging data, because this low value of M produces a steep Lorenzen natural
  mortality curve that enables the model to fit the tagging data better.
  Overall, the estimation of L1 seems somewhat unreliable, as its estimated
  value was observed to change substantially between stepwise models in this
  year's assessment.

4. Tag modeling options

- This year's bigeye and yellowfin assessment work made it clear that different
  tag modeling options are an important issue as a source of model instability,
  sensitivity, local minima, and interactions between the various different
  model settings related to tags. Some tag related modeling issues were
  clarified and resolved this year, but many issues remain unclear and are
  highly influential for the estimated stock status.

- Work is already underway to analyze tagging data externally, in a fine scale
  spatio-temporal model, and there is interest in designing the next-generation
  tuna assessment software with this pathway in mind. The external tagging
  analysis produces abundance indices, a simple data type that any assessment
  model can easily incorporate. At this point, it's not clear whether and how
  the complexities and decision points encountered in the current pathway of
  analyzing the tags will be carried over into the external tagging analysis.

- If tagging data will be analyzed externally in future tuna assessments, it may
  provide several important benefits. For assessment software development, it
  should reduce cost and time for development and maintenance. For statistical
  estimation, simple abundance indices should reduce the tension between growth,
  M, and tags described above. For organizational purposes, it decouples the
  tagging analysis work from the stock assessment work, a combination that
  became quite complex and intractable in this year's assessments, causing
  substantial delays. If the external tagging analysis is conducted and
  completed before the main assessment work, it could make the overall process
  more efficient and reliable.

- Overall, the above list of tag modeling options and issues might be best
  addressed with a dedicated workshop. Currently, the MULTIFAN-CL specific
  questions, caveats, and workarounds seem quite separate from the ongoing DTU
  development of the external tagging analysis. A tagging workshop could
  consolidate the discussion and make sure that the current stock assessment
  modeling challenges related to tags are acknowledged and addressed in some
  manner in the upcoming external tagging analysis.
