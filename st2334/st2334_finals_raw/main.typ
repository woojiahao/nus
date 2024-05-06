#set page(flipped: false, margin: 7pt)
#show: columns.with(3, gutter: 4pt)
#set text(
  font: "New Computer Modern Sans",
  size: 8pt
)

#show par: set block(spacing: 5pt)
#set par(leading: 3pt)
#set list(tight: true)
#set block(spacing: 0.5em)

#align(center)[
  #box(inset: 10pt, stroke: black, [
      = ST2334 Finals Cheatsheet
      by: #link("https://nus.woojiahao.com")[#underline("Jiahao")]
  ])
]

#show heading.where(level: 1): it => [
  #set text(9pt, weight: "bold")
  #block([#underline(smallcaps(it.body))])
  // #block(smallcaps(it.body))
]

#show heading.where(level: 2): it => [
  #set text(9pt, weight: "bold")
  // #block([#underline(smallcaps(it.body))])
  #block(smallcaps(it.body))
]

#show image: it => [
  #align(center, it)
]

#show table: it => [
  #align(center, it)
]


= definitions <definitions>
#strong[sample space ($S$):] set of all possible outcomes

- aka #emph[sure event]

#strong[sample point:] outcome in sample space, $p in S$

#strong[event:] subset of sample space, $E subset.eq S$

- no elements: #emph[null event], $nothing$

= event operations & relationships <event-operations-relationships>
\* Applicable to $n$ events

#strong[union:] $A union B = { x : x in A or x in B }$

#strong[intersection:] $A sect B = { x : x in A and x in B }$

#strong[complement:] $A prime = { x : x in S and x in.not A }$

#strong[mutually exclusive:] $A sect B = nothing$

#strong[contained:] $A subset B$

#strong[equivalent:] $A subset B and B subset A arrow.r.double A = B$

#strong[others:]

- $A sect A prime = nothing$

- $A sect nothing = nothing$

- $A union A prime = S$

- $lr((A prime)) prime = A$

- $A union lr((B sect C)) = lr((A union B)) sect lr((A union C))$

- $A sect lr((B union C)) = lr((A sect B)) union lr((A sect C))$

- $A union B = A union lr((B sect A prime))$

- $A = lr((A sect B)) union lr((A sect B prime))$

- $lr((A_1 union A_2 union dots.h union A_n)) prime = A_1 prime sect A_2 prime sect dots.h sect A_n prime$

- $lr((A_1 sect A_2 sect dots.h sect A_n)) prime = A_1 prime union A_2 prime union dots.h union A_n prime$

= counting methods <counting-methods>
#strong[multiplication principle:] $r$ different experiments performed sequentially, producing $n_1 times n_2 times dots.h times n_r$ outcomes

#strong[addition principle:] $r$ different procedures performed sequentially, producing $n_1 + n_2 + dots.h + n_r$ ways (non-overlapping) to perform an experiment

#strong[permutation:] selection and arrangement of $r$ objects out of $n$ where order matters (i.e. ${ a , b } eq.not { b , a }$)

$ P_r^n = n P r = frac(n !, lr((n - r)) !) = n lr((n - 1)) lr((n - 2)) dots.h lr((n - lr((r - 1)))) $

#strong[combination:] selection of $r$ objects out of $n$ where order does not matter

$ C_r^n = n C r = binom(n, r) = binom(n, n - r) = frac(n !, r ! lr((n - r)) !) $

= probability <probability>
$P lr((dot.op))$ is a function on the collection fo events of the sample space $S$ satisfying:

- axiom 1. For any event $A$, $0 lt.eq P lr((A)) lt.eq 1$

- axiom 2. For the sample space, $P lr((S)) = 1$

- axiom 3. For any two mutually exclusive events $A$ and $B$, $A sect B = nothing$ and $P lr((A union B)) = P lr((A)) + P lr((B))$

#strong[properties:]

- $P lr((nothing)) = 0$

- if $A_1 , A_2 , dots.h , A_n$ are mutually exclusive events, then $P lr((A_1 union A_2 union dots.h union A_n)) = P lr((A_1)) + P lr((A_2)) + dots.h + P lr((A_n))$

- $P lr((A prime)) = 1 - P lr((A))$

- $P lr((A)) = P lr((A sect B)) + P lr((A sect B prime))$

- #strong[inclusion-exclusion principle:] $P lr((A union B)) = P lr((A)) + P lr((B)) - P lr((A sect B))$

- $A subset B arrow.r.double P lr((A)) lt.eq P lr((B))$

#strong[finite sample space with equally likely outcomes:] $S = { a_1 , a_2 , dots.h , a_k }$ and all outcomes are equally likely, so any event occurring is where $A subset S$

$ P lr((A)) = lr(|A|) / lr(|S|) $

#strong[probability of repeated event:] if the outcome is always the same, then $P lr((K)) = P lr((A))^n$

= conditional probability <conditional-probability>
for any two events $A$ and $B$ with $P lr((A)) > 0$, the conditional probability of $B$ given that $A$ has occurred is

$ P lr((B \| A)) = frac(P lr((A sect B)), P lr((A))) $

since $A$ has occurred, $A$ becomes the reduced sample space

#strong[multiplication rule:] $P lr((A sect B)) = P lr((A)) P lr((B \| A))$ if $P lr((A)) eq.not 0$

#strong[inverse probability formula:] $P lr((A \| B)) = frac(P lr((A)) P lr((B \| A)), P lr((B)))$

= independence <independence>
events are independent ($A tack.t B$) iff $P lr((A sect B)) = P lr((A)) P lr((B))$

$ P lr((A)) eq.not 0 arrow.r.double P lr((A \| B)) = P lr((A)) $

$ P lr((B)) eq.not 0 arrow.r.double P lr((B \| A)) = P lr((B)) $

#strong[intuition:] $A$ and $B$ if the knowledge of $A$ does not change the probability of $B$

#strong[independence vs mutually exclusive:]

- $P lr((A)) > 0 and P lr((B)) > 0 , A tack.t B arrow.r.double upright("not mutually exclusive")$

- $P lr((A)) > 0 and P lr((B)) > 0 , A , B upright(" not mutually exclusive") arrow.r.double A ⊥̸ B$

- $S$ and $nothing$ are independent of any other event

- $A tack.t B arrow.r.double A tack.t B prime , A prime tack.t B , A prime tack.t B prime$

= total probability <total-probability>
#strong[partition:] if $A_1 , A_2 , dots.h , A_n$ are mutually exclusive events and $union.big_(i = 1)^n A_i = S$, then $A_1 , A_2 , dots.h , A_n$ is a partition of $S$ (i.e. how to split the sample space up into parts)

#strong[law of total probability:] given a partition of $S$, for any even $B$,

$ P lr((B)) = sum_(i = 1)^n P lr((B sect A_i)) = sum_(i = 1)^n P lr((A_i)) P lr((B \| A_i)) $

applied to single event $A$ and $B$:

$ P lr((B)) = P lr((A)) P lr((B \| A)) + P lr((A prime)) P lr((B \| A prime)) $

= bayes’ theorem <bayes-theorem>
give a partition of $S$, then for any event $B$ and $k = 1 , 2 , dots.h , n$,

$ P lr((A_k \| B)) = frac(
  P lr((A_k)) P lr((B \| A_k)),
  sum_(i = 1)^n P lr((A_i)) P lr((B \| A_k)),

) $

Applied to single event $A$ and $B$:

$ P lr((A \| B)) = frac(
  P lr((A)) P lr((B \| A)),
  P lr((A)) P lr((B \| A)) + P lr((A prime)) P lr((B \| A prime)),

) $

= random variables <random-variables>
a function $X$ which assigns a real number to every $s in S$ (mapping of values from sample space to some value representing a property of that value in the sample space)

$ X : S arrow.r.bar bb(R) $

#strong[range space:] set of real numbers produced by random variable $X$

$ R_X = { x \| x = X lr((s)) , s in S } $

#strong[notations:]

- ${ X = x } = { s in S : X lr((s)) = x } subset S$

- ${ X in A } = { s in S : X lr((s)) in A } subset S$

- $P lr((X = x)) = P lr(({ s in S : X lr((s)) = x }))$

- $P lr((X in A)) = P lr(({ s in S : X lr((s)) in A }))$

#strong[describing random variables:] (1) range of inputs to outputs, (2) constructing a table/formula

= probability distribution <probability-distribution>
#strong[probability distribution:] $lr((x_i , f lr((x_i))))$ where $f lr((x))$ is the probability function

== discrete random variables <discrete-random-variables>
number of values in $R_X$ is finite or countable

#strong[probability mass function:] for a discrete random variable $X$, the probability (mass) function is:

$ f lr((x)) = {P lr((X = x)) , x in R_X\
0 , x in.not R_X $

#strong[properties:] $f lr((x))$ must satisfy the following

- $f lr((x_i)) gt.eq 0 forall x_i in R_X$ (all fractional and $lt.eq 1$)

- $f lr((x)) = 0 forall x in.not R_X$

- $sum_(i = 1)^oo f lr((x_i)) = sum_(x_i in R_X) f lr((x_i)) = 1$

#strong[extension:] for any set $B subset bb(R)$,

$ P lr((X in B)) = sum_(x_i in B sect R_X) f lr((x_i)) $

== continuous random variables <continuous-random-variables>
$R_X$ is an interval or collection of intervals

#strong[probability density function:] quantifies probability that $X$ is in a certain range

#strong[properties:] $f lr((x))$ must satisfy the following

- $f lr((x)) gt.eq 0 forall x in R_X$

- $f lr((x)) = 0 forall x in.not R_X$

- $integral_(- oo)^oo f lr((x)) d x = integral_(R_X) f lr((x)) d x = 1$

#strong[extension 1:] given that $a lt.eq b$,

$ P lr((a lt.eq X lt.eq b)) & \
= P lr((a lt.eq X < b))\
= P lr((a < X lt.eq b))\
= P lr((a < X < b))\
= integral_a^b f lr((x)) d x $

#strong[extension 2:]

$ P lr((X = x)) = 0 $

= cumulative distribution function <cumulative-distribution-function>
probability distribution over a range (both discrete and continuous)

$ F lr((x)) = P lr((X lt.eq x)) $

#strong[properties:]

- $F lr((x))$ is always non-decreasing

- ranges of $F lr((x))$ and $f lr((x))$ satisfy

  - $0 lt.eq F lr((x)) lt.eq 1$

  - for discrete distributions, $0 lt.eq f lr((x)) lt.eq 1$

  - for continuous distributions, $f lr((x)) gt.eq 0$ but #emph[not necessary] that $f lr((x)) lt.eq 1$

== discrete random variables <discrete-random-variables-1>
$ F lr((x)) & = sum_(t in R_X ; t lt.eq x) f lr((t))\
          & = sum_(t in R_X ; t lt.eq x) P lr((X = t)) $

CDF is a step function and can be represented as such (note that probability is cumulated to reach 1):

$ F lr((x)) = {0 , x < 0\
1 \/ 4 , 0 lt.eq x < 1\
3 \/ 4 , 1 lt.eq x < 2\
1 , 2 lt.eq x $

for any two numbers $a < b$,

$ P lr((a lt.eq X lt.eq b)) = P lr((X lt.eq b)) - P lr((X < a)) = F lr((b)) - F lr((a -)) $

$F lr((a -))$ is the largest value in $R_X$ that is smaller than $a$

== continuous random variable <continuous-random-variable>
$ F lr((x)) = integral_(- oo)^x f lr((t)) d t $

$ f lr((x)) = frac(d F lr((x)), d x) $

for any two numbers $a < b$,

$ P lr((a lt.eq X lt.eq b)) = P lr((a < X < b)) = F lr((b)) - F lr((a)) $

note that if there are multiple functions per interval and $a , b$ run across multiple intervals, separately integrate each interval with the functions for each interval

= expectation <expectation>
expectation, also known as mean, of random variable is the average value of $X$ after repeating the experiment many times. This value may not be a possible value of $X$.

#strong[discrete random variable:]

$ mu_X = E lr((X)) = sum_(x_i in R_X) x_i f lr((x_i)) $

#strong[continuous random variable:]

$ E lr((X)) = integral_(- oo)^oo x f lr((x)) d x = integral_(x in R_X) x f lr((x)) d x $

#strong[properties:]

- $E lr((a X + b)) = a E lr((X)) + b$

- $E lr((X + Y)) = E lr((X)) + E lr((Y))$

- let $g lr((dot.op))$ be an arbitrary function,

  $ E lr((g lr((X)))) = sum_(x in R_X) g lr((x)) f lr((x)) $ or $ E lr((g lr((X)))) = integral_(R_X) g lr((x)) f lr((x)) d x $

= variance <variance>
calculates the deviation of $X$ from its mean (expectation)

$ sigma_X^2 = V lr((X)) = E lr((X - mu_X))^2 = E lr((X^2)) - E lr((X))^2 $

applicable regardless of discrete/continuous random variable.

$ V lr((X)) = sum_(x in R_X) lr((x - mu_X))^2 f lr((x)) $

or

$ V lr((X)) = integral_(- oo)^oo lr((x - mu_X))^2 f lr((x)) d x $

#strong[properties:]

- $V lr((X)) gt.eq 0$ if $P lr((X = E lr((X)))) = 1$ where $X$ is a constant

- $V lr((a X + b)) = a^2 V lr((X))$

- standard deviation of $X$: $sigma_X = sqrt(V lr((X)))$

= joint distributions <joint-distributions>
$lr((X , Y))$ is a two-dimensional random vector/random variable

#strong[range space:] $R_(X , Y) = { lr((x , y)) \| x = X lr((s)) , y = Y lr((s)) , s in S }$ (effectively looking at all pairs of $lr((x , y))$; generalizable to $n$ dimensions)

#strong[discrete two-dimensional random variable:] number of possible values of $lr((X lr((s)) , Y lr((s))))$ is finite or countable (both $X$ and $Y$ are discrete)

#strong[continuous two-dimensional random variable:] number of possible values of $lr((X lr((s)) , Y lr((s))))$ can assume any value in some region of the Euclidean space $bb(R)^2$ (both $X$ and $Y$ are continuous)

= joint probability function <joint-probability-function>
== discrete joint probability function <discrete-joint-probability-function>
$ f_(X , Y) lr((x , y)) = P lr((X = x , Y = y)) $

#strong[properties:]

- $f_(X , Y) lr((x , y)) gt.eq 0 forall lr((x , y)) in R_(X , Y)$

- $f_(X , Y) lr((x , y)) = 0 forall lr((x , y)) in.not R_(X , Y)$

- $sum_(i = 1)^oo sum_(j = 1)^oo f_(X , Y) lr((x_i , y_j)) = sum_(i = 1)^oo sum_(j = 1)^oo P lr((X = x_i , Y = y_j)) = 1$

- above is the same as $sum sum_(lr((x , y)) in R_(X , Y)) f lr((x , y)) = 1$

let $A subset R_(X , Y)$,

$ P lr((lr((X , Y)) in A)) = sum sum_(lr((x , y)) in A) f_(X , Y) lr((x , y)) $

== continuous joint probability function <continuous-joint-probability-function>
$   & P lr((lr((X , Y)) in D))\
  & = P lr((a lt.eq X lt.eq b , c lt.eq Y lt.eq d))\
  & = integral_a^b integral_c^d f_(X , Y) lr((x , y)) d y d x $

\*the order of integration does not matter

#strong[properties:]

- $f_(X , Y) lr((x , y)) gt.eq 0 forall lr((x , y)) in R_(X , Y)$

- $f_(X , Y) lr((x , y)) = 0 forall lr((x , y)) in.not R_(X , Y)$

- $integral integral_(lr((x , y)) in R_(X , Y)) f_(X , Y) lr((x , y)) d x d y = 1$

\*focus of this module is ranges where $x$ and $y$ do not depend on each other (not the same as independence)

= marginal probability distribution <marginal-probability-distribution>
isolating $X$ or $Y$ from a joint probability distribution (projection of joint distribution to univariate distribution). To find $X$, use $Y$, and vice versa

$ P lr((X = x)) = f_X lr((x)) = sum_y f_(X , Y) lr((x , y)) $

or

$ f_X lr((x)) = integral_(- oo)^oo f_(X , Y) lr((x , y)) d y $

marginal probability distributions are probability functions.

= conditional distribution <conditional-distribution>
distribution of $Y$ given that the random variable $X$ is observed to take the value $x$

conditional probability function of $Y$ given that $X = x$:

$ f_(Y \| X) lr((y \| x)) = frac(f_(X , Y) lr((x , y)), f_X lr((x))) $

when given values, it finds $P lr((Y \| X = x))$

only defined for $x$ such that $f_X lr((x)) > 0$ (same for $y$)

#strong[$f_(Y \| X) lr((y \| x))$ is not a probability function of $x$:] the requirements of probability functions do not need to hold

#strong[applications:] you can also use summation for discrete joint random variables

$ P lr((Y lt.eq y \| X = x)) = integral_(- oo)^y f_(Y \| X) lr((y \| x)) d y $

$ E lr((Y \| X = x)) = integral_(- oo)^oo y f_(Y \| X) lr((y \| x)) d y $

== reading discrete joint probability tables <reading-discrete-joint-probability-tables>
#block[
  #figure(
    align(
      center,
    )[#table(
        columns: 5,
        align: (col, row) => (center, center, center, center, center,).at(col),
        inset: 2.5pt,
        [x/y],
        [$y_1$],
        [$y_2$],
        [$y_3$],
        [$f_X lr((x))$],
        [$x_1$],
        [a],
        [b],
        [c],
        [a + b + c],
        [$x_2$],
        [d],
        [e],
        [f],
        [d + e + f],
        [$x_3$],
        [g],
        [h],
        [i],
        [g + h + i],
        [$f_Y lr((y))$],
        [a + d + g],
        [b + e + h],
        [c + f + i],
        [1],
      )],
  )

]
$E lr((Y \| X = x))$ (same steps for $E lr((X \| Y = y))$) (using $x = x_1$):

+ sum of probability given $X = x_1 = f_X lr((x_1))$, $a + b + c = K$

+ divide each value in $X = x_1$ by $K$, $a \/ K$, $b \/ K$, $c \/ K$

+ multiply each by the corresponding $Y$ value, $frac(a y_1, K)$, $frac(b y_2, K)$, $frac(c y_3, K)$

+ sum the values: $E lr((Y \| X = x_1)) = frac(a y_1 + b y_2 + c y_3, K)$

$E lr((X))$ (same steps for $E lr((Y))$): $x_1 dot.op lr((a + b + c)) + x_2 dot.op lr((d + e + f)) + x_3 dot.op lr((g + h + i))$

simplified $E lr((X))$ (same steps for $E lr((Y))$): $x_1 dot.op f_X lr((x_1)) + x_2 dot.op f_X lr((x_2)) + x_3 dot.op f_X lr((x_3))$

= independent random variables <independent-random-variables>
$X$ does not decide $Y$ and vice versa

$X$ and $Y$ are independent iff for any $x$ and $y$ (all pairs),

$ f_(X , Y) lr((x , y)) = f_X lr((x)) f_Y lr((y)) $

\*must manually check all combinations

#strong[product feature:] necessary condition for independence: $R_(X , Y)$ needs to be a product space

$   & f_(X , Y) lr((x , y)) = f_X lr((x)) f_Y lr((y)) > 0\
  & arrow.r.double R_(X , Y) = { lr((x , y)) \| x in R_X ; y in R_Y } = R_X times R_Y $

if $R_(X , Y)$ is not a product space, then $X$ and $Y$ are not independent (visually, it’s a rectangular space)

#strong[properties:]

- if $A subset bb(R) and B subset bb(R)$, the events $X in A$ and $Y in B$ are independent events in $S$

  $ P lr((X in A ; Y in B)) = P lr((X in A)) P lr((Y in B)) $

  $ P lr((X lt.eq x ; Y lt.eq y)) = P lr((X lt.eq x)) P lr((Y lt.eq y)) $

- for arbitrary functions $g_1 lr((dot.op))$ and $g_2 lr((dot.op))$, $g_1 lr((X)) tack.t g_2 lr((Y))$

- $f_X lr((x)) > 0 arrow.r.double f_(Y \| X) lr((y \| x)) = f_Y lr((y))$

- $f_Y lr((y)) > 0 arrow.r.double f_(X \| Y) lr((x \| y)) = f_X lr((x))$

== checking independence <checking-independence>
given a joint probability table (for discrete variables), if there are $0$ entries in the table, then $R_(X , Y)$ is not a product space, hence $X ⊥̸ Y$

more generally, both conditions must hold:

+ $R_(X , Y)$ is positive and is a product space

+ for any $lr((x , y)) in R_(X , Y)$, $f_(X , Y) lr((x , y)) = C times g_1 lr((x)) times g_2 lr((y))$ (can be decomposed into parts that all do not depend on each other)

  \* $g_1 lr((X))$ and $g_2 lr((Y))$ do not need to be probability functions

= joint expectation <joint-expectation>
$ E lr((g lr((X , Y)))) = sum_x sum_y g lr((x , y)) f_(X , Y) lr((x , y)) $

or

$ E lr((g lr((X , Y)))) = integral_(- oo)^oo integral_(- oo)^oo g lr((x , y)) f_(X , Y) lr((x , y)) d y d x $

= covariance <covariance>
$ upright("cov") lr((X , Y)) & = E lr([lr((X - E lr((X)))) lr((Y - E lr((Y))))])\
                           & = sum_x sum_y lr((x - mu_X)) lr((y - mu_Y)) f_(X , Y) lr((x , y))\
                           & = integral_(- oo)^oo integral_(- oo)^oo lr((x - mu_X)) lr((y - mu_Y)) f_(X , Y) lr((x , y)) d x d y $

#strong[properties:]

- cov$lr((X , Y)) = E lr((X Y)) - E lr((X)) E lr((Y))$

- if $X tack.t Y$, cov$lr((X , Y)) = 0$ (but converse is not true)

- $X tack.t Y arrow.r.double E lr((X Y)) = E lr((X)) E lr((Y))$

- cov$lr((a X + b , c Y + d)) = a c dot.op upright("cov") lr((X , Y))$

  - cov$lr((X , Y)) = upright("cov") lr((Y , X))$

  - cov$lr((X + b , Y)) = c o v lr((X , Y))$

  - cov$lr((a X , Y)) = a upright("cov") lr((X , Y))$

- $V lr((a X + b Y)) = a^2 V lr((X)) + b^2 V lr((Y)) + 2 a b dot.op upright("cov") lr((X , Y))$

  - $V lr((a X)) = a^2 V lr((X))$

  - $V lr((X + Y)) = V lr((X)) + V lr((Y)) + 2 upright("cov") lr((X , Y))$

- $V lr((a + b X)) = b^2 V lr((X))$

= joint variance <joint-variance>
- $X tack.t Y arrow.r.double V lr((X plus.minus Y)) = V lr((X)) + V lr((Y))$

- $V lr((X_1 + X_2 + dots.h.c + X_n)) = V lr((X_1)) + V lr((X_2)) + dots.h.c + V lr((X_n)) + 2 sum_(j > i) upright("cov") lr((X_i , X_j))$

- $X_1 tack.t X_2 tack.t dots.h.c tack.t X_n arrow.r.double V lr((X_1 plus.minus X_2 plus.minus dots.h.c plus.minus X_n)) = V lr((X_1)) + V lr((X_2)) + dots.h.c + V lr((X_n))$

= discrete distributions

== discrete uniform distribution

if random variable $X$ assumes values $x_1, x_2, ..., x_k$ with equal probability $p$, then $X$ follows a discrete uniform distribution

$
f_X (x) = cases(
  1/k "if" x = x_1\, x_2\, ...\, x_k,
  0 "otherwise"
)
$

- $mu_X = E(X) = sum_(i = 1)^k x_i f_X (x_i) = 1/k sum_(i = 1)^k x_i$
- $sigma_X^2 = V(X) = 1/k sum_(i = 1)^k x_i^2-mu_X^2$

== bernoulli distribution

*bernoulli trial:* random experiment with only two possible outcomes: `1` success, `0` failure

*bernoulli random variable:* let $X$ be the number of successes in a Bernoulli trial
- $X$ only has 2 values (${0, 1}$)
- $p$: probability of success for a Bernou.li trial
  $
  f_X\(x) = P(X = x) = cases(
    p "if" x = 1,
    1 - p "if" x = 0
  ) = p^x (1-p)^(1 - x)
  $
- $X tilde "Bernoulli"(p)$ and $q = 1 - p$
  $
  f_X (1) = p; f_X (0) = q
  $
- $mu_X = E(X) = p$
- $sigma_X^2 = V(X) = p(1 - p) = p q$

*bernoulli process:* sequence of repeatedly performed independent and identical Bernoulli trials
- generates sequence of independent and identically distributed Bernoulli random variables $X_1, X_2, ..., X_n$

== binomial distribution

number of successes in $n$ trials of a Bernoulli process; denoted by $X$
- $X tilde "Bin"(n, p)$ where $n$ is the number of trials and $p$ is the probability of success
$
P(X = x) = binom(n, x) p^x (1 - p)^(n - x)
$
- $E(X) = n p$, $V(X) = n p (1- p)$
- normal distribution may approximate binomial distribution

== negative binomial distribution

number of independent and identically distributed Bernoulli trials needed until the kth success occurs
- $X tilde "NB"(k, p)$

$
f_X (x) = P(X = x) = binom(x - 1, k - 1) p^k (1 - p)^(x - k)
$
- equivalent to probability of $x$ trial success and $k - 1$ success with $x - 1$ trials
  - $binom(x - 1, k - 1)p^(k - 1)(1-p)^(x-k) times p$

- $E(X) = k / p$, $V(X) = ((1 - p)k) / p^2$

== geometric distribution

number of independent and identically distributed Bernoulli trials needed until first success occurs
- $X tilde "Geom"(p)$

$
f_X (x) = P(X = x) = (1 - p)^(x -1)p
$

- $E(X) = 1/p$, $V(X) = (1-p)/p^2$
- special case of negative binomial distribution

== poisson distribution

number of events occurring in a fixed period of time or fixed region
- $X tilde "Poisson"(lambda)$ where $lambda > 0$ is the expected number of occurrences during the given period/region

$
f_X (k) = P(X = k) = (e^(-lambda)lambda^k)/k!
$
- $k$ is the number of occurrences of such event

- $E(X) = lambda$, $V(X) = lambda$

$
P(X lt.eq.slant k) = e^(-lambda) (lambda + lambda^2 / 2! + lambda^3 / 3! + ... + lambda^k / k!)
$

*poisson process:* continuous time process with rate $alpha$; count the number of occurrences within some interval of time
- properties:
  - expected number of occurrences in interval of length $T$ is $alpha T$
  - no simultaneous occurrences
  - number of occurrences in disjoint time intervals are independent
- follows $"Poisson"(alpha T)$ distribution

*approximation to binomial:* let $X tilde "Bin"(n, p)$; $n arrow infinity, p arrow 0$ such that $lambda = n p$ is a constant
- then $X tilde "Poisson"(n p)$

$
lim_(p arrow 0; n arrow infinity) P(X = x) = (e^(-n p) (n p)^x)/x!
$

- recommended values: $n$ big, $p$ small
  - $n gt.eq.slant 20 and p lt.eq.slant 0.05$, OR
  - $n gt.eq.slant 100 and n p lt.eq.slant 10$

= continuous distributions

continuous random variable $X$ follows the following distributions f they have the following probability density function

== continuous uniform distribution

over interval $(a, b)$

$
f_X (x) = cases(
  1/(b - a) "if" a lt.eq.slant x lt.eq.slant b,
  0 "otherwise"
)
$

- $X tilde U(a, b)$
- $E(X) = (a + b) / 2$, $V(X) = (b - a)^2 / 12$

#image(width: 80%, "continuous_uniform_distribution.png")

$
F_X (x) = cases(
  0 "if" x < a,
  (x - a)/(b - a) "if" a lt.eq.slant x lt.eq.slant b,
  1 "if" x > b
)
$

== exponential distribution

parameter $lambda > 0$

$
f_X (x) = cases(
  lambda e^(-lambda x) "if" x gt.eq.slant 0,
  0 "if" x < 0
)
$

- $X tilde "Exp"(lambda)$
- $E(X) = 1 / lambda$, $V(X) = 1 / lambda^2$
- can be written with $mu$ if $mu = 1 \/ lambda$

#image(width: 80%, "exponential_distribution.png")

$
F_X (x) = P(X lt.eq.slant x) \
= integral_0^x lambda e^(-lambda t) "dt" \
= [- e^(- lambda t)]^x_0 \
= 1 - e^(-lambda x)
$
- if $x gt.eq.slant 0$, else $F_X (x) = 0$

*memory-less property:* if $X tilde "Bin"(lambda)$, then $P(X > s + t | X > s) = P(X > t)$

== normal distribution

parameter $mu$ and $sigma^2$

$
f_X (x) = 1 / (sqrt(2 pi) sigma) e^((-x-mu)^2\/2sigma^2)
$

- $X tilde N(mu, sigma^2)$
- $E(X) = mu$, $V(X) = sigma^2$

#image("normal_distribution.png")

*properties:*
- same $sigma_2$ but different $mu$ $arrow$ same shape, different center
- as $sigma_2$ increases $arrow$ curve flattens

*approximation to binomial:* let $X tilde "Bin"(n, p)$; $n arrow infinity$
- then $X tilde approx N(0, 1)$

$
Z = (X - E(X))/sqrt(V(X)) = (X - n p) / sqrt(n p(1 - p))
$

- recommended values: $n p > 5$ and $n(1 - p) > 5$
- continuity correction: adjusting ranges by $plus.minus 1\/2$
  - $a lt.eq.slant X arrow.double - 1\/2$
  - $a lt X arrow.double + 1\/2$
  - $X lt.eq.slant b arrow.double + 1\/2$
  - $X lt b arrow.double - 1\/2$

=== standard normal

given $X tilde N(mu, sigma^2)$, let $Z = (X - mu) / sigma, Z tilde N(0, 1)$
- $phi(dot) = f_Z (z) = 1/(sqrt(2 pi))e^(-z^2\/2)$: pdf
- $Phi(dot) = integral_(-infinity)^z phi(t) "dt" = 1 / (sqrt(2 pi)) integral_(-infinity)^z e^(-t^2 \/ 2) "dt"$: cumulative function
  - $P(x_1 < X < x_2) arrow.double P(z_1 < Z < z_2) arrow.double Phi((x_2 - mu) / sigma) - Phi((x_1 - mu) / sigma)$
  
*properties:*
1. $P(Z gt.eq.slant 0) = P(Z lt.eq.slant 0) = Phi(0) = 0.5$
2. $forall z, Phi(z) = P(Z lt.eq.slant z) = P(Z gt.eq.slant -z) = 1 - Phi(-z)$
3. $Z tilde N(0, 1) arrow.double -Z tilde N(0, 1)$
4. $Z tilde N(0, 1) arrow.double sigma Z + mu tilde N(mu, sigma^2)$
5. $P(Z > z_alpha) = alpha$

#image("upper_tail.png")

*quantile:* upper ($alpha$th) quantile where $0 lt.eq.slant alpha lt.eq.slant 1$ is $x_alpha$ that satisfies $P(X gt.eq.slant x_alpha) = alpha$
- common $z_alpha$ values:
  - $z_0.05 = 1.645$
  - $z_0.01 = 2.326$
- symmetrical about 0, so $P(Z gt.eq.slant z_alpha) = P(Z lt.eq.slant - z_alpha) = alpha$

= population

*population:* all possible outcomes/observaations of a survey/experiment; size is $N$
- population mean: $mu_X$
- population variance: $sigma_X^2$

*sample:* subset of population; size is $n$

*finite population:* finite number of elements

*infinite population:* infinitely large number of elements

= random sampling

sample of $n$ members taken from a given population: $binom(N, n)$
- every member has the same probability of being selected
- yields sample that resembles the population; reducing chance that sample is seriously biased

*sampling infinite population:* let $X$ be a random variable with pdf $f_X (x)$
- let $X_1, X_2, ..., X_n$ be independent random variables with the same distribution as $X$
- $(X_1, X_2, ..., X_n)$ is a random sample of size $n$
- $f_(X_1, X_2, ..., X_n) = f_(X_1)(x_1)f_(X_2)(x_2)...f_(X_n)(x_n)$
- sampling from a finite population with replacement $arrow.double$ sampling from an infinite population

*sampling distrribution:* probability distribution of a statistic

= statistics

function of $n$ observations in sample; statistics are samples

*sample mean:*

$
overline(X) = 1/n sum_(i = 1)^n X_i
$
- $mu_overline(X) = E(overline(X)) = mu_X$
  - in the "long run"
- $sigma_overline(X)^2 = V(overline(X)) = sigma_X^2\/n$

*sample variance:*

$
S^2 = 1/(n - 1) sum_(i = 1)^n (x_i - overline(x))^2
$

*standard error:* spread of sampling distribution (standard deviation): $S E$ or $sigma_overline(X)$
- how much $overline(X)$ tends to vary from sample to sample of size $n$

*law of large numbers:* if $X_1, X_2, ..., X_n$ are independent random variables with the same mean $mu$ and variance $sigma_2$, then for any $epsilon in RR$,

$
n arrow infinity arrow.double P(|overline(X) - mu| > epsilon) arrow 0
$

- i.e. as sample size increases, the probability that sample mean differs from population mean goes to 0

*central limit theorem:* if $overline(X)$ is a mean of random sample size $n$ from population with mean $mu$ and finite variance $sigma^2$, then

$
n arrow infinity & arrow.double (overline(X) - mu)/(sigma \/ sqrt(n)) arrow Z tilde N(0, 1)\
& arrow.double overline(X) arrow N(mu, sigma^2 / n)
$
- i.e. for large $n$, sums and means of random samples drawn from a population follow the normal distribution closely
  - if sample comes from normal population, then $overline(X)$ is normally distributed as well
- rule of thumb: 
  - symmetric population: $n = 15-20$
  - moderately skewed: $n = 30-50$
  - extremely skewed: $n = 1000$
- convergence in distribution: for any $x$
  $
  lim_(n arrow infinity) P((overline(X) - mu)/(sigma \/ sqrt(n)) lt.eq.slant x) = Phi(x)
  $

= sampling distributions

== chi-squared ($chi^2$) distribution

let $Z_1, Z_2, ..., Z_n$ be $n$ independent and identically distributed standard normal random variables
- a random variable with the same distribution as $Z_1^2 + Z_2^2 + ... + Z_n^2$ is a $chi^2$ random variable with $n$ degree of freedom
- $chi^2(n)$

#image(width: 60%, "chi_squared.png")

*properties:*
1. $Y tilde chi^2(n) arrow.double E(Y) = n; V(Y) = 2n$
2. for large $n$, $chi^2(n) approx N(n, 2n)$
3. if $Y_1$ and $Y_2$ are independent $chi^2$ random variable with $m, n$ degrees of freedom, then $Y_1 + Y_2$ is $chi^2(m + n)$
4. has a long right tail

*distribution of $((n - 1)S^2)/(sigma^2)$:* where $X_i tilde N(mu, sigma^2)$ has $chi^2(n - 1)$
$
((n - 1)S^2)/sigma^2 = (sum_(i = 1)^n (X_i - overline(X))^2)/sigma^2
$

== $t$-distribution

suppose $Z tilde N(0, 1)$ and $U tilde chi^2(n)$ and $Z perp U$:

$
T = Z / sqrt(U\/n) tilde t(n)
$

#image(width: 60%, "t_distribution.png")

*properties:*
1. $n arrow infinity arrow.double t(n) arrow N(0, 1)$ (when $n gt.eq.slant 30$, replace with $N(0, 1)$)
2. $T tilde t(n) arrow.double E(T) = 0; V(T) = n\/(n - 2), n > 2$
3. graph: symmetric about vertical axis and ressembles grapah of standard normal (but flatter)
4. used if $sigma$ (stdev) is unknown and sample size is small
  - otherwise, if sample size is large, use $z$ but continue using $S$ instead of $sigma$

*relation to normal distribution:* if $X_1, ..., X_n$ are independent and identically distributed normal random variables with mean $mu$ and variance $sigma^2$

$
(overline(X) - mu)/(S\/sqrt(n)) tilde t(n - 1)
$

== $F$-distribution

suppose $U tilde chi^2(m)$ and $V tilde chi^2(n)$ are independent

$
F = (U\/m)/(V\/n) tilde F(m, n)
$

*properties:*
1. $X tilde F(m, n) arrow.double E(X) = n /(n - 2), n > 2; V(X) = (2n^2(m + n - 2))/(m(n - 2)^2(n - 4)), n > 4$
2. $F tilde F(n, m) arrow.double 1/F tilde F(m, n)$
3. $F(m,n;alpha) arrow.double P(F > F(m,n;alpha)) = alpha$
4. $F(m,n;1 - alpha) = 1\/F(n,m;alpha)$

= estimator

rule about how to calculate an estimate based on information in the sample

*unbiased estimator:* let $hat(Theta)$ be the estimator of $theta$

$
E(hat(Theta)) = theta
$

- $E(S^2) = sigma^2$

*maximum error of estimate:* replace $sigma$ with $S$ if necessary and $z_(alpha \/ 2)$ with $t_(n - 1; alpha \/ 2)$ if variance not known or sample size too small

$
E = z_(alpha \/ 2) sigma/sqrt(n)
$

reversing the formula:

$
n gt.eq.slant ((z_(alpha \/ 2) sigma)/E)^2
$

= confidence intervals

*interval estimator:* rule for calculating, from a sample, an interval $(a, b)$ with some level of certainty that the parameter of interest lies in
- quantified as degree of confidence/confidence level $(1 - alpha)$
- $(a, b)$ is the $(1 - alpha)$ confidence interval

$
P(a < mu < b) = 1 - alpha
$

- written as

$
overline(X) plus.minus E
$

*interpretation:* given some sample statistic, the population parameter is either contained within (or not) the confidence interval
- when repeated over many samples, about $100(1 - alpha)%$ of the confidence intervals will contain the population parameter

= 2 populations

== independent samples

usually focused on $mu_1 - mu_2 = delta$

=== known and unequal variance

populations are normal OR both samples are large

$
Z = ((overline(X) - overline(Y)) - (mu_1 - mu_2))/(sqrt(sigma^2_1/n_1 + sigma^2_2/n_2)) approx N(0, 1)
$

*confidence interval:*

$
(overline(X) - overline(Y)) plus.minus z_(alpha \/ 2) sqrt(sigma_1^2 / n_1 + sigma_2^2 / n_2)
$

=== large and unknown variance

$
Z = ((overline(X) - overline(Y)) - (mu_1 - mu_2))/sqrt(S_1^2/n_1 + S_2^2/n_2) approx N(0, 1)
$

*confidence interval:*

$
(overline(X) - overline(Y)) plus.minus z_(alpha \/ 2) sqrt(S_1^2 / n_1 + S_2^2 / n_2)
$

=== small, equal, unknown variance

*equal variance assumption:* if $1\/2 lt.eq.slant S_1 \/ S_2 lt.eq.slant 2$

*pooled estimator:* estimates $sigma^2$; follows $t_(n_1 + n_2 - 2)$ distribution

$
S_P^2 = ((n_1 - 1)S_1^2 + (n_2 - 1)S_2^2)/(n_1 + n_2 - 2)
$

$
Z = ((overline(X) - overline(Y)) - (mu_1 - mu_2))/(sigma sqrt(1/n_1 + 1/n_2)) approx N(0, 1)
$

*confidence interval:*

$
(overline(X) - overline(Y)) plus.minus t_(n_1 + n_2 - 2; alpha \/ 2) S_P sqrt(1 / n_1 + 1 / n_2)
$

=== large and equal variance

$
(overline(X) - overline(Y)) plus.minus z_(alpha \/ 2) S_P sqrt(1 / n_1 + 1 / n_2)
$

== dependent samples/paired data

each pair is independent from each other; let $D_i = X_i - Y_i$ and $mu_D = mu_1 - mu_2$
- treat $D_1, D_2, ..., D_n$ as random sample with mean $mu_D$ and variance $sigma_D^2$

$
T = (overline(D) - mu_D)/(S_D\/sqrt(n)); \
overline(D) = (sum_(i = 1)^n D_i)/n \
S_D^2 = (sum_(i = 1)^n (D_i - overline(D))^2)/(n - 1)
$


- $n < 30$ and population normally distributed: $T tilde t_(n - 1)$
- $n gt.eq.slant 30$: $T tilde N(0, 1)$

*confidence interval:*

$
overline(D) plus.minus t_(n - 1; alpha \/ 2) S_D/sqrt(n)
$
- replace $t_(n - 1; alpha \/ 2)$ with $z_(alpha \/ 2)$ if $n gt.eq.slant 30$

= hypothesis testing

1. set competing hypotheses: null and alternative
2. set level of significance
3. identify tet statistic, distribution, and rejection criteria
4. compute the observed test statistic value
5. conclusion

== null vs alternative hypothesis

looking for ways to reject that there is no change and show that there is significance

*null hypothesis ($H_0$):* assumed truth (i.e. no change)

*alternative hypothesis ($H_1$):* contrasting hypothesis; what we want to prove

*outcome:* reject or fail to reject hypothesis

*one-sided hypothesis test:* $H_1 : mu > overline(x)$ or $H_1 : mu < overline(x)$ (right or left leaning hypothesis test)

*two-sided hypothesis test:* $H_1 : mu eq.not overline(x)$ (both sides)

== level of significance

*conclusions:*
- reject $H_0$ and conclude $H_1$
- do not reject $H_0$ and conclude $H_0$

#table(
  columns: (auto, auto, auto),
  inset: 4pt,
  align: horizon,
  table.header(
    [], [*Do not reject $H_0$*], [*Reject $H_0$*],
    [$H_0$ is true], [Correct decision], [Type 1 error],
    [$H_0$ is false], [Type 2 error], [Correct decision],
  ),
)

*level of significance $alpha$:* probability of making a type 1 error
- more serious so control this

*power of test $1-beta$:* probability of making type 2 error

== test statistic, distribution, and rejection region

quantifies how unlikely it is to observe the sample assuming the null hypothesis is true

#image(width: 50%, "rejection_region.png")

== calculation & conclusion

check if sample statistic falls within rejection region
- if so, sample is improbable, so reject $H_0$
- else, failed to reject $H_0$

= hypothesis testing with mean

population distribution is normal or $n$ is sufficient large

use $Z = (overline(X) - mu_0)/(sigma \/ sqrt(n)) tilde N(0, 1)$ as test statistic and rejection region is $P(|Z| > z_(alpha \/ 2)) = alpha$
- if two-tailed test: $Z < -z_(alpha \/ 2)$ or $Z > z_(alpha \/ 2)$
- if one-tailed test: $Z < -z_(alpha \/ 2)$ (for left tail) or $Z > z_(alpha \/ 2)$ (for right tail)

*unknown variance:* use $t$-distribution instead with $n - 1$ degree of freedom with $S$ replacing $sigma$; use standard normal distribution iff $n gt.eq.slant 30$
- swap $Z$ check with $t$ check

== $p$-value

probability of obtaining a test statistic at least as extreme than the observed sample value, given that $H_0$ is true; i.e. observed level of significance

- two-sided test: $p"-value" = P(|Z| > |z|) = 2P(Z > |z|) = 2P(Z < -|z|)$
- left-tailed test: $p"-value" = P(Z < -|z|)$
- right-tailed test: $p"-value" = P(Z > |z|)$

*rejection:* if $p"-value" < alpha$, reject $H_0$, else do not reject

== relation with confidence intervals

confidence intervals can be used to perform two-sided tests so by constructing a confidence interval given some confidence $100(1 - alpha)%$, then if $overline(X) in.not "CI"$, then we can reject $H_0$

= hypothesis testing with independent samples

$
H_0 : mu_1 - mu_2 = delta_0
$

where $delta_0$ is usually $0$

$
Z = ((overline(X) - overline(Y)) - delta_0)/(sqrt(sigma_1^2/n_1 + sigma_2^2/n_2)) tilde N(0, 1)
$

if $sigma^2$ is known, and population is normally distributed or $n_1, n_2$ are sufficiently large

otherwise, if $sigma^2$ is unknown but samples are sufficiently large

$
Z = ((overline(X) - overline(Y)) - delta_0)/(sqrt(S_1^2/n_1 + S_2^2/n_2)) tilde N(0, 1)
$


using the same rejection regions as when dealing with single samples

if $sigma^2$ is unknown but equal, underlying distribution are normal and samples are small, then use $t$-distribution and pooled estimator instead

$
Z = ((overline(X) - overline(Y)) - delta_0)/(S_P sqrt(1/n_1 + 1/n_2)) tilde t_(n_1 + n_2 - 2)
$

= hypothesis testing with dependent data/paired data

$
T = (overline(D) - mu_(D_0))/(S_D \/ sqrt(n)) tilde t_(n - 1)
$

if sample size $gt.eq.slant 30$, $T tilde N(0, 1)$