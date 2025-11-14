# Pre-PAW Discussion Points

## Data conflict

The data conflict between length and weight comps is likely to cause convergence
issues.

The data conflict might not be primarily between length and weights, but rather
data conflict between the equatorial vs. subtropical regions. The length comps
come from the equatorial region, while the weight comps cover both regions.

Converting weights to lengths may not solve any problems.

Possible benefits of converting weights to lengths:

1. We may have the raw weight data in finer resolution than the MFCL input
   format. Therefore, we can do a better job converting the weights to lengths
   outside the model than MFCL can do inside the model.

2. If we see regional variability in the length-weight relationship, we can take
   that into account when we convert weights to lengths outside the model,
   whereas MFCL only supports one length-weight relationship for all regions.

3. If we see decadal variability in the length-weight relationship, we can take
   that into account when we convert weights to lengths outside the model,
   whereas MFCL only supports one length-weight relationship for the entire
   assessment period from 1950 to 2024.

4. MFCL does not support unequal bin widths like SS3 does. Weight comps are
   slightly more useful when using software that supports unequal bin widths.

## Spatially varying growth

It seems likely that growth varibes between regions. However, we may not have
the data to know, and the current assessment software (MULTIFAN-CL) does not
have this feature.

## Regional structure

Tag mixing can be a concern when the regional structure is simplified. It was
reassuring in the YFT 2023 assessment that the overall results did not
drastically change the estimated stock status and trends.

## Same index longline selectivity between regions

By assuming that the index longline catchability is the same in all regions, we
get information about the relative population size between regions. It's a
strong assumption that prevents the model from unrealistic distribution of the
stock biomass. When we assume the same catchability between regions, we also
assume that the selectivity is the same between regions.

## Lorenzen linking of growth and natural mortality

In the SKJ 2025 assessment, the tagging data indicated much higher M for younger
fish and older fish. Because of the Lorenzen linking, this resulted in a steep
growth curve. The growth curve seems to have been largely influenced by the
tagging data and not necessarily in agreement with the otolith or length
composotion data.

## Age-specific movement

Age-specific (ontogenetic) movement could be explored.
