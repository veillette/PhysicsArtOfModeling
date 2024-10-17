/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 2 - Comparing Model and Experiment

=== Overview <chap:modelandexperiment>

In this chapter, we will learn about the process of doing science and lay the foundations for developing skills that will be of use throughout your scientific careers. In particular, we will start to learn how to test a model with an experiment, as well as learn to estimate whether a given result or model makes sense.

#hintBlock(heading: [Learning Objectives])[
- Be able to estimate orders of magnitude.
- Understand units.
- Understand the process of building a model and performing an experiment.
- Understand uncertainties in experiments.
]

#noteBlock(heading: [Think About It])[
Newton's Universal Theory of Gravity predicts that objects near the surface of the Earth will fall with an acceleration of $9 . 8 upright m \/ s^2$. Your friend reports that they have measured the acceleration of a falling ball and found that it was $9 . 0 plus.minus 0 . 5 upright m \/ s^2$. Does their result invalidate the prediction from Newton's Theory?\}

+ Yes, since the range $9 . 0 plus.minus 0 . 5 upright m \/ s^2$ does not include $9 . 8 upright m \/ s^2$.
+ Not necessarily, as it depends on whether your friend correctly determined the uncertainty in their measurement.
+ Definitely not, since Newton's Universal Theory of Gravity has been confirmed by many experiments.

#noteBlock(heading: [Answer])[
+
]
]

=== Orders of magnitude <orders-of-magnitude>

Although you should try to fight intuition when building a model to describe a particular phenomenon, you should not abandon critical thinking and should always ask if a prediction from your model makes sense. One of the most straightforward ways to estimate if a model makes sense is to ask whether it predicts the correct order of magnitude for a quantity. Usually, the order of magnitude for a quantity can be determined by making a very simple model, ideally one that you can work through in your head. When we say that a prediction gives the right "order of magnitude", we usually mean that the prediction is within a factor of "a few" (up to a factor of 10) of the correct answer. For example, if a measurement gives a value of 2000, then we would consider that a model prediction of 8000 gave the right order of magnitude (it differs from the correct answer by a factor of 4), whereas a prediction of 24000 would not (it differs by a factor of 12).

#noteBlock(heading: [Example 2.1])[
How many ping pong balls can you fit into a school bus? Is it of order 10,000, or 100,000, or more?\}
Our strategy is to estimate the volumes of a school bus and of a ping pong ball, and then calculate how many times the volume of the ping pong ball fits into the volume of the school bus.

#noteBlock(heading: [Solution])[
We can model a school bus as a box, say $2 0 upright m times 2 upright m times 2 upright m$, with a volume of $8 0 upright m^3 tilde 1 0 0 upright m^3$. We can model a ping pong ball as a sphere with a diameter of $0 . 0 3 upright m(3 upright c m$). When stacking the ping pong balls, we can model them as little cubes with a side given by their diameter, so the volume of a ping pong ball, for stacking, is $tilde$ 0.00003 \{\\rm m\^3\}=3\\times 10\^\{-5\} $upright m^3$. If we divide $1 0 0 upright m^3$ by $3 times 1 0^(-5) upright m^3$, using scientific notation:

$ frac(1 0 0 upright m^3, 3 times 1 0^(-5) upright m^3) = frac(1 times 1 0^(2), 3 times 1 0^(-5)) = frac(1, 3) times 1 0^7 tilde 3 times 1 0^6 $
Thus, we expect to be able to fit about three million ping pong balls in a school bus.

#show figure: set block(breakable: true)
#figure(
  image("files/schoolbusestimate-4f8ae92d39f3ff7dc9e6957709779c22.png", width: 55%),
  caption: [
A school bus and ping pong balls modelled as boxes.
],
  kind: "figure",
  supplement: [Figure],
) <fig:modelandexperiment:schoolbusestimate>
]
]

#tipBlock(heading: [Checkpoint])[
Fill in the following table, giving the order of magnitude (in meters) of the sizes of different physical objects. Feel free to look these up on the internet!

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Object*
],
[
*Order of magnitude*
],
[
Proton
],
[
],
[
Nucleus of atom
],
[
],
[
Hydrogen atom
],
[
],
[
Virus
],
[
],
[
Human skin cell
],
[
],
[
Width of human hair
],
[
],
[
Human
],
[
$1 upright m$
],
[
Height of Mt. Everest
],
[
],
[
Radius of the Earth
],
[
],
[
Radius of the Sun
],
[
],
[
Radius of the Milky Way
],
[
],
),
  kind: "table",
  supplement: [Table],
)

#tipBlock(heading: [Answer])[
#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Object*
],
[
*Order of magnitude*
],
[
Proton
],
[
$1 0^(-1 5) upright m$
],
[
Nucleus of atom
],
[
$1 0^(-1 4) upright m$
],
[
Hydrogen atom
],
[
$1 0^(-1 0) upright m$
],
[
Virus
],
[
$1 0^(-7) upright m$
],
[
Human skin cell
],
[
$1 0^(-5) upright m$
],
[
Width of human hair
],
[
$1 0^(-4) upright m$
],
[
Human
],
[
$1 upright m$
],
[
Height of Mt. Everest
],
[
$1 0^3 upright m$
],
[
Radius of the Earth
],
[
$1 0^7 upright m$
],
[
Radius of the Sun
],
[
$1 0^9 upright m$
],
[
Radius of the Milky Way
],
[
$1 0^(2 1) upright m$
],
),
  kind: "table",
  supplement: [Table],
)
]
]

=== Units and dimensions <units-and-dimensions>

In 1999, the NASA Mars Climate Orbiter disintegrated in the Martian atmosphere because of a mixup in the units used to calculate the thrust needed to slow the probe and place it in orbit about Mars. A computer program provided by a private manufacturer used units of pounds seconds to calculate the change in momentum of the probe instead of the Newton seconds expected by NASA. As a result, the probe was slowed down too much and disintegrated in the Martian atmosphere. This example illustrates the need for us to *use and specify units* when we describe the properties of a physical quantity, and it also demonstrates the difference between a dimension and a unit.

"Dimensions" can be thought of as types of measurements. For example, length and time are both dimensions. A unit is the standard that we choose to quantify a dimension. For example, meters and feet are both units for the dimension of length, whereas seconds and jiffys#footnote[A jiffy is a unit used in electronics and generally corresponds to either 1/50 or 1/60 seconds.] are units for the dimension of time.

When we compare two numbers, for example a prediction from a model and a measurement, it is important that both quantities have the same dimension \\textit\{and\} be expressed in the same units.

#tipBlock(heading: [Checkpoint])[
The speed limit on a highway...

+ has the dimension of length over time and can be expressed in units of kilometers per hour.
+ has the dimension of length and can be expressed in units of kilometers per hour.
+ has the dimension of time over length and can be expressed in units of meters per second.
+ has the dimension of time and can be expressed in units of meters.

#tipBlock(heading: [Answer])[
+
]
]

==== Base dimensions and their SI units <base-dimensions-and-their-si-units>

In order to facilitate communication of scientific information, the International System of units (SI for the french, Syst\`eme International d'unit'es) was developed. This allows us to use a well-defined convention for which units to use when describing quantities. For example, the SI unit for the dimension of length is the meter and the SI unit for the dimension of time is the second.

In order to simplify the SI unit system, a fundamental (base) set of dimensions was chosen and the SI units were defined for those dimensions. Any other dimension can always be re-expressed in terms of the base dimensions shown in Table \\ref\{tab:modelandexperiment:SIunits\} and its units in terms of the corresponding combination of the base SI units.

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Dimension*
],
[
*SI unit*
],
[
Length \[L\]
],
[
meter \[m\]
],
[
Time \[T\]
],
[
seconds\[s\]
],
[
Mass \[M\]
],
[
kilogram \[kg\]
],
[
Temperature \[$Theta$\]
],
[
kelvin \[K\]
],
[
Electric current \[I\]
],
[
amp\`ere \[A\]
],
[
Amount of substance \[N\]
],
[
mole \[mol\]
],
[
Luminous intensity \[J\]
],
[
candela \[cd\]
],
[
Dimensionless \[1\]
],
[
unitless \[\]
],
),
  caption: [
Base dimensions and their SI units with abbreviations.
],
  kind: "table",
  supplement: [Table],
) <tab:modelandexperiment:siunits>

From the base dimensions, one can obtain "derived" dimensions such as "speed" which is a measure of how fast an object is moving. The dimension of speed is $L \/ T$ (length over time) and the corresponding SI unit is m/s (meters per second)#footnote[Note that we can also write meters per second as m$dot.c$s#super[-1], but we often use a divide by sign if the power of the unit in the denominator is 1.]. Many of the derived dimension have corresponding derived SI units which can be expressed in terms of the base SI units. @tab:modelandexperiment:derivedsiunits shows a few derived dimensions and their corresponding SI units and how those SI units are obtained from the base SI units.

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 3, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Dimension*
],
[
*SI unit*
],
[
*SI base units*
],
[
Speed \[L/T\]
],
[
meter per second \[m/s\]
],
[
\[m/s\]
],
[
Frequency \[1/T\]
],
[
hertz \[Hz\]
],
[
\[1/s\]
],
[
Force \[M$dot.c$L$dot.c$T#super[-2]\]
],
[
newton \[N\]
],
[
\[kg$dot.c$m$dot.c$s#super[-2]\]
],
[
Energy \[M$dot.c$L$""^2 dot.op$T#super[-2]\]
],
[
joule \[J\]
],
[
\[N$dot.c$m=kg$dot.c$m$""^2 dot.op$s#super[-2]\]
],
[
Power \[M$dot.c$L$""^2 dot.op$T#super[-3]\]
],
[
watt \[W\]
],
[
\[J/s=kg$dot.c$m$""^2 dot.op$s#super[-3]\]
],
[
Electric Charge \[I$dot.c$ T\]
],
[
coulomb \[C\]
],
[
\[A$dot.c$ s\]
],
[
Voltage \[M$dot.c$L$""^2 dot.op$T$""^(-3) dot.op$I#super[-1]\]
],
[
volt \[V\]
],
[
\[J/C=kg$dot.c$m$""^2 dot.op$s$""^(-3) dot.op$A#super[-1]\]
],
),
  caption: [
Example of derived dimensions and their SI units with abbreviations.
],
  kind: "table",
  supplement: [Table],
) <tab:modelandexperiment:derivedsiunits>

By convention, we can indicate the dimension of a quantity, $X$, by writing it in square brackets, $[ X ]$. For example, $[ X ] = I$, would mean that the quantity $X$ has the dimension $I$, so it has the dimension of electric current. Similarly, we can indicate the SI units of $X$ with $S I [ X ]$. Referring to @tab:modelandexperiment:siunits, since $X$ has the dimension of current, $S I [ X ] = A$.

==== Dimensional analysis <dimensional-analysis>

We call "dimensional analysis" the process of working out the dimensions of a quantity in terms of the base dimensions and a model prediction for that quantity. A few simple rules allow us to easily work out the dimensions of a derived quantity. Suppose that we have two quantities, $X$ and $Y$, both with dimensions. We then have the following rules to find the dimension of a quantity that depends on $X$ and $Y$:

+ Addition/Subtraction: You can only add or subtract two quantities if they have the same dimension: $[ X + Y ] = [ X ] = [ Y ]$
+ Multiplication: The dimension of the product, $[ X Y ]$ , is the product of the dimensions: $[ X Y ] = [ X ] dot.op [ Y ]$
+ Division: The dimension of the ratio, $[ X \/ Y ]$, is the ratio of the dimensions: $[ X \/ Y ] = [ X ] \/ [ Y ]$

The next two examples show how to apply dimensional analysis to obtain the unit or dimension of a derived quantity.

#noteBlock(heading: [Example 2.2])[
Acceleration has SI units of $upright m s^(-2)$ and force has the dimension of mass multiplied by acceleration. What are the dimensions and SI units of force, expressed in terms of the base dimensions and units?

#noteBlock(heading: [Solution])[
We can start by expressing the dimension of acceleration, since we know from its SI units that it must have the dimension of length over time squared.

$ [ upright a c c e l e r a t i o n ] = frac(L, T^2) $
Since force has the dimension of mass times acceleration, we have:

$ [ upright f o r c e ] = [ upright m a s s ] dot.op [ upright a c c e l e r a t i o n ] = M frac(L, T^2) $
and the SI units of force are thus:

$ upright S I [ f o r c e ] = upright k g dot.op upright m \/ s^2 $
Force is such a common dimension that it, like many other derived dimensions, has its own derived SI unit, the Newton \[N\].
]
]

#noteBlock(heading: [Example 2.3])[
Use @tab:modelandexperiment:derivedsiunits to show that voltage has the same dimension as force multiplied by speed and divided by electric current.

#noteBlock(heading: [Solution])[
According to @tab:modelandexperiment:derivedsiunits, voltage has the dimension:

$ upright [ v o l t a g e ] = M dot.op L^2 dot.op T^(-3) dot.op I^(-1) $
while force, speed and current have dimensions:

$ upright [ f o r c e ] & = upright M dot.op L dot.op T^(-2) \
upright [ s p e e d ] & = upright L dot.op T^(-1) \
upright [ c u r r e n t ] & = upright I $
The dimension of force multiplied by speed divided by electric charge

$ [ frac(upright f o r c e dot.op s p e e d, upright c u r r e n t) ] & = frac(upright [ f o r c e ] dot.op [ s p e e d ], upright [ c u r r e n t ]) = frac(upright M dot.op L dot.op T^(-2) dot.op L dot.op T^(-1), upright I) \
& = upright M dot.op L^2 dot.op T^(-3) dot.op I^(-1) $
where, in the last line, we combined the powers of the same dimensions. By inspection, this is the same dimension as voltage.
]
]

When you build a model to predict the value of a physical quantity, you should always use dimensional analysis to ensure that the dimension of the quantity your model predicts is correct.

#noteBlock(heading: [Example 2.4])[
Your model predicts that the speed, $v$, of an object of mass $m$, after having fallen a distance $h$ on the surface of a planet with mass $M$ and radius $R$ is given by:

$ v = frac(m M h, R) $
Is this a reasonable prediction?

#noteBlock(heading: [Solution])[
First, we can see that the speed will be larger if $h$ is bigger, which makes sense, since we expect the speed to be greater if the object fell a greater distance. Similarly, we expect that the speed would be higher if the mass of the planet, $M$, is larger, as it would exert a larger gravitational force, as given by this model. We also expect that the object will have a greater speed if it has a larger mass, $m$, if the drag from the atmosphere on the planet is significant. Finally, if the radius of the planet $R$ is larger, we would expect the speed to be smaller, as the planet would be less dense and exert less gravitational force at its surface. However, if we verify the dimensions for the prediction of $v$, we find the model does not predict dimensions of speed:

$ [ v ] & = frac([ m ] [ M ] [ h ], [ R ]) \
& = frac(M M L, L) = M^2 $
and our model predicts a speed with dimensions of mass squared. By performing simple dimensional analysis, we can easily confirm that our model is definitely wrong. You should always check the dimensions of any model prediction, to make sure it is correct.
]
]

#attentionBlock(heading: [Olivia's Thoughts])[
In this section, we were given three rules for combining dimensions. You'll notice that these rules are the same as the rules for algebra, except you're using dimensions instead of $x$'s and $y$'s. So, you can really just approach dimensional analysis problems as you would algebra problems.

There are some basic steps you can follow when you are trying to find the SI units for a value/variable in your equation. I'll go through @ex:modelandexperiment:forcesi in a bit of a different way. Let's say that you have the equation $F = m a$ and this time, you know the dimensions of $F$ and $m$, and you want to find the dimensions of $a$:

+ Rewrite the values/variables in your equation in terms of their dimensions, leaving all other operations (multiplication, exponents, etc.) as is: $F = m dot.op a arrow.r [ F ] = [ m ] dot.op [ a ]$
+ Rearrange for your unknown dimension: $[ a ] = frac([ F ], [ m ])$
+ Substitute in your known dimensions: $[ a ] = frac([ F ], [ m ]) arrow.r [ a ] = frac(M L T^(-2), M) = frac(M L, M T^2)$
+ Solve using the rules of algebra: $[ a ] = frac(L, T^2)$ (where we just cancelled out the $M$'s)
+ Replace the dimensions with their corresponding SI units: $[ a ] = frac(L, T^2) arrow.r S I [ a ] = frac(m, s^2)$
]

#tipBlock(heading: [Checkpoint])[
In Chloe's theory of falling objects from #link("/introduction\#chap-introduction")[Section~1.1], the time, $t$, for an object to fall a distance, $x$, was given by $t = k sqrt(x)$. What must the SI units of Chloe's constant, $k$, be?\}

+ $upright T . L^(frac(1, 2))$
+ $upright T . L^(-frac(1, 2))$
+ $upright s . m^(frac(1, 2))$
+ $upright s . m^(-frac(1, 2))$

#tipBlock(heading: [Answer])[
+
]
]

Dimensional analysis can also be used to determine formulas (usually to within an order of magnitude). One famous example of this is when a British physicist named G.I. Taylor was able to determine a formula that showed how the blast radius of an atomic bomb scaled with time. Using pictures of the first atomic bomb explosion, he was able to determine the amount of energy released in the explosion, which was classified information at the time.

#noteBlock(heading: [Example 2.5])[
Find a formula that shows how the blast radius, $r$, scales with the time since the explosion, $t$, where the radius also depends on the energy released in the explosion, $E$, and the density of the medium into which the bomb explodes, $rho$.

#noteBlock(heading: [Solution])[
We want to find out how the blast radius scales with time, so we want an expression that relates $r$ to some combination of $E$, $rho$, and $t$:

$ r tilde E^x rho^y t^z $
where $x$, $y$, and $z$ are our unknown exponents, since we don't know yet how we will combine $E$, $rho$, and $t$. However, we do know that when we combine these quantities, we have to get the correct dimension (length) for the radius:

$ [ r ] = [ E ]^x [ rho ]^y [ t ]^z $
We know the dimensions for radius and time, and the dimension for $E$ can be found in Table \\ref\{tab:modelandexperiment:derivedSIunits\}. Density is mass divided by volume, so its dimension is $M \/ L^3$. Our equation then becomes:

$ L & =(M L^2 T^(-2))^x (M L^(-3))^y (T)^z \
L & =(M^x L^(2 x) T^(-2 x))(M^y L^(-3 y))(T^z) \
 $
We have three unknowns, so we need three equations. We can recognize that the left hand side (with dimension of length, $L$) is equivalent to $L^1 dot.op M^0 dot.op T^0$. We can then separate the above expression into three equations, one for each of $M$, $L$, and $T$:

$ M^0 & = M^x M^y arrow.r 0 = x + y \
L^1 & = L^(2 x) L^(-3 y) arrow.r 1 = 2 x -3 y \
T^0 & = T^(-2 x) T^z arrow.r 0 = z -2 x $
Solving the sytem of equations, we find that $x = 1 \/ 5$, $y = -1 \/ 5$, and $z = 2 \/ 5$.
So, the combination of $E$, $rho$, and $t$ that gives us the dimension of length is:

$ r prop E^(1 \/ 5) rho^(-1 \/ 5) t^(2 \/ 5) \
therefore r prop t^(2 \/ 5) $
You can also write this equation as:

$ r prop root(5, frac(E t^2, rho)) \
 $
Thus, by measuring the blast radius at some time, and knowing the density of the air, you can estimate the energy that was released during the explosion.
]
]

=== Making measurements <making-measurements>

Having introduced some tools for the modelling aspect of physics, we now address the other side of physics, namely performing experiments. Since the goal of developing theories and models is to describe the real world, we need to understand how to make meaningful measurements that test our theories and models.

Suppose that we wish to test Chloe's theory of falling objects from #link("/introduction\#chap-introduction")[Section~1.1]:

$ t = k sqrt(x) $
which states that the time, $t$, for any object to fall a distance, $x$, near the surface of the Earth is given by the above relation. The theory assumes that Chloe's constant, $k$, is the same for any object falling any distance on the surface of the Earth.

One possible way to test Chloe's theory of falling objects is to measure $k$ for different drop heights to see if we always obtain the same value. Results of such an experiment are presented in Table \\ref\{tab:modelandexperiment:kmes\}, where the time, $t$, was measured for a bowling ball to fall distances of $x$ between $1 upright m$ and $5 upright m$. The table also shows the values computed for $sqrt(x)$ and the corresponding value of $k = t \/ sqrt(x)$:

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 4, header-rows: 1, repeat-header: true, ..tableStyle,
[
*x* \[m\]
],
[
*t* \[s\]
],
[
#strong[$sqrt(x)$]  $upright [ m^(frac(1, 2)) ]$
],
[
*k*  $upright [ s . m^(-frac(1, 2)) ]$
],
[
1.00
],
[
0.33
],
[
1.00
],
[
0.33
],
[
2.00
],
[
0.74
],
[
1.41
],
[
0.52
],
[
3.00
],
[
0.67
],
[
1.73
],
[
0.39
],
[
4.00
],
[
1.07
],
[
2.00
],
[
0.54
],
[
5.00
],
[
1.10
],
[
2.24
],
[
0.49
],
),
  caption: [
Measurements of the drop times, $t$, for a bowling ball to fall different distances, $x$. We have also computed $sqrt(x)$ and the corresponding value of $k$.
],
  kind: "table",
  supplement: [Table],
) <tab:modelandexperiment:kmes>

When looking at @tab:modelandexperiment:kmes, it is clear that each drop height gave a different value of $k$, so at face value, we would claim that Chloe's theory is incorrect, as there does not seem to be a value of $k$ that applies to all situations. However, we would be incorrect in doing so unless we understood _the precision of the measurements_ that we made. Suppose that we *repeated* the measurement multiple times at a *fixed* drop height of $x = 3 upright m$, and obtained the values in @tab:modelandexperiment:kmes_3m.

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 4, header-rows: 1, repeat-header: true, ..tableStyle,
[
*x* \[m\]
],
[
*t* \[s\]
],
[
#strong[$sqrt(x)$]  $upright [ m^(frac(1, 2)) ]$
],
[
*k*  $upright [ s . m^(-frac(1, 2)) ]$
],
[
3.00
],
[
1.01
],
[
1.73
],
[
0.58
],
[
3.00
],
[
0.76
],
[
1.73
],
[
0.44
],
[
3.00
],
[
0.64
],
[
1.73
],
[
0.37
],
[
3.00
],
[
0.73
],
[
1.73
],
[
0.42
],
[
3.00
],
[
0.66
],
[
1.73
],
[
0.38
],
),
  caption: [
Repeated measurements of the drop time, $t$, for a bowling ball to fall a distance $x = 3 upright m$. We have also computed $sqrt(x)$ and the corresponding value of $k$.
],
  kind: "table",
  supplement: [Table],
) <tab:modelandexperiment:kmes_3m>

This simple example highlights the critical aspect of making any measurement: it is impossible to make a measurement with infinite precision. The values in @tab:modelandexperiment:kmes_3m show that if we repeat the exact same experiment, we are likely to measure different values for a single quantity. In this case, for a fixed drop height, $x = 3 upright m$, we obtained a spread in values of the drop time, $t$, between roughly $0 . 6 upright s$ and $1 . 0 upright s$. Does this mean that it is hopeless to do science, since we can never repeat measurements? Thankfully, no! It does however require that we deal with the inherent imprecision of measurements in a formal manner.

==== Measurement uncertainties <sec:modelandexperiment:uncertainties>

The values in @tab:modelandexperiment:kmes_3m show that for a fixed experimental setup (a drop height of $3 upright m$), we are likely to measure a spread in the values of a quantity (the time to drop). We can quantify this "uncertainty" in the value of the measured time by quoting the measured value of $t$ by providing a "central value" and an "uncertainty":

$ t = 0 . 7 6 plus.minus 0 . 1 5 upright s $
where $0 . 7 6 upright s$ is called the "central value" and $0 . 1 5 upright s$ the "uncertainty" or the "error'. Note that we use the word error as a synonym for uncertainty, not \`\`mistake". When we present a number with an uncertainty, we mean that we are "pretty certain" that the true value is in the range that we quote. In this case, the range that we quote is that $t$ is between $0 . 6 1 upright s$ and $0 . 9 1 upright s$ (given by $0 . 7 6 upright s -0 . 1 5 upright s$ and $0 . 7 6 upright s + 0 . 1 5 upright s$). When we say that we are "pretty sure" that the value is within the quoted range, we usually mean that there is a 68% chance of this being true and allow for the possibility that the true value is actually outside the range that we quoted. The value of 68% comes from statistics and the normal distribution.

#attentionBlock(heading: [Emma's Thoughts])[
*"Precision", "Accuracy" and "Uncertainty" - what's the difference?*

Have you ever started writing a lab report and wondered whether or not you should describe your measurement in terms of "accuracy" or "precision"? What about describing the error in your experiment as a measure of "accuracy" or "uncertainty"?

You're not alone! Precision, accuracy and uncertainty all relate to error, but have different meanings. To clarify these terms, I think it is useful to study them side-by-side.

*Precision* refers to how close your measurements are to each other when you repeat a measurement multiple times. If the values obtained are close to one another, your measurements are precise. For example, say you were measuring the rebound height of a basketball, dropped from a fixed height. After performing the measurement multiple times, you find that the measured rebound heights are very close in value to each other. You could then report that "After repeating our measurement multiple times, the values that we obtained were very close together. Our measurements were precise!". Of course, you have to specify what you mean by "close" (perhaps in terms of the divisions on the ruler that you used to measure rebound height).

*Accuracy* measures the agreement between a measured value and its true value. If the measured value is close to the true value, your measured value is accurate. For example, say that you developed a model for the distance covered by a rock thrown with a slingshot. If you find that the measured value is close to the predicted value, you would say that your model is accurate, "Our model value was very close to the value that we measured - our model was accurate." Again, you have to specify what you mean by "close", usually in terms of the uncertainty on your measured value.

*Uncertainty* is an estimate of the amount that a measurement will differ from a true value. In science, we aim to lower the uncertainty in our measurements, so that we can test models and theories with more precision. Let's say that you are measuring the number of rotations of a spinning top during a certain period of time. Your measurements are close together, but have a fixed range of values. This would be an example where you could calculate the uncertainty in your measurements. It would be sensible to say "After multiple measurements, we've found that our values are similar and our uncertainty captures the range of values that we measured."
]

==== Determining the central value and uncertainty <sec:modelandexperiment:determiningu>

The tricky part when performing a measurement is to decide how to assign a central value and an uncertainty. For example, how did we come up with $t = 0 . 7 6 plus.minus 0 . 1 5 upright s$ from the values in @tab:modelandexperiment:kmes_3m?

Determining the uncertainty and central value on a measurement is greatly simplified when one can repeat the same measurement multiple times, as we did in @tab:modelandexperiment:kmes_3m. With repeatable measurements, a reasonable choice for the central value and uncertainty is to use the *mean* and *standard deviation* of the measurements, respectively.

If we have $N$ measurements of some quantity $t$, ${t_1, t_2, t_3, dots.h t_N}$, then the mean, $bar t$, and standard deviation, $sigma_t$, are defined as:

$ bar t & = frac(1, N) sum_(i = 1)^(i = N) t_i = frac(t_1 + t_2 + t_3 + dots.h + t_N, N) \
sigma_t^2 & = frac(1, N -1) sum_(i = 1)^(i = N)(t_i -bar t)^2 = frac((t_1 -bar t)^2 +(t_2 -bar t)^2 +(t_3 -bar t)^2 + dots.h +(t_N -bar t)^2, N -1) \
sigma_t & = sqrt(sigma_t^2) $
The mean is just the arithmetic average of the values, and the standard deviation, $sigma_t$, requires one to first calculate the mean, then the variance ($sigma^2_t$, the square of the standard deviation). You should also note that for the variance, we divide by $N -1$ instead of $N$. The standard deviation and variance are quantities that come from statistics and are a good measure of how spread out the values of $t$ are about their mean, and are thus a good measure of the uncertainty.

#noteBlock(heading: [Example 2.6])[
Calculate the mean and standard deviation of the values for $k$ from @tab:modelandexperiment:kmes_3m.

#noteBlock(heading: [Solution])[
In order to calculate the standard deviation, we first need to calculate the mean of the $N = 5$ values of $k$: ${0 . 5 8, 0 . 4 4, 0 . 3 7, 0 . 4 2, 0 . 3 8}$. The mean is given by:

$ bar k = frac(0 . 5 8 + 0 . 4 4 + 0 . 3 7 + 0 . 4 2 + 0 . 3 8, 5) = 0 . 4 4 upright s . m^(-frac(1, 2)) $
We can now calculate the variance using the mean:

$ sigma^2_k & = frac(1, 4) [(0 . 5 8 -0 . 4 4)^2 +(0 . 4 4 -0 . 4 4)^2 \
& +(0 . 3 7 -0 . 4 4)^2 +(0 . 4 2 -0 . 4 4)^2 +(0 . 3 8 -0 . 4 4)^2 ] = 7 . 3 e -3 upright s^2 . m $
and the standard deviation is then given by the square root of the variance:

$ sigma_k = sqrt(0 . 0 0 7 3) = 0 . 0 9 upright s . m^(-frac(1, 2)) $
Using the mean and standard deviation, we would quote our value of $k$ as :

$ k = 0 . 4 4 plus.minus 0 . 0 9 upright s . m^(-frac(1, 2)) $
]
]

Any value that we measure will always have an uncertainty. In the case where we can easily repeat the measurement, we should do so to evaluate how reproducible it is, and the standard deviation of those values is usually a good first estimate of the uncertainty in a value#footnote[In practice, the standard deviation is an overly conservative estimate of the error and we would use the error on the mean, which is the standard deviation divided by the square root of the number of measurements.]. Sometimes, the measurements cannot easily be reproduced; in that case, it is still important to determine a reasonable uncertainty, but in this case, it usually has to be estimated.  @tab:modelandexperiment:uncertainties shows a few common types of measurements and how to determine the uncertainties in those measurements.

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Type of measurement*
],
[
*How to determine central value and uncertainty*
],
[
Repeated measurements
],
[
Mean and standard deviation
],
[
Single measurement with a graduated scale (e.g. ruler, digital scale, analogue meter)
],
[
Closest value and half of the smallest division
],
[
Counted quantity
],
[
Counted value and square root of the value
],
),
  caption: [
Different types of measurements and how to assign central values uncertainties.
],
  kind: "table",
  supplement: [Table],
) <tab:modelandexperiment:uncertainties>

#show figure: set block(breakable: true)
#figure(
  image("files/ruler-363cbcff3850a55b9c486b9bbf87b570.png", width: 40%),
  caption: [
The length of the grey rectangle would be quoted as $L = 2 . 8 plus.minus 0 . 0 5 upright c m$ using the rule of "half the smallest division".
],
  kind: "figure",
  supplement: [Figure],
) <fig:modelandexperiment:ruler>

For example, we would quote the length of the grey object in @fig:modelandexperiment:ruler to be $L = 2 . 8 plus.minus 0 . 0 5 upright c m$ based on the rules in @tab:modelandexperiment:uncertainties, since $2 . 8 upright c m$ is the closest value on the ruler that matches the length of the object and $0 . 5 upright m m$ is half of the smallest division on the ruler. Using half of the smallest division of the ruler means that our uncertainty range covers one full division. Note that it is usually better to reproduce a measurement to evaluate the uncertainty instead of using half of the smallest division, although half of the smallest division should be the lower limit on the uncertainty. That is, by repeating the measurements and obtaining the standard deviation, you should see if the uncertainty is _larger_ than half of the of the smallest division, not smaller.

The *relative uncertainty* in a measured value is given by dividing the uncertainty by the central value, and expressing the result as a percent. For example, the relative uncertainty in $t = 0 . 7 6 plus.minus 0 . 1 5 upright s$ is given by $0 . 1 5 \/ 0 . 7 6 = 2 0 %$. The relative uncertainty gives an idea of how precisely a value was determined. Typically, a value above 10% means that it was not a very precise measurement, and we would generally consider a value smaller than 1% to correspond to quite a precise measurement.

===== Random and systematic sources of error/uncertainty <random-and-systematic-sources-of-error-uncertainty>

It is important to note that there are two possible sources of uncertainty in a measurement. The first is called "statistical" or "random" and occurs because it is impossible to exactly reproduce a measurement. For example, every time you lay down a ruler to measure something, you might shift it slightly one way or the other which will affect your measurement. The important property of random sources of uncertainty is that if you reproduce the measurement many times, these will tend to cancel out and the mean can usually be determined to high precision with enough measurements.

The other source of uncertainty is called "systematic". Systematic uncertainties are much more difficult to detect and to estimate. One example would be trying to measure something with a scale that was not properly tarred (where the 0 weight was not set). You may end up with very small random errors when measuring the weights of object (very repeatable measurements), but you would have a hard time noticing that all of your weights were offset by a certain amount unless you had access to a second scale. Some common examples of systematic uncertainties are: incorrectly calibrated equipment, parallax error when measuring distance, reaction times when measuring time, effects of temperature on materials, etc.

As a reminder, we want to emphasize the difference between "error" and "mistake" in the context of making measurements. "Uncertainty" or "error" in a measurement comes from the fact that it is impossible to measure anything to infinite accuracy. A "mistake" also affects a measurement, but is preventable. If a "mistake" occurs in physics, the experiment is generally re-done and the previous data are discarded. The term "human error" should never be used in a lab report as it implies that a mistake was made. Instead, if you think that you measured time imprecisely, for example, refer to "human reaction time", not "human error".

@tab:modelandexperiment:humanerror shows examples of sources of error that students often call "human error" but that should, instead, be described more precisely.

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Situation*
],
[
*Source of Error*
],
[
While taking measurements, your line of sight was not completely parallel to the measuring device.
],
[
This is parallax error - a type of systematic error.
],
[
You incorrectly performed calculations.
],
[
Mistake! Redo the calculations.
],
[
A draft of wind in the lab slightly altered the direction of your ball rolling down an incline.
],
[
This is an environmental effect/error - it could be random or systematic, depending on whether it always had the same effect.
],
[
Your hand slipped while holding the ruler - the object was measured to be twice its original size!
],
[
Mistake! Redo this experiment and discard the data.
],
[
When timing an experiment, you don't hit the ''STOP'' button exactly when the experiment stops.
],
[
Reaction time error - usually a systematic error (time is usually measured longer than it is).
],
),
  caption: [
Don't use the term "human error", instead, use these.
],
  kind: "table",
  supplement: [Table],
) <tab:modelandexperiment:humanerror>

===== Propagating uncertainties <propagating-uncertainties>

Going back to the data in @tab:modelandexperiment:kmes_3m, we found that for a known drop height of $x = 3 upright m$, we measured different values of the drop time, which we found to be $t = 0 . 7 6 plus.minus 0 . 1 5 upright s$ (using the mean and standard deviation). We also calculated a value of $k$ corresponding to each value of $t$, and found $k = 0 . 4 4 plus.minus 0 . 0 9 upright s . m^(-frac(1, 2))$ (@ex:modelandexperiment:stdcalc).

Suppose that we did not have access to the individual values of $t$, but only to the value of $t = 0 . 7 6 plus.minus 0 . 1 5 upright s$ with uncertainty. How do we calculate a value for $k$ with uncertainty? In order to answer this question, we need to know how to "propagate" the uncertainties in a measured value to the uncertainty in a value derived the measured value. We briefly present different methods for propagating uncertainties, before advocating for the use of computers to do the calculations for you.

+ *Estimate using relative uncertainties* The relative uncertainty in a measurement gives us an idea of how precisely a value was determined. Any quantity that depends on that measurement should have a precision that is similar; that is, we expect the relative uncertainty in $k$ to be similar to that in $t$. For $t$, we saw that the relative uncertainty was approximately 20%. If we take the central value of $k$ to be the central value of $t$ divided by $sqrt(x)$, we find:

$ k = frac((0 . 7 6 upright s), sqrt((3 upright m))) = 0 . 4 4 upright s . m^(-frac(1, 2)) $
Since we expect the relative uncertainty in $k$ to be approximately 20%, then the absolute uncertainty is given by:

$ sigma_k =(0 . 2) k = 0 . 0 9 upright s . m^(-frac(1, 2)) $
which is close to the value obtained by averaging the five values of $k$ in @tab:modelandexperiment:kmes_3m.

+ *The Min-Max method* A pedagogical way to determine $k$ and its uncertainty is to use the "Min-Max method". Since $k = t \/ sqrt(x)$, $k$ will be the biggest when $t$ is the biggest, and the smallest when $t$ is the smallest. We can thus determine "minimum" and "maximum" values of $k$ corresponding to the minimum value of $t$, $t^(m i n) = 0 . 6 1 upright s$ and the maximum value of $t$, $t^(m a x) = 0 . 9 1 upright s$:

$ k^(m i n) & = frac(t^(m i n), sqrt(x)) = frac(0 . 6 1 thin s, sqrt((3 thin m))) = 0 . 3 5 upright s . m^(-frac(1, 2)) \
k^(m a x) & = frac(t^(m a x), sqrt(x)) = frac(0 . 9 1 thin s, sqrt((3 thin m))) = 0 . 5 3 upright s . m^(-frac(1, 2)) \
 $
This gives us the range of values of $k$ that correspond to the range of values of $t$. We can choose the middle of the range as the central value of $k$ and half of the range as the uncertainty:

$ bar k & = frac(1, 2)(k^(m i n) + k^(m a x)) = 0 . 4 4 upright s . m^(-frac(1, 2)) \
sigma_k & = frac(1, 2)(k^(m a x) -k^(m i n)) = 0 . 0 9 upright s . m^(-frac(1, 2)) \
therefore k & = 0 . 4 4 plus.minus 0 . 0 9 upright s . m^(-frac(1, 2)) $
which, in this case, gives the same value as that obtained by averaging the individual values of $k$. While the Min-Max method is useful for illustrating the concept of propagating uncertainties, we usually do not use it in practice as it tends to overestimate the uncertainty.

+ *The derivative method* In the example above, we assumed that the value of $x$ was known precisely (and we chose 3,m), which of course is not realistic. Let us suppose that we have measured $x$ to within $1 upright c m$ so that $x = 3 . 0 0 plus.minus 0 . 0 1 upright m$. The task is now to calculate $k = frac(t, sqrt(x))$ when both $x$ and $t$ have uncertainties.

The derivative method lets us propagate the uncertainty in a general way, so long as the relative uncertainties on all quantities are "small" (less than 10-20%). If we have a function, $F(x, y)$ that depends on multiple variables with uncertainties (e.g. $x plus.minus sigma_x$, $y plus.minus sigma_y$), then the central value and uncertainty in $F(x, y)$ are given by:

$ bar F & = F(bar x, bar y) \
sigma_F & = sqrt((frac(d F, d x) sigma_x)^2 +(frac(d F, d y) sigma_y)^2) $
That is, the central value of the function $F$ is found by evaluating the function at the central values of $x$ and $y$. The uncertainty in $F$, $sigma_F$, is found by taking the quadrature sum of the partial derivatives of $F$ evaluated at the central values of $x$ and $y$ multiplied by the uncertainties in the corresponding variables that $F$ depends on. The uncertainty will contain one term in the sum per variable that $F$ depends on.

In #link("\#app:python")[Appendix D], we will show you how to calculate this easily with a computer, so do not worry about getting comfortable with partial derivatives (yet!). Note that the partial derivative, $frac(d F, d x)$, is simply the derivative of $F(x, y)$ relative to $x$ evaluated as if $y$ were a constant. Also, when we say "add in quadrature", we mean square the quantities, add them, and then take the square root (same as you would do to calculate the hypotenuse of a right-angle triangle).

#noteBlock(heading: [Example 2.7])[
Use the derivative method to evaluate $k = frac(t, sqrt(x))$ for $x = 3 . 0 0 plus.minus 0 . 0 1 upright m$ and $t = 0 . 7 6 plus.minus 0 . 1 5 upright s$.

#noteBlock(heading: [Solution])[
Here, $k = k(x, t)$ is a function of both $x$ and $t$. The central value is easily found using the central values for $x$ and $t$:

$ bar k = frac(t, sqrt(x)) = frac((0 . 7 6 upright s), sqrt((3 upright m))) = 0 . 4 4 upright s . m^(-frac(1, 2)) $
Next, we need to determine and evaluate the partial derivative of $k$ with respect to $t$ and $x$:

$ frac(d k, d t) & = frac(1, sqrt(x)) frac(d, d t) t = frac(1, sqrt(x)) = frac(1, sqrt((3 upright m))) = 0 . 5 8 upright m^(-frac(1, 2)) \
frac(d k, d x) & = t frac(d, d x) x^(-frac(1, 2)) = -frac(1, 2) t x^(-frac(3, 2)) = -frac(1, 2)(0 . 7 6 upright s)(3 . 0 0 upright m)^(-frac(3, 2)) = -0 . 0 7 3 upright s . m^(-frac(3, 2)) $
And finally, we plug this into the quadrature sum to get the uncertainty in $k$:\\

$ sigma_k & = sqrt((frac(d k, d x) sigma_x)^2 +(frac(d k, d t) sigma_t)^2) \
& = sqrt(((0 . 0 7 3 upright s . m^(-frac(3, 2)))(0 . 0 1 upright m))^2 +((0 . 5 8 upright m^(-frac(1, 2)))(0 . 1 5 upright s))^2) \
& = 0 . 0 9 upright s . m^(-frac(1, 2)) $
So we find that:

$ k & = 0 . 4 4 plus.minus 0 . 0 9 upright s . m^(-frac(1, 2)) $
which is consistent with what we found with the other two methods.

*Discussion:* We should ask ourselves if the value we found is reasonable, since we also included an uncertainty in $x$ and would expect a bigger uncertainty than in the previous calculations where we only had an uncertainty in $t$. The reason that the uncertainty in $k$ has remained the same is that the relative uncertainty in $x$ is very small, $frac(0 . 0 1, 3 . 0 0) tilde 0 . 3 %$, so it contributes very little compared to the 20% uncertainty from $t$.
]
]

The derivative method leads to a few simple short cuts when propagating the uncertainties for simple operations, as shown in @tab:modelandexperiment:prop_uncertainties. A few rules to note:

+ Uncertainties should be combined in quadrature
+ For addition and subtraction, add the absolute uncertainties in quadrature
+ For multiplication and division, add the relative uncertainties in quadrature

\\begin\{table\}\[H\]
\\centering
\\begin\{tabular\}\{p\{2.5in\}p\{2in\}\}
#strong[Operation to get $z$] \&#strong[Uncertainty in $z$] \\
\\hline
\\hline
$z = x + y$ (addition) \&  $sigma_z = sqrt(sigma_x^2 + sigma_y^2)$ \\ \\hline
$z = x -y$ (subtraction) \& $sigma_z = sqrt(sigma_x^2 + sigma_y^2)$ \\ \\hline
$z = x y$ (multiplication) \& $sigma_z = x y sqrt((frac(sigma_x, x))^2 +(frac(sigma_y, y))^2)$ \\ \\hline
$z = frac(x, y)$ (division) \& $sigma_z = frac(x, y) sqrt((frac(sigma_x, x))^2 +(frac(sigma_y, y))^2)$ \\ \\hline
$z = f(x)$ (a function of 1 variable) \&$sigma_z = | frac(d f, d x) sigma_x |$ \\ \\hline
\\end\{tabular\}
\\caption\{:label: tab:modelandexperiment:prop\_uncertainties How to propagate uncertainties from measured values $x plus.minus sigma_x$ and $y plus.minus sigma_y$ to a quantity $z(x, y)$ for common operations.\}
\\end\{table\}

#tipBlock(heading: [Checkpoint])[
We have measured that a llama can cover a distance of $2 0 . 0 plus.minus 0 . 5 upright m$ in $4 . 0 plus.minus 0 . 5 upright s$. What is the speed (with uncertainty) of the llama?

#tipBlock(heading: [Answer])[
$5 . 0 plus.minus 0 . 6 upright m \/ s$
]
]

==== Using graphs to visualize and analyse data <using-graphs-to-visualize-and-analyse-data>

@tab:modelandexperiment:kmes2 below reproduces our measurements of how long it took ($t$) for an object to drop a certain distance, $x$.  Chloe's Theory of gravity predicted that the data should be described by the following model:

$ t = k sqrt(x) $
where $k$ was an undetermined constant of proportionality.

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 4, header-rows: 1, repeat-header: true, ..tableStyle,
[
*x* \[m\]
],
[
*t* \[s\]
],
[
#strong[$sqrt(x)$]  $upright [ m^(frac(1, 2)) ]$
],
[
*k*  $upright [ s . m^(-frac(1, 2)) ]$
],
[
1.00
],
[
0.33
],
[
1.00
],
[
0.33
],
[
2.00
],
[
0.74
],
[
1.41
],
[
0.52
],
[
3.00
],
[
0.67
],
[
1.73
],
[
0.39
],
[
4.00
],
[
1.07
],
[
2.00
],
[
0.54
],
[
5.00
],
[
1.10
],
[
2.24
],
[
0.49
],
),
  caption: [
Measurements of the drop times, $t$, for a bowling ball to fall different distances, $x$. We have also computed $sqrt(x)$ and the corresponding value of $k$.
],
  kind: "table",
  supplement: [Table],
) <tab:modelandexperiment:kmes2>

The easiest way to visualize and analyse these data is to plot them on a graph. In particular, if we plot (graph) $t$ versus $sqrt(x)$, we  expect that the points will fall on a straight line that goes through zero, with a slope of $k$ (if the data are described by Chloe's Theory). In #link("\#app:python")[Appendix D], we show you how you can plot these data using the Python programming language as well as find the slope and offset of the line that best fits the data, as show in @fig:modelandexperiment:tvssqx.

#show figure: set block(breakable: true)
#figure(
  image("files/tvssqx-1a7c2fcaca59bc03d2d4e404d143d11a.png", width: 75%),
  caption: [
Graph of $t$ versus $sqrt(x)$ and line of best fit with error band.
],
  kind: "figure",
  supplement: [Figure],
) <fig:modelandexperiment:tvssqx>

When plotting data and fitting them to a straight line (or other function), it is important to make sure that the experimental values have at least an uncertainty in the quantity that is being plotted on the $y$ axis. In this case, we have assumed that all of the measurements of time have an uncertainty of $0 . 1 5 upright s$ and that the measurements of the distance have no (or negligible) uncertainties.

Since we expect the slope of the data to be $k$, finding the line of best fit provides us a with method to determine $k$ by using all of the data points. In this case, we find that $k = 0 . 6 1 plus.minus 0 . 1 3 upright s . m^(-frac(1, 2))$. *Performing a linear fit of the data is the best way to determine a constant of proportionality between the measurements*. Note that we expect the intercept to be equal to zero according to our model, but the best fit line has an intercept of $-0 . 2 4 plus.minus 0 . 2 2 upright s$, which is slightly below, but consistent, with zero. From these data, we would conclude that our measurements are consistent with Chloe's Theory. Again, remember that we can never confirm a theory, we can only exclude it; in this case, we cannot exclude Chloe's Theory with these data. If all of the data points did not sit along a straight line, we would conclude that either Chloe's Theory is invalidated, or that some form of error in the data was not taken into account.

==== Reporting measured values <reporting-measured-values>

Now that you know how to attribute an uncertainty to a measured quantity and then propagate that uncertainty to a derived quantity, you are ready to present your measurement to the world. In order to conduct "good science", your measurements should be reproducible, clearly presented, and precisely described. Here are general rules to follow when reporting a measured number:

+ Indicate the units, preferably SI units (use derived SI units, such as newtons, when appropriate).
+ Include a description of how the uncertainty was determined (if it is a direct measurement, how did you choose the uncertainty? If it is a derived quantity, how did you propagate the uncertainty?).
+ Show no more than 2 "significant digits"#footnote[Significant digits are those excluding leading and trailing zeroes.] in the uncertainty and format the central value to the same decimal as the uncertainty.
+ Use scientific notation when appropriate (usually numbers bigger than 1000 or smaller than 0.01).
+ Factor out the power 10 from the central value and uncertainty (e.g. $1 0 1 2 3 plus.minus 3 1 0 upright m$ would be better presented as $1 0 . 1 2 plus.minus 0 . 3 1 times 1 0^3 upright m$ or $1 0 1 . 2 plus.minus 3 . 1 times 1 0^2 upright m$).

#tipBlock(heading: [Checkpoint])[
Someone has measured the average height of tables in the laboratory to be $1 . 0 5 3 5 upright m$ with a standard deviation of $0 . 0 5 2 5 upright m$. What is the best way to present this measurement?

+ $1 . 0 5 3 5 plus.minus 0 . 0 5 2 5 upright m$
+ $1 . 0 5 4 plus.minus 0 . 0 5 3 upright m$
+ $1 0 5 . 4 plus.minus 5 . 3 e -2 upright m$
+ $1 0 5 . 3 5 plus.minus 5 . 2 5 upright c m$

#tipBlock(heading: [Answer])[
+
]
]

==== Comparing model and measurement - discussing a result <comparing-model-and-measurement-discussing-a-result>

In order to advance science, we make measurements and compare them to a theory or model prediction. We thus need a precise and consistent way to compare measurements with each other and with predictions. Suppose that we have measured a value for Chloe's constant $k = 0 . 4 4 plus.minus 0 . 0 9 upright s . m^(-frac(1, 2))$. Of course, Chloe's theory does not predict a value for $k$, only that fall time is proportional to the square root of the distance fallen. Isaac Newton's Universal Theory of Gravity does predict a value for $k$ of \$0.45 \{\\rm s.m\^\{-\\frac\{1\}\{2\}\}\} with negligible uncertainty. In this case, since the model (theoretical) value easily falls within the range given by our uncertainty, we would say that our measurement is consistent (or compatible) with the theoretical prediction.

Suppose that, instead, we had measured $k = 0 . 5 5 plus.minus 0 . 0 8 upright s . m^(-frac(1, 2))$ so that the lowest value compatible with our measurement, $k = 0 . 5 5 upright s . m^(-frac(1, 2)) -0 . 0 8 upright s . m^(-frac(1, 2)) = 0 . 4 7 upright s . m^(-frac(1, 2))$, is not compatible with Newton's prediction. Would we conclude that our measurement invalidates Newton's theory? The answer is: it depends... What "it depends on" should always be discussed any time that you present a measurement (even if your measurement _is_ compatible with a prediction - maybe that was a fluke). Below, we list a few common points that should be addressed when presenting a measurement that will guide you into deciding whether your measurement is consistent with a prediction:

- How was the uncertainty determined and/or propagated? Was this reasonable?
- Are there systematic effects that were not taken into account when determining the uncertainty? (e.g. reaction time, parallax, something difficult to reproduce).
- Are the relative uncertainties reasonable based on the precision that you would reasonably expect?
- What assumptions were made in calculating your measured value?
- What assumptions were made in determining the model prediction?

In the above, our value of $k = 0 . 5 5 plus.minus 0 . 0 8 upright s . m^(-frac(1, 2))$ is the result of propagating the uncertainty in $t$. It is thus conceivable that the true value of $t$, and therefore of $k$, is outside the range that we determined. Since our value of $k$ is still quite close to the predicted value, we would not claim to have invalidated Newton's theory with this measurement. The difference between our measurement and the predicted value is only 1.25 times $sigma_k$, so very close to the value of the uncertainty.

In a similar way, we can discuss whether two different measurements, each with an uncertainty, are compatible with each other. If the ranges given by uncertainties in two values overlap, then they are clearly compatible. If, on the other hand, the ranges do not overlap, they could be inconsistent or the discrepancy might instead be the result of how the uncertainties were determined and the measurements could still be considered consistent with each other.

$ bar t & = frac(1, N) sum_(i = 1)^(i = N) t_i = frac(t_1 + t_2 + t_3 + dots.h + t_N, N) \
sigma_t^2 & = frac(1, N -1) sum_(i = 1)^(i = N)(t_i -bar t)^2 = frac((t_1 -bar t)^2 +(t_2 -bar t)^2 +(t_3 -bar t)^2 + dots.h +(t_N -bar t)^2, N -1) \
sigma_t & = sqrt(sigma_t^2) $
You have to pay special attention to systematic uncertainties, which are difficult to determine. You should always think of ways that your measured values could be wrong, even after repeated measurements. Relative uncertainties tell you whether your measurement is precise.

There are multiple ways to propagate uncertainties. You can estimate the uncertainty using relative uncertainties or use the Min-Max method, which tends to overestimate the uncertainties. The preferred way to propagate uncertainties is with the derivative method, which you can use so long as the relative uncertainties on the measurements are small. If we have a function, $F(x, y)$ that depends on multiple variables with uncertainties (e.g. $x plus.minus sigma_x$, $y plus.minus sigma_y$), then the central value and uncertainty in $F(x, y)$ are given by:

$ bar F & = F(bar x, bar y) \
sigma_F & = sqrt((frac(d F, d x) sigma_x)^2 +(frac(d F, d y) sigma_y)^2) $
This can be easily calculated using a computer.

If you expect two measured quantities to be linearly related (one is proportional to the other), plot them to find out! Use a computer to do so!

#importantBlock(heading: [Important Equations])[
*Central value and uncertainty:*

$ bar t & = frac(1, N) sum_(i = 1)^(i = N) t_i = frac(t_1 + t_2 + t_3 + dots.h + t_N, N) \
sigma_t^2 & = frac(1, N -1) sum_(i = 1)^(i = N)(t_i -bar t)^2 = frac((t_1 -bar t)^2 +(t_2 -bar t)^2 +(t_3 -bar t)^2 + dots.h +(t_N -bar t)^2, N -1) \
sigma_t & = sqrt(sigma_t^2) $
*Derivative method:*

$ bar F & = F(bar x, bar y) \
sigma_F & = sqrt((frac(d F, d x) sigma_x)^2 +(frac(d F, d y) sigma_y)^2) $
#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
#strong[Operation to get $z$]
],
[
#strong[Uncertainty in $z$]
],
[
$z = x + y$ (addition)
],
[
$sigma_z = sqrt(sigma_x^2 + sigma_y^2)$
],
[
$z = x -y$ (subtraction)
],
[
$sigma_z = sqrt(sigma_x^2 + sigma_y^2)$
],
[
$z = x y$ (multiplication)
],
[
$sigma_z = x y sqrt((frac(sigma_x, x))^2 +(frac(sigma_y, y))^2)$
],
[
$z = frac(x, y)$ (division)
],
[
$sigma_z = frac(x, y) sqrt((frac(sigma_x, x))^2 +(frac(sigma_y, y))^2)$
],
[
$z = f(x)$ (a function of 1 variable)
],
[
\$\\sigma\_z=\\left
],
),
  caption: [
How to propagate uncertainties from measured values $x plus.minus sigma_x$ and $y plus.minus sigma_y$ to a quantity $z(x, y)$ for common operations.
],
  kind: "table",
  supplement: [Table],
) <tab:modelandexperiment:prop_uncertainties>
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- Often, physicists will report a measured number with a "standard" uncertainty and indicate that there is a 68% that the true value lies within the range covered by the uncertainty. Where does the number 68% come from?
- Why can the derivative method only be used when the relative uncertainties are small?
- How would you estimate the height of a tall building?
]

#seealsoBlock(heading: [Experiments to try at home])[
- Estimate the volume of your room, and how many people could be piled into the room. State your assumptions and how you determined the values.
]

#seealsoBlock(heading: [Experiments to try in the lab])[
- Newton's Universal Theory of gravity predicts that the distance, $x$, covered by an object that has fallen for a length of time, $t$, is given by:

$ x = frac(1, 2) g t^2 $
Determine the value of $g$ (with uncertainty) by performing an experiment that will allow you to determine $g$ by determining the slope of a line of best fit.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 2.1])[
During a physics lecture, you look under your seat and find a sheet containing data from an experiment on throwing balls vertically (perhaps a juggling experiment). The following equation is shown at the bottom of the sheet:

$ = frac(v_2^2 -v_1^2, 2 a) $
along with the following description:

- $v_1$ = initial measured velocity of the ball $upright m \/ s$ - various measurements.
- $v_2$ = final measured velocity of the ball $upright m \/ s$ - seems to be zero every time.
- $a$ = acceleration of the ball ($-9 . 8 upright m \/ s^2$).

Unfortunately, the students spilled ketchup on the left hand side of their equation, making it illegible. Luckily, you are proficient in dimensional analysis. What were the students trying to calculate, based on this model?\}
]

#noteBlock(heading: [Problem 2.2])[
Chelsea is preparing meticulously for her upcoming trip to Europe. Being a self-proclaimed "shop-a-holic" and physics lover, she wants to figure out how many pairs of shoes she can buy on vacation that will physically fit in her closet. Her closet is a walk-in closet with two entrance doors. Estimate the number of pairs of shoes that can fit in Chelsea's closet.
]

==== Solutions <solutions>

#noteBlock(heading: [Solution 2.1])[
We can use their equation to determine the dimension of the quantity on the left hand side:

$ [ ? ] & = frac([ v_2^2 ] -[ v_1^2 ], [ a ]) = frac((frac(L, T))^2 -(frac(L, T))^2, frac(L, T^2)) = L $
Thus, the dimension of the unknown quantity is length. Given the context, they were likely attempting to model the height at which a vertically thrown ball would travel before stopping.
]

#noteBlock(heading: [Solution 2.2])[
We start by estimating the volume of Chelsea's closet as well as that of a pair of shoes. Chelsea's closet is a \`\`walk-in closet' with two double doors. If we know the dimensions of the door, we can estimate the width and height of the closet. Estimating the average size of a large door to be $1 upright m times 2 upright m$, one face of the close will have an area of $4 upright m^2$. If we estimate the depth of Chelsea's closet to be about $3 upright m$, the volume of her closet is $1 2 upright m^3$

#show figure: set block(breakable: true)
#figure(
  image("files/chelseashoes-1cdd94359cfb5edcf50c4a2dafb2b741.png", width: 40%),
  caption: [
Chelsea's closet.
],
  kind: "figure",
  supplement: [Figure],
) <fig:modelandexperiment:chelseashoes>

Next, we can estimate the size of an average pair of shoes, by modelling a shoe as a rectangular box. A single shoe has a height and width of about $5 upright c m$ and a length of about $2 5 upright c m$. A pair of shoes will thus be equivalent to box with dimensions $5 upright c m times 1 0 upright c m times 2 5 upright c m = 1 2 5 0 upright c m^3$. This is equivalent to $0 . 0 0 1 2 5 upright m^3$. We can now determine how many pairs of shoes, $N$, would fit in the closet:

$ N = frac((1 2 upright m^3),(0 . 0 0 1 2 5 upright m^3)) = 9 6 0 0 approx 1 0, 0 0 0 $
We find that Chelsea can buy about 10,000 new pairs of shoes on her trip, and still fit them all into her closet. Time to get shopping, Chelsea!
]