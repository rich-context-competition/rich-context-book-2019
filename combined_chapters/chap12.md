# Chapter 12 - Standard Test Corpora

## Standardized Metadata, Full Text and Training/Evaluation for Extraction Models

\

[**Standardized Metadata & Full Text \[Sebastian\]**]{.s1}

\

Key challenges when working on an NLP task like dataset mention
extraction that requires access to scholarly literature include the
proliferation of metadata sources and sourcing of full text content. For
example, each metadata source has their own approach for disambiguation
(e.g. recognizing that A. Smith and Anna Smith are the same author) or
de-duplication of content (clustering pre-prints and final versions into
a single record). As a result competition organizers and NLP researchers
currently use ad-hoc processes to identify metadata and full text
sources for their specific tasks which results in inconsistencies and a
lack of versioning of input data across competitions and projects.

\

One way these challenges can be addressed is by using a trustworthy
metadata source like [[Semantic Scholar’s open
corpus]{.s2}](http://api.semanticscholar.org/corpus/) developed by the
Allen Institute for Artificial Intelligence (AI2) or [[Microsoft’s
Academic
Graph]{.s2}](https://docs.microsoft.com/en-us/academic-services/graph/reference-data-schema)
that make it easy to access standardized metadata from an openly
accessible source. In addition, both Semantic Scholar and the Microsoft
Academic Graph provide topics associated with papers which makes it easy
to narrow down papers by domain. If full text is needed we recommend
tying the metadata to a source of open access full text content like
[[Unpaywall]{.s2}](https://unpaywall.org/data-format) to ensure that the
full text can be freely redistributed and leveraged for model
development.

\

To gather the data we recommend collecting a sufficiently large set of
full text papers (3,000-5,000 minimum) with their associated metadata
and providing participants with a standardized format of the full text.
More data might be required if data is split across many scientific
domains. For example for a task like dataset extraction, reference
formatting is often inconsistent across domains and dataset mentions can
potentially be found in different sections (e.g. background, methods,
discussion, conclusion or the reference list) throughout the text. Once
a decision has been made on the full text to include, the PDF content
can be easily converted into text in a standardized format using a PDF
to text parser like [[AI2’s
ScienceParse]{.s2}](https://github.com/allenai/spv2) (which handles key
tasks like metadata, section heading and references
extraction).

\

Once the metadata and full text dataset has been created it can be
easily versioned and used again in future competitions. For example, if
updated metadata is needed it’s easy to go back to the original metadata
source (for example by using Semantic Scholar’s
[[API]{.s2}](http://api.semanticscholar.org/)) to get the latest
metadata.

\

[**Annotation Protocols to Produce Training & Evaluation Data
\[Alex\]**]{.s1}

A common approach to machine learning known as **supervised learning**
uses labelled, or annotated, data to train a model what to look for. If
labelled data is not readily available, human annotators are frequently
used to label, or code, a corpus of representative document samples as
input into such a model. Different labelling tasks may require different
levels of subject domain knowledge or expertise. For example, coding a
document for different parts of speech (POS) will require a different
level of knowledge than coding a document for mentions of upregulation
of genes. The simpler the labelling task, the easier it will be for the
coders to complete the task, and the more likely the annotations will be
consistent across multiple coders.For
example, a task to identify a *mention of a dataset* in a document might
be far easier than the task of identifying only the*mentions of*
*datasets that were used in the analysis phase of
research*.

\

In order to scale the work of labelling, it is usually desirable to
distribute the work amongst many people. Generic crowdsourcing platforms
such as Amazon’s Mechanical Turk can be used in some labelling
exercises, as can more tailored services from companies such as TagWorks
and Figure-Eight. Whether the labelling is done by one person or
thousands, the consistency and quality of the annotations needs to be
considered. We would like to build up a sufficiently large collection of
these annotations and we want to ensure that they are of a high quality.
How much data needs to be annotated depends on the task, but in general,
the more labelled data that can be generated the more robust the model
will be.

\

As mentioned above, we recommend 3000-5000 papers, but this begs the
question of how diverse the subject domains are within this corpus.
If the papers are all within from the finance
sector, then a resulting model might do well in identifying datasets in
finance, but less well in the biomedical domain since the model was not
trained on biomedical papers. Conversely, if our 3000-5000 papers are
evenly distributed across all domains, our model might be more
generically applicable, but might do less well over all since it did not
contain enough individual domain-specific examples.  
\
As a result, we recommend labelling 3000-5000 papers within a domain,
but we plan to do so in a consistent manner across domains so that the
annotations can be aggregated together. In this manner, as papers in new
domains are annotated, our models can be re-trained to expand into new
domains. In order to achieve this, we intend to publish an open
annotation protocol and output format that can be used by the community
to create additional labelled datasets.



Another factor in deciding the quantity is the fact that the annotations
will be used for two discrete purposes. The first is to *train* a
machine learning model. This data will inform the model what dataset
mentions look like, from which it will extract a set of features that
the model will use and attempt to replicate. The second use of the
annotations is to *evaluate* the model.How
well a model performs against some content that it has never seen
before. In order to achieve this, labelled data are typically split
randomly into training and evaluation subsets.




One way to evaluate how well your model performs is to measure the
**recall** and **precision** of the model’s output, and in order to do
this we can compare the output to the labelled evaluation subset. In
other words, how well does our model perform against the human
annotations that it was not trained on and has never seen. Recall is the
percentage of right answers the model returned. For example, if the
evaluation dataset contained 1000 mentions of a dataset, and the trained
model returned 800 of them, then the recall value would be .80.
But what if the model returned everything as a
dataset, then it would get all 1000, plus a whole bunch of wrong
answers. Obviously, the precision of the model is important too.
Precision is the percentage of answers returned that were right. So,
continuing the example above, if the model returned 888 answers, and 800
of those were right, then the precision of the model would be \~.90.
But again, if the model returned only one right
answer and no wrong ones, the precision would be perfect. So, it is
important to measure both precision and recall.
In summary, the model in this example, got 80%
of the right answers, and 90% of the answers it returned were right. The
two measures of recall and precision can be combined into an F1 score of
  ~.847.  
\
If we then make modifications to our model, we can re-run it against the
evaluation dataset and see how our F1 score changes. If the score goes
up, then our new model performed better against this evaluation data. If
we want to compare several different models to see which one performed
best, we can calculate an F1 score for each of them. The one with the
highest F1 score has performed the best. Consequently, the quality of
the annotations are critical for two reasons: first, the accuracy of a
*model* will only be as good as the data upon which it was trained. And
secondly, the accuracy of the *evaluation* (in this case the F1 score)
can be affected by the quality of the data it is evaluated against.
 

\

\
