#import "@preview/cetz:0.2.2"

#set page(flipped: false, margin: 20pt)
#show: columns.with(3, gutter: 4pt)
#set text(
  font: "New Computer Modern Sans",
  size: 9pt
)

#show par: set block(spacing: 5pt)
#set par(leading: 3pt)
#set list(tight: true)
#set block(spacing: 0.5em)

#align(center)[
  #box(inset: 10pt, stroke: black, [
      = UTS2706 Finals Cheatsheet
      by: #link("https://nus.woojiahao.com")[#underline("Jiahao")]
  ])
]

#show heading.where(level: 1): it => [
  #set text(10pt, weight: "bold")
  #block([#underline(smallcaps(it.body))])
  // #block(smallcaps(it.body))
]

#show heading.where(level: 2): it => [
  #set text(10pt, weight: "bold")
  // #block([#underline(smallcaps(it.body))])
  #block(smallcaps(it.body))
]

#show image: it => [
  #align(center, it)
]

#show table: it => [
  #align(center, it)
]

= economics

study of how people manage their #underline("resources") to create proucts or services to meet their #underline("needs") and enhance their #underline("well-being")

$
"economy" subset "society" subset "environment"
$

= resources
could be classified as... 
- *natural:* water, mineral, wind, oil, forest, agricultural products, sea, sun light...
- *man-made productive:* factories, roads, trucks, airports, ports, highways, machines, pipes...
- *human:* knowledge, skills, experiences, special gifts, resilience, health, population
- *financial:* foreign currency, bank reserve, cash flow, budget, surplus or deficit
- *technology:* R&D ability, status of science and technology, potential of new breakthrough
- *social relationship:* friends, family, trust level, social norms

= needs

observed with Maslow's Hierarchy of Needs (from descending order of importance):

1. *self-actualization:* desire to become the most that one can be
2. *esteem:* respect, self-esteem, status, recognition, strength, freedom
3. *love and belonging:* friendship, intimacy, family, sense of connection
4. *safety needs:* personal security, employment, resources, health, property
5. *physiological needs:* air, water, food, shelter, sleep, clothing, reproduction

= well-being

refers to the quality of life beyond meeting the basic needs
- economic activity is not the only means
- well-functioning economy operates to increase well-being of all members

*dimensions:* physical, emotional, financial, social, occupational, spiritual, intellectual, environmental

*perception:* what is most valued differs from person to person

*trade-offs:* decision-makers make trade-offs to achieve goals through scarcity and opportunity cost
- involves current and future generations

*side effects:* unintended consequence of achieving a goal; characterized with positive and negative externality

= traditional economic goals

spans from individual to social goals

*increasing income/wealth:* measured with Gross Domestic Product (GDP)
- higher income $arrow.double$ higher quality of life
- necessary to improve well-being of the poor
- problems:
  - limit to growth
  - cost of expansion: depletion of resource, climate change, extinction of non-human species
  - "Earth Overshoot Day": date when humanity has exhausted nature's budget for the year

#image("traditional_economic_goals.png")

*efficiency:* use maximum value of resources to achieve a desired result; producing the maximum value of output from a given set of input
- optimizing use of resources
- market value used as standard
- disproportionate allocation of resources
- emphasizing efficiency may result in a group of people who are neglected in other areas of well-being

*others:*
1. full employment
2. price stability
3. equitable distribution of income
4. economic freedom
5. balance of trade
6. economic security

= economic goals considering well-being

not all goals can be achieved at the same time
- some goals reinforce each other while others conflict with one another
- conflicts include: unintended consequences & conflict of interests
- social goals should echo the needs and well-being of individual and beyond

*differences from traditional economic goals:*
- focuses more on intangible metrics
- harder to quantify and achieve with just money

*top goals of Singapore:*
1. mental health
2. increasing wealth equity
3. providing equal opportunity

*goals:*

1. *satisfaction of basic physical needs:* including nutrition and care adequate for survival, and a comfortable living environment
2. *security:* assurance that one's basic needs will continue to be met throughout all stages of life and security against aggression or unjust persecution
3. *happiness:* adequate opportunity to experience feelings of contentment, pleasure, enjoyment, and peace of mind
4. *ability to realize one's potential:* including physical, intellectual, social, aesthetic, and spiritual potential
5. *a sense of meaning:* purpose to one's life
6. *fairness:* fair and equal treatment by others and within social institutions
7. *freedom:* ability to make personal decisions while not infringing on the freedom of others
8. *participation:* opportunity to participate in the processes in which decisions are made that affect one's society
9. *good social relations:* having satisfying and trustful relaations with friends, family, fellow citizens, and business associates and peaceful relations among larger groups (like nations)
10. *ecological balance:* protecting naturala resources and restoring them to a healthy state

= economic activities

1. *resource management:* preserving or improving resources that contribute to the enhancement of well-being
2. *production:* conversion of resources into usable products, either goods or services
3. *distribution:* sharing of products and resources among people
4. *consumption:* process by which goods and services are put to final use by people

= basic economic questions

1. what should be produced?
2. how should production take place?
3. from whom should economic activity be undertaken?

= spheres of economic activity

== core

earliest sphere of economic activities; comprised of households, families, and informal community groups
- involves raising children, preparing meals, maintaining homes, taking care of the mildly ill, and organizing many activities among family members, friends, and neighbors

*key characteristics:* work is not paid and respond to needs and waits (instead of the ability to pay for)

*importance:* crucial for maintenance and flourishing of any economy; of important economic and social value (equal to $gt.eq 25%$ of country GDP)

*limitations:* unequally assigned between genders (women do majority of unpaid household labor) and limited scales

*action:* single action to support those who have provided "free" goods and services in the core sphere

== public purpose

comprised of the government and NGOs like charities, religious organizations, professional associations, and international institutions

*key characteristics:* for an explicit purpose related to the #underline("public good") and NOT for profit

*public good:* non-rivalrous and non-excludable

*examples:* local police force, national defense, public roads, systems of laws and courts, poverty relief, healthcare and education, protection of environment

*strengths:* provides important goods and services and provide jobs

*weaknesses:* concerns for efficiency, impersonal ("one size fits all"), concerns for accountability (corruption), low quality of services, focusing on particular groups or communities

== business

comprised of firms that produce goods and services for profitable sale; makes up the majority of spending

*market:* follows three potential definitions
1. markets as places to buy and sell
  - market is a physical or virtual location where people go to buy and sell things
2. markets defined by product categories
  - market is the interaction of buyers and sellers defined within the bounds of broad product categories
  - e.g. real estate or stock market
3. markets as an economic system
  - economic system that relies on markets to conduct many activities
  - alternative is planned economy
  - key characteristic: profit-driven

*advantages of market as an economic system:*
1. business efficiency: government creates legislation that places limits on activities that detract from a competitive environment and regulate how businesses treat customers and workers to maximize efficiency; measured in costs and profits
2. increased productivity: increased motivation to earn more money to supply needs
3. innovation for a competitive edge:  encouraged to innovate to gain competitive advantaage and increase market share; increases variety of goods and services at lower costs that benefit customers
4. consumer choice
5. flexibility

*disadvantages of market as an economic system:*
1. inequality: unequal distribution of resources or income among individuals
2. externalities: negative or positive effects on society due to economic decisions of producers and consumers; negative inclludes polution
3. public goods: public goods may not be provided by private producers as it is unprofitable
4. merit goods: goods that are under-consumed and under-produced due to information failure such as education and health services; under-allocation fo resources for these goods
5. demerit goods: goods thaat are overconsumed and overproduced due to information failure such as cigarettes and junk food; overallocation of resources
6. market failures: free markets that fail to allocate resources in a socially desirable way due to lack of government intervention; such as imperfect information, market imperfections, short-term focus of firms on maximizing profits

= institutional requirements for markets

what is necessary for markets to run smoothly

*institutions:* "connections" in the system; way of structuring human activities based on customs, norms, infrastructure, and laws

1. private property
2. social institutions of trust
3. infrastructure that allows for the flow of goods and information
4. money as a medium of exchange

== private property

exists both formally, in codes of law, and informally, in social and cultural norms

*ownership:* defiend through systems of property rights set out in law and enforced by courts and police

== social institutions of trust

trust between buyer and seller; measured using World Value Survey, lost wallet experiment, trust game

*building trust:*
- establishment of direct relationship
- reputation
- social norms and common codes (ethical and religious)
- special legal structures (explicit or implicit contracts)

== infrastructure that allows for flow of goods and information

physical infrastructure for transportation and storage of goods and for information to flow freely

== money as a medium of exchange

cash, checks, credit cards, debit cards, and electronic payment systems
- money is created or sanctioned by national governments

= pro-market vs anti-market

incredibly polarized; requires evaluation of market outcomes in a case-by-case basis using the spheres of economic activity

*categories:*
1. limited government involvement
2. significaant government involvement
3. provision from nonmarket institutions is necessary

= negotiation strategies
self interest is the main motivation for human behaviors and negotiation strategies exist to achieve one's goals; barter and trade

= complex systems
*properties:*
1. complex collective behavior: comprises of large networks of individual components following simple rules without  central control or leader
  - simple rules $arrow$ only participate in the trade when there is net benefit
  - results in unpredictability
2. signaling and information processing: systems produce and use information and signaals from both internal and external environment
  - used to tell systems to change and adjust
3. adaptation: systems change their behavior to improve chances of survival or success through evolutionary processes

= microeconomic market model
comprised of 2 market outcomes: market price & market quantity sold and 2 market players: buyers & sellers
- buyers and sellers interact voluntarily in markets to increase own well-being

#align(center)[
  #image(width: 50%, "microeconomic_market_model.png")
]

*types of markets:*

#image("market_types.png")


== theory of supply

represents the relationship between price and quantity supplied

*supply schedule:* table distribution of the relationship

*supply curve:* plotting the data points of the supply schedule
- if price and quantity supplied has positive relationship $arrow$ higher price leads to more coffee supplied 
- can go from individual to market

#image(width: 70%, "supply_price.png")

*key distinction:*
- change in price $arrow$ change in quantity supplied
- nonprice determinant supply $arrow$ change in supply

#image("distinction.png")

*nonprice determinants of supply:* all result in shifts in the supply curve
- available technology of production
- input/resource prices
- number of sellers
- producer expectations about future prices and technologies
- prices of related goods and services
- changes in physical supply of natural resource

== theory of demand

relationship between price and quantity demand

*(effective) demand:* willingness to buy and ability to pay

*demand schedule:* table distribution of the relationship

*demand curve:* plotting of demand schedule
- inverse relationship $arrow$ lower prices leads to more demand

*key distinction:*
- change in price $arrow$ change in quantity demanded
- nonprice determinants of demand $arrow$ change in demand

#image("demand_distinction.png")

*nonprice determinants of demand:* changes in demand is a side effect of price changing
- tastes and preferences
- incomes and/or available assets
- availability and prices of related goods and services
  - substitute goods $arrow$ used in place of another
  - complementary goods $arrow$ used along with another
- consumer expectation about future prices and incomes
- number of consumers

= theory of market adjustment

market forces tend to make $p$ and $q$ towarads the equilibrium point

*surplus:* quantity supplied exceeds quantity demanded at a given price
- free market $arrow$ sellers adjust price to clear their stock

#image(width: 65%, "surplus.png")

*shortage:* quantity demanded exceeds quantity supplied at a given price

#image(width: 70%, "shortage.png")

*equilibrium:* quantity supplied is equal to the quantity demanded, no pressure on prices or quantity to change

#image(width: 65%, "equilibrium.png")

*critiques:*
- adjustment has no time window; markets are independent of one another
- dealing with surplus/shortage: price adjustment is not always the solution
- forces to combat equilibrating tendency of market forces:
  - unwillingness/inertia/too costly to adjust
  - cost of changing prices is high
  - pricing strategies such as markup pricing, loss-leaders pricing, and price discrimination
  - government interventions

= consumer and producer surplus

#image(width: 60%, "fully_annotated.png")

*consumer benefits:* consumers obtain "psychic benefits" from their purchases
- any consumer considering purchasing aa good or service has a maximum willingness to pay for it

*consumer surplus:* difference between consumer's maximum willingness to pay and price
- net psychic benefit consumers obtain from their purchases

*annotating demand curves:* each point of a demand curve is a consumer's maximum willingness to pay

// #image(width: 70%, "consumer_surplus.png")

#image("consumer_surplus_annotation.png")

*producer benefits:* defined by profits; surplus = profits

*annotating supply curves:* supply curves tell us marginal cost of providing each unit

*producer surplus:* difference between price and marginal cost

// #image(width: 70%, "producer_surplus.png")

#image(width: 80%, "producer_surplus_annotated.png")

= social efficiency

allocation of resoruces that maximizes the net benefits to society; not the same as maximizing well-being; effectively moving towards market equilibrium

- ties into welfare economics: estimating social welfare of different scenarios to determine ways to maximize net social benefits
- provides understanding when markets work well and when markets fail
- goal: total net benefits to society, not distribution; maximizing total benefits, not fairness; market value, not social value

== price ceilings

maximum allowable price, normally set below market equilibrium price with the goal to help certain groups of consumers by keeping prices low

- reduces overaall market efficiency (deadweight loss); increases customer surplus but decreases producer surplus
- equity concerns used to justify price ceiling, especially if deadweight losses are relatively minor

#image("price_ceiling.png")

== price floors

minimum allowable price, normally set above market equilibrium price with goal to aid producers

- creates deadweight loss; increasing producer surplus but decreasing consumer surplus
- economic goals other than (welfare) efficiency used to justify price floors

#image("price_floor.png")

== welfare analysis

1. identify intervention
2. compare equilibrium price with targeted price
3. compare equilibrium quantity supplied/demanded with resulted one
4. compare total welfare, consumer surplus, and producer surplus
5. analyze if intervention can be justified:
  - who are affected and to what extent?
  - consideration of other goals
  - magnitude of deadweight loss (elasticity of demand/supply curve)

=== policy inferences from welfare analysis

welfare analysis lends support for free markets
- intervention generally decreases social welfare
- government interventions should be limited to what is absolutely necessary
- efficiency sometimes viewed as objective policy goal
- focus on efficiency $arrow$ existing distribution of resources is acceptable

*support for government intervention:*
- maximizing efficiency considers only overall benefits, not allocation of benefits
- other goals than economic efficiency like fairness, social justice, sustainability
- unregulated market can be inefficient

*market failure:* occurs when markets fail to maximize social efficiency
- when externalities are present, when consumer behavior is irrational, when some market participants have excessive power, when competition is sufficient
- government intervention justified on efficiency grounds in times of market failure

= shifts in supply and demand

market forces will push the prices and quantities towards the equilibrium when supply and demaand changes in a certain market
- when supply curve shifts, equilibrium price and quantity move in opposite directions
- when demand curve shifts, equilibrium price and quantity move in same direction
- when both shift, one of changes is ambiguous

= shortage, scarcity, and inadequacy

*shortage:* imbalance between effective demand and supply

*scarcity:* general condition - imbalance between what is available and what people should have

*inadequacy:* not enough of a good or service at affordable prices for people to meet minimal requirements for well-being

= globalization

percentage of global economic production traded internationally has increased in recent decades

== trade, specialization, and productivity

*free trade:* exchange in international markets that is not regulated or restricted by government actions
- mercantillism: trade surplus is most desirable
  - policy implication: promote export and place restrictions on imports to ensure a trade surplus
- Adam Smith: trade increase productivity
  - policy implication: less government involvement in the economy and reduction of trade barriers

=== benefits of free trade
1. efficiency gains from trade: consumption beyond PPF and lower prices for consumers
2. exchange relations giving producers incentive to be productive: efficient allocation of resources and capitals; competition and innovation
3. trade encourages technology transfers across countries
4. trade increases the opportunity for economics of scale to be realize
5. trade encourages peaceful relations among countries: Marshall Plan of USA

#image(width: 65%, "economies_of_scale.png")

*measures of trade:* sum of imports and exports

*measures of conflict:* intensity-weighted sums of conflictive events

*reverse relationships:* supports the contention that higher level of trade are associated with lower level of conflict

=== drawbacks of free trade
1. efficiency: vulnerability and lock-in
2. inequality: income inequality
3. sustainability: production/transportation/pollution exporting; race to the bottom

*vulnerability & lock-in:* countries more vulnerable to actions of trading partners
- as importer: supplies of commodities; inputs for manufacturing; essential resources
- as exporter: markets for what you sell
- countries that heavily rely on sales of single/few export goods are vulnerable to:
  - market/price fluctuations
  - climate change
  - protectionism: variety of strategies countries follow to limit volume of trade with their trading partners and protect domestic industries from foreign competition
    - import substitution: policy to reduce reliance on imports and encourage domestic industry
    - tariffs: taxes on imported goods; account for significant % of tax revenue in developing countries
    - quotas: import quantity limits
    - subsidies: encourage more production
    - administrative obstacles: raise production standards for limiting trade with countries not meeting them
- lock-in: specialization locking a country into a production pattern that becomes inefficient

*sustainability:*
- negative externalities from production like pollution $arrow$ net benefit of trade is ambiguous
- race to the bottom: countries compete for export market or for FDI may lower environmental/labor/social standards to gain a cost advantage
- transprotation of goods: contributes to pollution
- exporting pollution: reducing domestic manufacturing & associated pollution $arrow$ pollution in the other country instead

*political:* winners and losers in a trade
- efficiency gains from free trade vs redistribution impacts
- globalization affects wage inequality

== theory of comparative advantage

*opportunity cost:* how much of one good must be given up in order to produce some of the other goods

*comparative advantage:* ability to produce some good or service at a lower opportunity cost than other producers

*principle of comparative advantage:* a nation should specialize in those goods and services for which it has a comparative advantage over its trading partners, and trade other goods and services

*sources of comparative advantage:*
1. quantity and quality of natural resources available
2. demographics: education, age, women's rights
3. rate of capital investment including infrastructure
4. increasing returns to scale and division of labor
5. investment in research & development
6. fluctuations in exchange rate
7. import controls like tariffs, export subsidies, and quotas
8. non-price competitiveness of producers
9. institutions

*comparative advantages of Singapore:*
- 1965: domestic market oriented - printing & publishing, F&B, manufacturing
- 1980s: export oriented - petroleum refining, marine equipment, electronic products and components
- 2000s: main value added items - computer, electronic, and optical products, pharmaceutical and biological products, marine equipment, machinery and equipments
- 2023: new growth areas - AI and digitization, green and sustainable solutions, precise medicine

= historical perspectives on economic behavior

== classical economic views of human nature

human nature is complex and human motivations are mixed; most people act in self-interest and to their advantage, not social motives

- under certain conditions, self-interest does not lead to social welfare maximization
- people desire to have self-respect and the respect of the others
  - may act in certain (good/bad) ways to others

== neoclassical model

incorporated new insights on marginal utility and subjective nature of value; refines and formalizes classical economic theories
- emphasizes mathematical models, market equilibrium, and rational behavior of individuals
- taking narrower view of human motiviations
- bsed on assumptions like rationality: rational economic man maximizes his utility

*axioms of rationality:*
1. completeness: for x and y, an individual either weakly prefer x to y or y to x
  - individuals are able to rank their preferences
2. transitivity: if an individual prefers x to y, and y to z, then they prefer x to z
  - individual preferences are consistent

*criticisms:*
- unsure if it's a descriptive or prescriptive model
- whether the assumption of rationality is overly simplified
  - due to limited information, limited cognitive ability, or self-control
- whether the asdsumption of maximizing behavior is correct
  - human motivation is much more complex

== modern perspectives on economic behavior

examines people's choice of goals and actions taken to achieve them, including the constraints and influences that affect their choices and actions

- evidence-based approach, challenging assumption of rationality
- explains irrational behavior

#text(size: 9pt)[
  #table(
    columns: (1fr, 1fr),
    inset: 4pt,
    align: horizon,
    table.header(
      [assumptions], [evidence]
    ),
    [individuals have complete preferences for different options], [individuals do not know what they like],
    [individuals have consistent and stable references], [preferences are context sensitive and easily influenced],
    [individuals can make choices based on rational preferences], [individuals having difficulties to make good choice]
  )
]

=== systems of thinking

1. automatic (95%): gut reaction - uncontrolled, effortless, associative, fast, unconscious, skilled
2. reflective (5%): conscious thought - controlled, effortful, deductive, slow, self-aware, rule-following

=== nudge

any aspect of the choice architecture that alters people's behavior in a predictable way without forbidding any options or significantly changing their economic incentives
- steer individuals towards making better choices for themselves or society without imposing mandates or bans

== heuristics & behavioral biases

*anchoring effect:* people are inclined to rely on first piece of information they received in the past to judge the value of the product in the future
- involved in negotiation and reputation
- bias occurs when adjustments are insufficient
- anchors serve as nudges

*availability heuristic:* people assess likelihood of risks by asking how readily examples come to mind
- personal experience, recent events, anecdotes, news
- biased assessment of risk can negatively influence responses to crisis, investment, opportunities
- overcome by using nudges: increasing fear by reminding them, reducing fear by referring to empirical data, increasing confidence

*representativeness:* making a choice based on predictable answers/stereotypes
- misperceptions of patterns
- ignores base rate information
- similarity and frequency sometimes diverge so stereotypes may not be true
  - hot hand fallacy: believing in "winning streaks"

*optimism and overconfidence:* unrealistic optimism with everyone thinking they are above average
- results in unfounded risk taking behavior
- benefits from nudging back in the right direction

*status quo bias:* tend to follow what is the norm
- nudging at work with a "default option"

*temptations:* dynamically inconsistent behaviors
- tempting when more consumed than another
- no implications that decisions made are better
- lack of appreciation for how much desire and behavior is altered when under "arousal"
- resistance: effective planning for the future

*social influence:* easily influenced by statements and deeds by others
- based on information and social pressure
- conformity is a strong force in shaping decisions
- social influence is a good nudge

== cognitive bias

just because individuals do not ALWAYS make rational choices, does not mean rationality should be abandoned
- social planners use nduges to induce desirable decisions even if people use only System 1 thinking
- using System 2 to make deliberate and informative decisions is beneficial
  - increases awareness
  - forces you to slow down
  - rely on data and empirical data over gut feeling
  - seek feedback from others and reflect on decision making
  - allows use of decision-making frameworks