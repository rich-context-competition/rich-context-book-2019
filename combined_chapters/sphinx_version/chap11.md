
---

# Chapter 11 - Finding datasets in publications: The University of Syracuse approach

---
author:
- Tong Zeng$^{1,2}$ and Daniel Acuna$^{1}$[^1]
bibliography:
- 'rcc-06.bib'
subtitle: |
    Dataset mention extraction in scientific articles using a BiLSTM-CRF
    model
title: 'Finding datasets in publications: The Syracuse University approach'

$^{1}$School of Information Studies, Syracuse University, Syracuse,
USA\\
$^{2}$School of Information Management, Nanjing University, Nanjing,
China

---


Abstract
========

Datasets are critical for scientific research, playing a role in
replication, reproducibility, and efficiency. Researchers have recently
shown that datasets are becoming more important for science to function
properly, even serving as artifacts of study themselves. However, citing
datasets is not a common or standard practice in spite of recent efforts
by data repositories and funding agencies. This greatly affects our
ability to track their usage and importance. A potential solution to
this problem is to automatically extract dataset mentions from
scientific articles. In this work, we propose to achieve such extraction
by using a neural network based on a BiLSTM-CRF architecture. Our method
achieves $F_{1}=0.885$ in social science articles released as part of
the Rich Context Dataset. We discuss future improvements to the model
and applications beyond social sciences.


Introduction
============

Science is fundamentally an incremental discipline that depends on
previous scientist's work. Datasets form an integral part of this
process and therefore should be shared and cited as any other scientific
output. This ideal is far from reality: the credit that datasets
currently receive does not correspond to their actual usage[@datarank].
One of the issues is that there is no standard for citing datasets, and
even if they are cited, they are not properly tracked by major
scientific indices. Interestingly, while datasets are still used and
mentioned in articles, we lack methods to extract such mentions and
properly reconstruct dataset citations. The Rich Context Competition
challenge aims at closing this gap by inviting scientists to produce
automated dataset mention and linkage detection algorithms. In this
article, we detail our proposal to solve the dataset mention step. Our
approach attempts to provide a first approximation to better give credit
and keep track of datasets and their usage.

The problem of dataset extraction has been explored before.
@ghavimiIdentifyingImprovingDataset2016 and
@ghavimiSemiautomaticApproachDetecting2017 use a relatively simple
tf-idf representation with cosine similarity for matching dataset
identification in social science articles. Their method consists of four
major steps: preparing a curated dictionary of typical mention phrases,
detecting dataset references, and ranking matching datasets based on
cosine similarity of tf-idf representations. This approach achieved a
relatively high performance, with $F_{1}=0.84$ for mention detection and
$F_{1}=0.83$, for matching. @singhalDataExtractMining2013 proposed a
method using normalized Google distance to screen whether a term is in a
dataset. However, this method relies on external services and is not
computational efficient. They achieve a good $F_{1}=0.85$ using Google
search and $F_{1}=0.75$ using Bing. A somewhat similar project was
proposed by @luDatasetSearchEngine2012. They built a dataset search
engine by solving the two challenges: identification of the dataset and
association to a URL. They build a dataset of 1000 documents with their
URLs, containing 8922 words or abbreviations representing datasets. They
also build a web-based interface. This shows the importance of dataset
mention extraction and how several groups have tried to tackle the
problem.

In this article, we describe a method for extracting dataset mentions
based on a deep recurrent neural network. In particular, we used a
Bidirectional Long short-term Memory (BiLSTM) sequence to sequence model
paired with a Conditional Random Field (CRF) inference mechanism. The
architecture is similar to chapter 6, but we only focus on the detection
of dataset mentions. We tested our model on a novel dataset produced for
the Rich Context Competition challenge. We achieve a relatively good
performance of $F_{1}=0.885$. We discuss the limitations of our model.

The dataset
===========

The Rich Context Dataset challenge was proposed by the New York
University's Coleridge Initiative [@richtextcompetition]. The challenge
comprised several phases, and participants moved through the phases
depending on their performance. We only analyze data of the first phase.
This phase contained a list of datasets and a labeled corpus of around
5K publications. Each publication was labeled indicating whether a
dataset was mentioned within it and which part of the text mentioned it.
The challenge used the accuracy for measuring the performance of the
competitors and also the quality of the code, documentation, and
efficiency.


We adopt the CoNLL 2003 format [@tjong2003introduction] to annotate
whether a token is a part of dataset mention. Concretely, we use the tag
DS denotes a dataset mention; The B- prefix indicates that the token is
the beginning of a dataset mention, the I- prefix indicates the token is
inside of dataset mention, and O denotes a token that is not a part of
dataset mention. We put each token and its tag (separated by horizontal
tab control character) in one line, and use the end of line (\\n)
control character as separator between sentences (see Table 2.1). The dataset were randomly split by
70%, 15%, 15% for training set, validation set and testing set,
respectively.

 Table 2.1. Example of a sentence annotated by IOB
  tagging format.

  |   Token    |  Annotation |
  |----------|-----------|
  |    This    |     O       |
  |    ...     |    ...      |
  |    data    |      O      |
  |    from    |      O      |
  |    the     |      O      |
  | Monitoring |     B-DS    |
  |   the      |    I-DS     |
  |   Future   |     I-DS    |
  |    (       |      O      |
  |    MTF     |     B-DS    |
  |     )      |      O      |
  |   \\n      |             |



The Proposed Method
===================

Overall view of the architecture
--------------------------------

In this section, we propose a model for detecting mentions based on a
BiLSTM-CRF architecture. At a high level, the model uses a
sequence-to-sequence recurrent neural network that produces the
probability of whether a token belongs to a dataset mention. The CRF
layer takes those probabilities and estimates the most likely sequence
based on constrains between label transitions (e.g.,
mention--to--no-mention--to-mention has low probability). While this is
a standard architecture for modeling sequence labeling, the application
to our particular dataset and problem is new.

We now describe in more detail the choices of word representation,
hyper-parameters, and training parameters. A schematic view of the model
is in Figure 3.1 and the components are as follows:

1.  Character encoder layer: treat a token as a sequence of characters
    and encode the characters by using a bidirectional LSTM to get a
    vector representation.

2.  Word embedding layer: mapping each token into fixed sized vector
    representation by using a pre-trained word vector.

3.  BiLSTM layer: make use of Bidirectional LSTM network to capture the
    high level representation of the whole token sequence input.

4.  Dense layer: project the output of the previous layer to a low
    dimensional vector representation of the the distribution of labels.

5.  CRF layer: find the most likely sequence of labels.

![Figure 3.1. Network Architecture of BiLSTM-CRF network](combined_images/Figure2.1.pdf){width="80%"}

Figure 3.1. Network Architecture of BiLSTM-CRF network

Character encoder
-----------------

Similar to the bag of words assumption, a word could be composed of
characters sampled from a bag of characters. Previous research
[@santos2014learning; @jozefowicz2016exploring] has shown that the use
of character-level embedding could benefit multiple NLP-related tasks.
In order to use character-level information, we break down a word into a
sequence of characters, then build a vocabulary of characters. We
initialize the character embedding weights using the vocabulary size of
a pre-defined embedding dimension, then update the weights during the
training process to get the fixed-size character embedding. Next, we
feed a sequence of the character embedding into an encoder (a
bidirectional LSTM network) to produce a vector representation of a
word. By using a character encoder, we can solve the out-of-vocabulary
problem for pre-trained word embedding, as every word could be composed
of characters.

Word Embedding
--------------

The word embedding layer is responsible for storing and retrieving the
vector representation of words. Concretely, the word embedding layer
contains a word embedding matrix $M^{tkn}\in\mathbb{R}^{|V|d}$, where
the $V$ is the vocabulary of the tokens and the $d$ is the size of the
embedding vector. The embedding matrix was initialized by a pre-trained
GloVe vectors [@pennington2014glove], and updated by learning from the
data. In order to retrieve from the embedding matrix, we first convert a
given sentence into a sequence of tokens, then for each token we lookup
the embedding matrix to get its vector representation. Finally, we get a
sequence of vectors as input for the encoder layer.

LSTM
----

The Recurrent Neural Network (RNN) is a type of artificial neural
network which takes the output of previous step as input of the current
step recurrently. This recurrent nature allows it to learn from
sequential data, for example, the text which consists of a sequence of
works. RNN could capture contextual information in variable-length
sequences in theory but it suffers from gradient exploding/vanishing
problems [@pascanu2013difficulty]. The Long Short-Term Memory (LSTM)
architecture was proposed by @hochreiter1997long to cope with these
gradient problems. Similar to standard RNN, the LSTM network also has a
repeating module called LSTM cell. The cell remembers information over
arbitrary time steps because it allows information to flow along it
without change. The cell state is regulated by a forget gate and an
input gate which control the proportion of information to forget from a
previous time step and to remember for a next time step. Also, there is
a output gate controlling the information to flow out of the cell. The
LSTM could be defined formally by the following equations:

$$i_{t}=\sigma(W_{i}x_{t}+W_{i}h_{t-1}+b_{i})$$

$$f_{t}=\sigma(W_{f}x_{t}+W_{f}h_{t-1}+b_{f})$$

$$g_{t}=tanh(W_{g}x_{t}+W_{g}h_{t-1}+b_{g})$$

$$o_{t}=\sigma(W_{o}x_{t}+W_{o}h_{t-1}+b_{o})$$

$$c_{t}=f_{t}\bigotimes c_{t-1}+i_{t}\bigotimes g_{t}$$

$$h_{t}=o_{t}\bigotimes tanh(c_{t})$$

where $x_{t}$ is the input at time
$t$, $W$ is the weights, $b$ is the bias. The $\sigma$ is the sigmoid
function, $\bigotimes$ denotes the dot product, $c_{t}$ is the LSTM cell
state at time $t$ and $h_{t}$ is hidden state at time $t$. The $i_{t}$,
$f_{t}$, $o_{t}$ and $g_{t}$ are named as input, forget, output and cell
gates respectively.

LSTM can learn from the previous steps, which is the left context if we
feed the sequence from left to right. However, the information in the
right context is also important for some tasks. The bidirectional LSTM
[@graves2013speech] satisfies this information need by using two LSTMs.
Concretely, one LSTM layer was fed by a forward sequence and the other
by a backward sequence. The final hidden states of each LSTM were
concatenated to model the left and right contexts

$$h_{t}=[\overrightarrow{h_{t}}\varoplus\overleftarrow{h_{t}}]$$

Finally, the outcomes of the states are taken by a Conditional Random
Field (CRF) layer that takes into account the transition nature of the
beginning, intermediate, and ends of mentions. For a reference of CRF,
refer to [@lafferty2001conditional]

Results
=======

In this work, we wanted to propose a model for the Rich Context
Competition challenge. We propose a relatively standard architecture
based on a BiLSTM-CRF recurrent neural network. We now describe the
evaluation metrics, hyper-parameter setting, and the results of this
network on the dataset provided by the competition.

For all of our results, we use $F_{1}$ as the measure of performance.
This measure is the harmonic average of the precision and recall and it
is the standard measure used in sequence labeling tasks. This metric
varies from 0 to 1, the higher the better. Our method achieved a
relatively high $F_{1}$ of 0.885 for detecting mentions.

Table 4.1. Model search space and best assignments

| Hyper-parameter              | Search space             | Best parameter |
|------------------------------|--------------------------|----------------|
| number of epochs             | 50                       | 50             |
| patience                     | 10                       | 10             |
| batch size                   | 64                       | 64             |
| pre-trained word vector size | choice[50, 100, 200,300] | 100            |
| encoder hidden size          | 300                      | 300            |
| number of encoder layers     | 2                        | 2              |
| dropout rate                 | choice[0.0,0.5]          | 0.5            |
| learning rate optimizer      | adam                     | adam           |
| l2 regularizer               | 0.01                     | 0.01           |
| learning rate                | 0.001                    | 0.001          |



We train models using the training data and monitor the performance
using the validation data (we stop training if the performance does not
improve for the last 10 epochs). We are using the Adam optimizer with
learning rate of 0.001 and batch size equal to 64. The hidden size of
LSTM for character and word embedding is 80 and 300, respectively. For
the regularization methods, and to avoid over-fitting, we use L2
regularization set to 0.01 and we also use dropout rate equal to 0.5. We
trained 8 models with a combination of different GloVe vector size (50,
100, 300 and 300) and dropout rate (0.0, 0.5). The hyper-parameter
settings are present in Table 4.1.

Table 4.2. Performance of proposed network

| Models | GloVe size | Dropout rate | Precision | Recall | F1    |
|--------|------------|--------------|-----------|--------|-------|
| m1     | 50         | 0.0          | 0.884     | 0.873  | 0.878 |
| m2     | 50         | 0.5          | 0.877     | 0.888  | 0.882 |
| m3     | 100        | 0.0          | 0.882     | 0.871  | 0.876 |
| m4     | 100        | 0.5          | 0.885     | 0.885  | 0.885 |
| m5     | 200        | 0.0          | 0.882     | 0.884  | 0.883 |
| m6     | 200        | 0.5          | 0.885     | 0.880  | 0.882 |
| m7     | 300        | 0.0          | 0.868     | 0.886  | 0.877 |
| m8     | 300        | 0.5          | 0.876     | 0.878  | 0.877 |


The test performances are reported in Table 4.2. The best model is trained by
word vector size 100 and dropout rate 0.5 with $F_{1}$ score 0.885
(Table 4.2), and it takes 15 hours 58
minutes for the training on an NVIDIA GTX 1080 Ti GPU in a computer with
an Intel Xeon E5-1650v4 3.6 GHz CPU with 128 GB of RAM.

We also found some limitations to the dataset. Firstly, we found that
mentions are nested (e.g. HRS, RAND HRS, RAND HRS DATA are linked to the
same dataset). The second issue most of the mentions have ambiguous
relationships to datasets. In particular, only 17,267 (16.99%) mentions
are linked to one dataset, 15,292 (15.04%) mentions are listed to two
datasets, and 12,624 (12.42%) are linked to three datasets. If these
difficulties are not overcome, then the predictions from the linkage
process will be noisy and therefore impossible to tell apart.

Conclusion
==========

In this work, we report a high accuracy model for the problem of
detecting dataset mentions. Because our method is based on a standard
BiLSTM-CRF architecture, we expect that updating our model with recent
developments in neural networks would only benefit our results. We also
provide some evidence of how difficult we believe the linkage step of
the challenge could be if the dataset noise are not lowered.

One of the shortcomings of our approach is that the architecture is
lacking some modern features of RNN networks. In particular, recent work
has shown that attention mechanisms are important especially when the
task requires spatially distant information, such as this one. These
benefits could also translate to better linkage. We are exploring new
architectures using self-attention and multiple-head attention. We hope
to explore these approaches in the near future.

There are number of improvements that we can make in the future. A first
improvement is to use non-recurrent neural architectures such as the
Transformer which has shown to be faster and a more effective learner
compared to recurrent neural networks. Another improvement would be to
bootstrap information from other dataset sources such as open access
full-text articles from PubMed Open Access Subset. This dataset contains
dataset *citations* [@datarank]---in contrast to the most common types
of citations to publications. The location of this citations within the
full-text could be exploited to perform entity recognition. While this
would be a somewhat different problem than the one solved in this
article, it would still be useful for the goal of tracking dataset
usage. In sum, by improving the learning techniques and the dataset size
and quality, we could significantly increase the success of finding
datasets in publications.

Our proposal, however, is surprisingly effective. Because we have barely
modified a general RNN architecture, we expect that our results will
generalize relatively well either to the second phase of the challenge
or even to other disciplines. We would emphasize, however, that the
quality of the dataset has a great deal of room for improvement. Given
how important this task is for the whole of science, we should try to
strive to improve the quality of these datasets so that techniques like
this one can be more broadly applied. The importance of dataset mention
and linkage therefore could be fully appreciated by the community.

Acknowledgements {#acknowledgements .unnumbered .unnumbered}
================

Tong Zeng was funded by the China Scholarship Council \#201706190067.
Daniel E. Acuna was funded by the National Science Foundation awards
\#1646763 and \#1800956.

\bibliographystyle{apalike}

[^1]: Corresponding author: deacuna\@syr.edu
