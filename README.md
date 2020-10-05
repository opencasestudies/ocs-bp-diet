<!-- README.md is generated from README.Rmd. Please edit that file -->
OpenCaseStudies
===============

### Disclaimer

The purpose of the [Open Case Studies](https://www.opencasestudies.org)
project is **to demonstrate the use of various data science methods,
tools, and software in the context of messy, real-world data**. A given
case study does not cover all aspects of the research process, is not
claiming to be the most appropriate way to analyze a given dataset, and
should not be used in the context of making policy decisions without
external consultation from scientific experts.

### License

This case study is part of the
[OpenCaseStudies](https://www.opencasestudies.org) project. This work is
licensed under the Creative Commons Attribution-NonCommercial 3.0 ([CC
BY-NC 3.0](https://www.opencasestudies.org/ocs-bp-diet/)) United States
License.

### Citation

To cite this case study:

Wright, Carrie, and Jager, Leah and Taub, Margaret and Hicks, Stephanie.
(2020).
<a href="https://www.opencasestudies.org/ocs-bp-diet/" class="uri">https://www.opencasestudies.org/ocs-bp-diet/</a>.
Exploring global patterns of dietary behaviors associated with health
risk (Version v1.0.0).

### Acknowledgements

We would like to acknowledge [Jessica
Fanzo](https://bioethics.jhu.edu/people/profile/jessica-fanzo/) for
assisting in framing the major direction of the case study.

We would also like to acknowledge the [Bloomberg American Health
Initiative](https://americanhealth.jhu.edu/) for funding this work.

### Title

Exploring global patterns of dietary behaviors associated with health
risk

### Motivation

According to this
[artuce](https://www.thelancet.com/action/showPdf?pii=S0140-6736%2819%2930041-8)
that evaluated food consumtpion patterns in 185 countries for 15 dietary
risk factors with probable assocations with non-communicable disease:

> High intake of sodium …, low intake of whole grains …, and low intake
> of fruits … were the leading dietary risk factors for deaths and DALYs
> globally and in many countries.”

In this case study we evaluate the data used in this artcle to explore
regional, age, and gender specific differences in dietary consumption
patterns around the world in 2017. We particularly focus on dietary
consumption patterns within the United States (US) and how these compare
to other that of other countries.

### Motivating questions

<b><u> Our main questions: </u></b>

1.  What are the global trends for potentially harmful diets?  
2.  How do males and females compare?  
3.  How do different age groups compare for these dietary factors?  
4.  How do different countries compare? In particular, how does the US
    compare to other countries in terms of diet trends?

### Data

In this case study we will be using data that we requested form the
[Global Burden of Disease (GBD)](http://www.healthdata.org/gbd) about
consumption of dietary factors associated with health risks.

We will also be using data from a PDF of an article about the optimal
consumption guidelines for these dietary factors.

Their methods for identifying and authenticating incidents are outlined
[here](https://www.chds.us/ssdb/methods/).

Previously according to their website:

*“The database compiles information from more than 25 different sources
including peer-reviewed studies, government reports, mainstream media,
non-profits, private websites, blogs, and crowd-sourced lists that have
been analyzed, filtered, deconflicted, and cross-referenced. **All of
the information is based on open-source information and 3rd party
reporting… and may include reporting errors.**”*

#### Learning Objectives

The skills, methods, and concepts that students will be familiar with by
the end of this case study are:

Data science skills:

1.  Importing/extracting data from PDF (`dplyr`, `stringr`)  
2.  Combining data from two sources (`dplyr`)
3.  How to reshape data by pivoting between “long” and “wide” formats
    (`tidyr`)  
4.  Peform functions on all columns of a tibble (`purrr`)
5.  Separate data within a column into multiple colums (`tidyr`)
6.  Make interactive plots (`ggiraph`)
7.  Make a zoom facet for plot (`ggforce`)
8.  Combine plots together (`cowplot`)

Statistical concepts and methods:

1.  Understanding of how the *t*-test and the ANOVA are specialized
    regressions
2.  Basic understanding of the utility of a regression analysis
3.  How to implement a linear regression analysis in R
4.  How to intepret regression coefficients
5.  Awareness of *t*-test assumptions
6.  Awareness of linear regression assumptions
7.  How to use Q-Q plots to check for normality
8.  Difference between fixed effects and random effects
9.  How to perform paired *t*-test
10. How to perform a linear mixed effects regression

#### Data import

In this case study we demonstrate how to import data from a csv and from
a PDF.

#### Data wrangling

This case study also covers many of the `stringr` functions to
manipulate character strings, including `str_split()`, `str_subset()`,
`str_replace()`, `str_replace_all()`, `str_which()`, `str_count()`,
`str_remove_all()`, and `str_trim()`.

This case study also cpvers how to use the `tidyr` functions such as
`pivot_wider()` and `pivot_longer()` for reshaping data and the
`separate()` function for creating new columns from an exisiting column.
In addition, the case study covers how to replace `NA` values with a
specific value using the `replace_na()` function.

This case study also goes over how to use many of the `dplyr` functions
to modify, select and filter data, such as: `rename()`, `mutate()`,
`arrange()`, `select()` and `filter()` as well as functions to compare
data like the `setequal()`, `all_equal()`, and `setdiff()` functions, as
well as similar functions to look for overlapping similarities like the
`intersect()` function. The case study describes the differences of
these functions. We also introudce how to recode data using the
`if_else()` and `case_when()` functions and how to join data using the
`full_join()` function.

We also cover how to use the `purrr` package `map()` function to apply
the same function to multiple columns in a tibble.

#### Data Visualization

In this case study we show how to make faceted plots, as well as plots
with a facet that is zoomed in using the `facet_zoom()` function of the
`ggforce` package. We cover how to specifically higlight specific data
points, as well as how to add annotations and horizontal lines to make
the plot more interpretable.

We also demonstrate how to make interactive plots where the data points
link you to other websites using the `ggiraph` package. Finally, we
demonstrate how to combine plots using the `cowplot` package.

We also cover how to use the `viridis` package to make plots that are
more interpretable for those who are colorblind.

### Analysis

This case study has a particularly thurough analysis section, which
describes many ways of added complexity to examine the data. We decribe
how the *t*-test and the ANOVA are actually specialized forms of the
regression analysis.

We provide an introduction to regression analysis.

We also describe paired data and how to interpret this using both a
paired *t*-test and a linear model with fixed effects or a linear model
with mixed effets. We also describe the difference between random and
fixed effects.

See [this other case
study](https://opencasestudies.github.io/ocs-bp-rural-and-urban-obesity/)
for more introductory material about comparing groups, hypothesis
testing, probability, distributions, normality, paired data, and the
paired *t*-test.

### Other notes and resources

<a href="https://rstudio.com/products/rstudio/features/" target="_blank">RStudio</a>  
<a href="https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf" target="_blank">Cheatsheet on RStuido IDE</a>  
<a href="https://rstudio.com/resources/cheatsheets/" target="_blank">Other RStudio cheatsheets</a>  
[RStudio projects](https://r4ds.had.co.nz/workflow-projects.html)

<a href="https://www.tidyverse.org/" target="_blank">Tidyverse</a>

<a href="https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html" target="_blank">Piping in R</a>

<a href="https://rstudio.com/resources/cheatsheets/" target="_blank">String manipulation cheatsheet</a>  
<a href="https://en.wikipedia.org/wiki/Wide_and_narrow_data" target="_blank">Table formats</a>

### Helpful Links

<u>Terms and concepts covered:</u>

<a href="https://www.shorttutorials.com/mac-os-special-characters-shortcuts/middle-dot.html" target="_blank">Interpunct</a>  
<a href="https://www.r-bloggers.com/regular-expressions-every-r-programmer-should-know/" target="_blank">Regular expressions</a>  
<a href="https://www.britannica.com/science/inference-statistics" target="_blank">Inference</a>  
<a href="https://lindeloev.github.io/tests-as-linear/" target="_blank">Regression</a>  
<a href="https://www.analyticsvidhya.com/blog/2015/08/comprehensive-guide-regression/" target="_blank">Different types of regression</a>  
<a href="http://setosa.io/ev/ordinary-least-squares-regression/" target="_blank">Ordinary least squares method</a>  
<a href="https://www.statisticshowto.datasciencecentral.com/residual/" target="_blank">Residual</a>  
<a href="https://stattrek.com/statistics/dictionary.aspx?definition=two-sample%20$t$-test" target="_blank"><span class="math inline"><em>t</em></span>-tests</a>  
<a href="http://onlinestatbook.com/2/analysis_of_variance/intro.html" target="_blank">ANOVA</a>  
<a href="https://scientificallysound.org/2017/06/08/$t$-test-as-linear-models-r/" target="_blank"><span class="math inline"><em>t</em></span>-tests and ANOVA are equivalent to regression</a>
also see
<a href="https://towardsdatascience.com/everything-is-just-a-regression-5a3bf22c459c" target="_blank">here</a>
and
<a href="https://lindeloev.github.io/tests-as-linear/" target="_blank">here</a>
about how many commonly known statistical tests are specialized forms of
regression  
<a href="https://www.physiology.org/doi/full/10.1152/advan.00064.2017" target="_blank">Normally Distribution</a>  
<a href="http://onlinestatbook.com/2/advanced_graphs/q-q_plots.html" target="_blank">Q-Q plot</a>  
[Guide to residual diagnostic
plots](https://data.library.virginia.edu/diagnostic-plots/) and
<a href="http://docs.statwing.com/interpreting-residual-plots-to-improve-your-regression/" target="_blank">Examples</a>  
<a href="https://online.stat.psu.edu/stat462/node/118/" target="_blank">Residual vs fitted plot</a>  
<a href="https://boostedml.com/2019/03/linear-regression-plots-scale-location-plot.html" target="_blank">Scale-location plot</a>  
<a href="https://www.statisticssolutions.com/homoscedasticity/" target="_blank">Homoscedasticity</a>  
<a href="https://statisticsbyjim.com/regression/heteroscedasticity-regression/" target="_blank">Heteroscedasticity</a>  
<a href="https://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R" target="_blank">Interpreting <code>lm()</code> output</a>  
<a href="https://www.theanalysisfactor.com/interpreting-regression-coefficients/" target="_blank">Coefficients</a>  
<a href="https://ourcodingclub.github.io/tutorials/mixed-models/" target="_blank">Linear mixed effects regression</a>  
<a href="https://www.statisticshowto.datasciencecentral.com/satterthwaite-formula/" target="_blank">Satterthwaite formula</a>  
<a href="https://files.eric.ed.gov/fulltext/ED065559.pdf" target="_blank">Mood’s Two-Sample Scale Test</a>  
<a href="https://www.statsdirect.com/help/basic_descriptive_statistics/standard_deviation.htm" target="_blank">Standard deviation</a>  
<a href="https://uc-r.github.io/assumptions_homogeneity" target="_blank">Homogeneity of Variances assumption</a>  
<a href="https://en.wikipedia.org/wiki/Polyunsaturated_fat" target="_blank">polyunsaturated fatty acids</a>

<u>Tests of Homogeneity of Variance for 3 or more groups:</u>

<a href="https://www.itl.nist.gov/div898/handbook/eda/section3/eda357.htm" target="_blank">Bartlett’s test</a>  
<a href="http://wiki.stat.ucla.edu/socr/index.php/AP_Statistics_Curriculum_2007_NonParam_VarIndep" target="_blank">Fligner-Killeen</a>  
<a href="https://www.itl.nist.gov/div898/handbook/eda/section3/eda35a.htm" target="_blank">Levene’s test</a>

<u>Other helpful links:</u>

<a href="https://opencasestudies.github.io/ocs-healthexpenditure/ocs-healthexpenditure.html" target="_blank">Long and Wide Data Formats</a>  
<a href="http://onlinestatbook.com/2/introduction/distributions.html" target="_blank">Distributions</a>
<a href="http://onlinestatbook.com/2/glossary/skew.html" target="_blank">Skewed Distributions</a>
<a href="http://onlinestatbook.com/2/introduction/distributions.html" target="_blank">Bimodal Distribution</a>
<a href="https://opencasestudies.github.io/ocs-healthexpenditure/ocs-healthexpenditure.html" target="_blank">ggplot2</a>  
<a href="http://www.statistics4u.info/fundstat_eng/ee_shapiro_wilk_test.html" target="_blank">Shapiro-Wilk Test</a>  
<a href="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5579465/" target="_blank">Paired Data</a>  
<a href="https://www.statisticshowto.datasciencecentral.com/welchs-test-for-unequal-variances/" target="_blank">Welch’s <span class="math inline"><em>t</em></span>-test</a>  
<a href="https://www.mayo.edu/research/documents/parametric-and-nonparametric-demystifying-the-terms/doc-20408960" target="_blank">Parametric and Nonparametric Methods</a>  
<a href="https://stattrek.com/statistics/dictionary.aspx?definition=variance" target="_blank">Variance</a>  
<a href="https://www.statisticshowto.datasciencecentral.com/balanced-and-unbalanced-designs/" target="_blank">Balanced Study Design</a>  
<a href="https://www.stat.cmu.edu/~cshalizi/36-220/lecture-5.pdf" target="_blank">Independent Observations</a>  
<a href="https://www.statisticshowto.datasciencecentral.com/transformation-statistics/" target="_blank">Transformation</a>  
<a href="https://jhu-advdatasci.github.io/2019/lectures/21-resampling-techniques.html" target="_blank">Permutation/Resampling Methods</a>  
<a href="https://www.analyticsvidhya.com/blog/2019/05/statistics-101-introduction-central-limit-theorem/" target="_blank">Central Limit Theorem</a>
[Wilcoxon Signed Rank
Test](http://www.biostathandbook.com/wilcoxonsignedrank.html)  
<a href="http://sphweb.bumc.bu.edu/otlt/mph-modules/bs/bs704_nonparametric/BS704_Nonparametric4.html" target="_blank">Wilcoxon Rank Sum Test</a>  
<a href="https://www.itl.nist.gov/div898/software/dataplot/refman1/auxillar/ks2samp.htm" target="_blank">Two-sample Kolmogorov-Smirnov Test</a>  
<a href="https://web.ma.utexas.edu/users/mks/statmistakes/errortypes.html" target="_blank">Type 1 Error</a>  
<a href="https://towardsdatascience.com/p-values-explained-by-data-scientist-f40a746cfc8" target="_blank">p-value</a>  
<a href="https://www.gs.washington.edu/academics/courses/akey/56008/lecture/lecture10.pdf" target="_blank">Multiple Testing</a>  
<a href="http://mathworld.wolfram.com/BonferroniCorrection.html" target="_blank">Bonferroni Method of Multiple Testing Correction</a>

<u>Packages used in this case study: </u>

<table>
<colgroup>
<col style="width: 43%" />
<col style="width: 56%" />
</colgroup>
<thead>
<tr class="header">
<th>Package</th>
<th>Use</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="https://github.com/jennybc/here_here" target="_blank">here</a></td>
<td>to easily load and save data</td>
</tr>
<tr class="even">
<td><a href="https://readr.tidyverse.org/" target="_blank">readr</a></td>
<td>to import the CSV file data</td>
</tr>
<tr class="odd">
<td><a href="https://dplyr.tidyverse.org/" target="_blank">dplyr</a></td>
<td>to arrange/filter/select/compare specific subsets of the data</td>
</tr>
<tr class="even">
<td><a href="https://cran.r-project.org/web/packages/skimr/index.html" target="_blank">skimr</a></td>
<td>to get an overview of data</td>
</tr>
<tr class="odd">
<td><a href="https://cran.r-project.org/web/packages/skimr/index.html" target="_blank">summarytools</a></td>
<td>to get an overview of data in a different style</td>
</tr>
<tr class="even">
<td><a href="https://cran.r-project.org/web/packages/pdftools/pdftools.pdf" target="_blank">pdftools</a></td>
<td>to read a PDF into R</td>
</tr>
<tr class="odd">
<td><a href="https://stringr.tidyverse.org/articles/stringr.html" target="_blank">stringr</a></td>
<td>to manipulate the text within the PDF of the data</td>
</tr>
<tr class="even">
<td><a href="https://magrittr.tidyverse.org/articles/magrittr.html" target="_blank">magrittr</a></td>
<td>to use the <code>%&lt;&gt;%</code> pipping operator</td>
</tr>
<tr class="odd">
<td><a href="https://purrr.tidyverse.org/" target="_blank">purrr</a></td>
<td>to perform functions on all columns of a tibble</td>
</tr>
<tr class="even">
<td><a href="https://tibble.tidyverse.org/" target="_blank">tibble</a></td>
<td>to create data objects that we can manipulate with dplyr/stringr/tidyr/purrr</td>
</tr>
<tr class="odd">
<td><a href="https://tidyr.tidyverse.org/" target="_blank">tidyr</a></td>
<td>to separate data within a column into multiple columns</td>
</tr>
<tr class="even">
<td><a href="https://ggplot2.tidyverse.org/" target="_blank">ggplot2</a></td>
<td>to make visualizations with multiple layers</td>
</tr>
<tr class="odd">
<td><a href="https://cran.r-project.org/web/packages/ggpubr/index.html" target="_blank">ggpubr</a></td>
<td>to easily add regression line equations to plots</td>
</tr>
<tr class="even">
<td><a href="https://forcats.tidyverse.org/" target="_blank">forcats</a></td>
<td>to change details about factors (categorical variables)</td>
</tr>
<tr class="odd">
<td><a href="https://cran.r-project.org/web/packages/lmerTest/lmerTest.pdf">lmerTest</a></td>
<td>to perform linear mixed model testing</td>
</tr>
<tr class="even">
<td><a href="https://cran.r-project.org/web/packages/car/car.pdf">car</a></td>
<td>to perform Levene’s Test of Homogeneity of Variances</td>
</tr>
<tr class="odd">
<td><a href="https://cran.r-project.org/web/packages/ggiraph/index.html">ggiraph</a></td>
<td>to make plots interactive</td>
</tr>
<tr class="even">
<td><a href="https://cran.r-project.org/web/packages/ggforce/ggforce.pdf">ggforce</a></td>
<td>to modify facets in plots</td>
</tr>
<tr class="odd">
<td><a href="https://cran.r-project.org/web/packages/viridis/vignettes/intro-to-viridis.html">viridis</a></td>
<td>to plot in color palette</td>
</tr>
<tr class="even">
<td><a href="https://cran.r-project.org/web/packages/cowplot/vignettes/introduction.html" target="_blank">cowplot</a></td>
<td>to allow plots to be combined</td>
</tr>
</tbody>
</table>

#### For users

There is a [`Makefile`](Makefile) in this folder that allows you to type
`make` to knit the case study contained in the `index.Rmd` to
`index.html` and it will also knit the [`README.Rmd`](README.Rmd) to a
markdown file (`README.md`).

Users can skip the Data Import and Data Wrangling sections to start with
the Data Analysis and Visualization section if they wish.

#### For instructors

Instructors who only wish to demonstrate the basics of how to create a
dashboard with `flexdashboard` can simply use the `Dashboard Basics`
section, this would likely only take one or two class sessions to cover.

Instructors can skip the Data Import and Data Wrangling sections to
start with the Data Analysis section if they wish.

#### Target audience

This case study is appropriate for those new to R programming. It is
also appropriate for more advanced R users who are new to the Tidyverse.
This particular case study may require some introductory knowlege of R
programming.

#### Suggested homework

Students can evaluate consumption estimates of another dietary factor
besides red meat.
