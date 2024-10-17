/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 22 - Electromagnetic induction

=== Overview <chapter:induction>

In this chapter, we introduce the tools to model the connection between the magnetic and the electric field. In particular, we will see how a changing magnetic field can be used to induce an electric current, which is the basic principle behind the electric generators that power our life. We will also briefly discuss how electromagnetic waves are formed.

#hintBlock(heading: [Learning Objectives])[
- Understand how to apply Faraday's law to determine an induced voltage.
- Understand how to model the induced voltage in a moving conductor.
- Understand how to model an electric generator.
- Understand how electromagnetic induction affects electric motors.
- Understand how to model electric transformers.
- Understand how electromagnetic waves are formed.
]

#noteBlock(heading: [Think About It])[
How does one make electricity with a hydroelectric dam?

+ By running water through a coil to induce a current.
+ By using water to rotate a coil inside of a fixed magnetic field.
+ By using water to charge a metallic surface by friction, and then maintaining that potential difference.

#noteBlock(heading: [Answer])[
+
]
]

=== Faraday's Law <faradays-law>

In the previous chapter, we described how an electric current produces a magnetic field. In this chapter, we describe how an electric current can be produced (or rather, "induced") by a magnetic field. The most important aspect of electromagnetic induction is that it always involves quantities that change with time. In past chapters, we have only dealt with static electric and magnetic fields, static charges (for electric fields), and static currents (for magnetic fields).

Faraday's law connects the flux of a *time-varying* magnetic field to an induced voltage (rather than a current). For historical reasons, the induced voltage is also called an induced "electromotive force" (emf), even if it is a voltage and not a force. Faraday's law is as follows:

$ boxed Delta V = -frac(d Phi_B, d t) $
where $Delta V$ is the induced voltage, and  $Phi_B$ is the flux of the magnetic field through an open surface, defined in the same way as the flux of the electric field (#link("/gauss\#sec-gauss-flux")[Section 16.2]):

$ Phi_B = integral_S arrow(B) dot.op d arrow(A) $
If the magnetic field has a constant magnitude over the surface, $S$, and always makes the same angle with the surface, then the flux can be written as:

$ Phi_B = arrow(B) dot.op arrow(A) $
where the magnitude of the vector $arrow(A)$ is equal to the area of the surface, and the vector $arrow(A)$ is normal to the surface.

The surface, $S$, is defined by a closed path. The induced voltage can be thought of as an ideal battery placed in the closed path that defines the surface (right-hand panel of @fig:induction:faraday). The minus sign in Faraday's Law indicates the direction of the current associated with the induced voltage. It is important to note that an induced voltage only exists if the flux of the magnetic field changes (since the induced voltage is given by the time-derivative of the flux). Remember, induction is all about time-varying fields! This is better illustrated with an example.

Consider a loop of wire that is immersed in a uniform magnetic field, $arrow(B)$, that is perpendicular to the plane of the loop, as illustrated in @fig:induction:faraday. As time goes by, the magnetic field increases in strength, as shown in going from the left panel to the right panel. The flux of the magnetic field through the loop increases in magnitude, and a voltage is thus induced across the wire (illustrated by the ideal battery on the loop in the right panel), leading to an induced current, $I$.

#show figure: set block(breakable: true)
#figure(
  image("files/faraday-e5e8ce9b9d57169da249773be45edc7c.png", width: 60%),
  caption: [
As the magnetic field increases, so does the flux through the loop that is shown. The changing flux results in an induced voltage, which produces an induced current that has a magnetic moment, $arrow(mu)_I$. The induced current produces a magnetic field in a direction to oppose the changing flux.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:faraday>

When calculating the flux of the magnetic field, we have to choose the surface element vector, $d arrow(A)$, to be perpendicular to the surface over which we calculate the flux. There are two choices#footnote[Recall that this ambiguity is resolved when using Gauss' Law by always choosing $d arrow(A)$ to point "outwards", which only makes sense when the surface is closed. With an open surface, there is no inside or outside, and we are left with the ambiguity.] (upwards or downwards, referring to @fig:induction:faraday); we *chose* to define $d arrow(A)$ to point upwards. Thus, the magnetic flux is positive in both panels, and increases with time. The derivative, $d arrow(B) \/ d t$, is positive and the right-hand side of Faraday's equation is negative because of the negative sign in front. Had we chosen to define $d arrow(A)$ to point downwards, the right-hand side of Faraday's law would be negative.

We can describe the direction of the induced current, $I$, in terms of its magnetic dipole moment (#link("/magneticforce\#sec-magneticforce-dipolemoment")[Section 20.5.1]), $arrow(mu)_I$, also shown in @fig:induction:faraday. The overall sign on the right-hand side of Faraday's law is determined by our (arbitrary) choice of the direction $d arrow(A)$. With this choice, we found that the right-hand side of Faraday's law is negative:

$ Delta V = -frac(d Phi_B, d t) = "a negative number" $
#strong[The overall sign of $Delta V$ indicates whether the magnetic moment of the induced current is parallel ($Delta V$ positive) or anti-parallel ($Delta V$ negative) to $d arrow(A)$]. This allows us to determine the direction of the induced current, and thus the direction of the ideal battery that represents the induced voltage. In general, when possible, it is common to choose the direction of $d arrow(A)$ to be parallel to the magnetic field vector, so that the flux is positive (although this does not guarantee that its derivative is positive).

==== Lenz's law <lenzs-law>

The minus sign in Faraday's law is sometimes called "Lenz's law", and ultimately comes from the conservation of energy. In @fig:induction:faraday above, we found that as the magnetic flux increases through the loop, a current is induced. That *induced current will also produce a magnetic field* (in the direction of its magnetic dipole moment vector, $arrow(mu)_I$).

Lenz's law states that the "induced current will always be such that the magnetic field that it produces counteracts the changing magnetic field that induced the current". In @fig:induction:faraday, the magnetic field points in the upwards direction, and increases in magnitude with time. The induced current produces a magnetic field that points downwards to counteract the changing magnetic field, and preserve a constant flux through the loop. If this were not the case, the induced current would be in the opposite direction, contributing to the increasing magnetic flux through the loop, inducing more current, producing more flux, inducing more current, etc. Clearly, this would lead to an infinite current and solve the world's energy crisis. Unfortunately, conservation of energy (expressed here as Lenz's law) prevents this from happening.

You can use Lenz's law to determine the direction of induced currents. In general:

- If the magnitude of the magnetic *flux is increasing* in the loop, then the induced current produces a magnetic field that is in the *opposite direction* from the original magnetic field.
- If the magnitude of the magnetic *flux is decreasing* in the loop, then the induced current produces a magnetic field that is in the *same direction* as the original magnetic field.

The negative sign in Faraday's law is not arbitrary (as we saw above, it gives the correct direction for the magnetic moment of the induced current, given our arbitrary choice of direction for $d arrow(A)$). In practice, one can often use Lenz's law to determine the direction of the induced current (so that it counteracts the changing flux), and Faraday's law to determine the magnitude of the induced voltage.

#tipBlock(heading: [Checkpoint])[
A loop of wire is immersed in a constant and uniform magnetic field out of the page, perpendicular to the plane of the loop, as shown in @fig:induction:areaup. If the radius of the loop increases with time, in which direction will be the current induced in the loop?

#show figure: set block(breakable: true)
#figure(
  image("files/areaup-dd85169b19d9857148685da749c5d617.png", width: 20%),
  caption: [
A loop whose radius increases with time.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:areaup>

+ Since the magnetic field is constant, there is no induced current.
+ Clockwise.
+ Counter-clockwise.

#tipBlock(heading: [Answer])[
+
]
]

#tipBlock(heading: [Checkpoint])[
A loop of wire is immersed in a constant and uniform magnetic field out of the page, perpendicular to the plane of the loop, as shown in @fig:induction:loopout. If the loop is pulled out of the region of magnetic field, as shown, in which direction is the induced current in the loop?

#show figure: set block(breakable: true)
#figure(
  image("files/loopout-c0263da4236539f3c5aaa3e78bcf7ece.png", width: 20%),
  caption: [
A loop being pulled out of a region with uniform magnetic field.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:loopout>

+ Since the magnetic field is constant, there is no induced current.
+ Clockwise.
+ Counter-clockwise.

#tipBlock(heading: [Answer])[
+
]
]

#noteBlock(heading: [Example 22.1])[
A uniform time-varying magnetic field is given by:

$ arrow(B)(t) = B_0 (1 + a t) hat(z) $
where $B_0$ and $a$ are positive constants. A coil, made of $N$ circular loops of radius, $r$, lies in the $x -y$ plane. If the coil has a total resistance, $R$, what is the magnitude and direction of the current induced in the coil?

#noteBlock(heading: [Solution])[
The coil is made of $N$ loops of wire. Each loop of wire can be treated independently, and each will have its own induced voltage across it. Since each loop is the same, they will all have the same induced voltage, and the total voltage induced across the coil, $Delta V$, will be given by:

$ Delta V = -N frac(d Phi_B, d t) $
where $Phi_B$ is the flux through any one of the loops. That is, each loop is similar to an ideal battery, and the coil is similar to placing all of these batteries in series, so that the voltages from each battery sum together.

The coil lies the $x -y$ plane, perpendicular to the increasing magnetic field, similar to the situation depicted in @fig:induction:faraday. Since the magnetic field is uniform over the surface of the coil, we do not need an integral to determine the flux. We define the area vector, $arrow(A)$, to be in the positive $z$ direction (parallel to the magnetic field):

$ arrow(A) = A hat(z) = pi r^2 hat(z) $
The flux through one circular loop of radius, $r$, is given by:

$ Phi_B (t) & = arrow(B) dot.op arrow(A) =(B_0 (1 + a t) hat(z)) dot.op(pi r^2 hat(z)) = B_0 (1 + a t)(pi r^2) $
We can apply Faraday's law to determine the induced voltage:

$ Delta V & = -N frac(d Phi_B, d t) = -N frac(d, d t) B_0 (1 + a t)(pi r^2) \
& = -N B_0 a pi r^2 $
Since the induced voltage is negative, the magnetic moment of the induced current points in the negative $z$ direction (opposite to our choice of direction for $arrow(A)$). This is consistent with Lenz's law, since the magnetic field increases in the positive $z$ direction, the induced current will produce a magnetic field in the negative $z$ direction to counteract the changing flux. The magnitude of the induced current is given by Ohm's Law:

$ I = frac(Delta V, R) = frac(N B_0 a pi r^2, R) $
*Discussion:* In this example, we determined the induced voltage and current in a coil made of $N$ identical loops. We argued that one can sum the induced voltages from the $N$ loops, as these can be thought of as ideal batteries in series. We found that the direction of the induced current as obtained from Faraday's law was consistent with the expectation from Lenz's law.
]
]

#attentionBlock(heading: [Olivia's Thoughts])[
Here are some steps you can follow to find the direction of the current using Lenz's law.

+ Draw a diagram showing the loop/coil and the magnetic field lines.
+ I like to indicate whether the flux is increasing or decreasing by drawing a "flux arrow" (a term that I made up, so please don't use it around physicists because they won't know what you're talking about). If the flux is increasing, this will point in the same direction as the field lines. If it is decreasing, the flux arrow will point opposite to the field lines.
+ Assume that the induced current is in the clockwise direction and use the axial right hand rule to determine the direction of the induced magnetic field.
+ Repeat Step 2 assuming the counter-clockwise direction.
+ Decide which direction for the induced current will give you the desired field. We want the induced field to point opposite to the flux arrow.

This is how you would apply this method to @ex:induction:changingb (note that I am using the example of a loop instead of a coil but the idea is the same):

+ We draw the diagram, as in #[@fig:induction:lenzs_example]a.
+ To show that the flux is increasing, I have drawn a "flux arrow" (again, made up) in the direction of the field lines (the $+ z$ direction).
+ If the current is clockwise, the induced field points in the $-z$ direction inside the loop (#[@fig:induction:lenzs_example]b).
+ If the current is counter-clockwise, the induced field points in the $+ z$ direction inside the loop (#[@fig:induction:lenzs_example]c).
+ Since the flux is increasing, we want an induced current that will decrease the flux. We choose the clockwise current because the induced field points opposite to the flux arrow.

#show figure: set block(breakable: true)
#figure(
  image("files/lenzs_example-d7f248103d55bc911f37a92a8fc83217.png", width: 90%),
  caption: [
(a) An increasing magnetic field through a loop. (b) A clockwise current induces a magnetic field in the $-z$ direction. (c) A counter-clockwise current induces a magnetic field in the $+ z$ direction.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:lenzs_example>
]

=== Induction in a moving conductor <induction-in-a-moving-conductor>

If we define a loop of wire, there are two ways in which the magnetic flux through that loop can change:

+ The magnetic field can change magnitude or direction, as we saw in @ex:induction:changingb.
+ The loop can change size or orientation relative to the magnetic field.

In this section, we examine the latter case, sometimes called "motional emf", as the induced voltage is the result of motion from the loop in which the voltage is induced.

==== Motion of a bar on two parallel rails <motion-of-a-bar-on-two-parallel-rails>

Consider a U-shaped rail in a uniform magnetic field on top of which a bar can slide with no friction, as illustrated in @fig:induction:rail. The bar of length $L$ moves to the right with a constant speed, $v$.

#show figure: set block(breakable: true)
#figure(
  image("files/rail-8a3f3d543097c528778d803819acd89a.png", width: 60%),
  caption: [
A U-shaped rail on top of which a bar of length, $L$, can slide. The system is immersed in a magnetic field that points out of the page. The bar moves to the right with a constant speed, $v$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:rail>

The bar and the rails form a closed loop of area:

$ A(t) = L w(t) = L v t $
that increases with time. The magnitude of the flux through the loop will increase with time, resulting in an induced current (clockwise, according to Lenz's law). At some time $t$, the flux through the loop is given by:

$ Phi_B (t) & = arrow(B) dot.op arrow(A) = B A = B L v t $
where we chose $arrow(A)$ to be parallel to the magnetic field vector.

Since we already used Lenz's law to argue that the current must be in the clockwise direction, we can use Faraday's law to determine the magnitude of the induced voltage and ignore the negative sign:

$ Delta V = frac(d Phi_B, d t) = frac(d, d t) B L v t = B L v $
Suppose that the rails are superconducting (have no resistance), and that the bar has a resistance, $R$. The current through the loop is then given by Ohm's Law:

$ I = frac(Delta V, R) = frac(B L v, R) $
As the current moves through the bar, it will heat up the bar by dissipating energy at a rate of:

$ P = I^2 R = frac(B^2 L^2 v^2, R) $
Thus, the bar cannot possibly move at a constant speed on its own, or energy would be produced out of nothing. There must be a force exerted on the bar to keep it moving at constant speed.

Recall that a current-carrying wire in a magnetic field will experience a force from the magnetic field. In this case, the bar of length $L$ carries a current, $I$, in a magnetic field, $arrow(B)$ (perpendicular to the current), so that the force exerted on the bar is given by:

$ arrow(F)_B = I arrow(L) times arrow(B) $
and points to the left (right-hand rule). The magnitude of the force is given by:

$ F_B = I L B = frac(B^2 L^2 v, R) $
Thus, in order for the bar to move at constant velocity towards the right, a force with the same magnitude must be exerted towards the right. In other words, work must be done to pull the bar to the right, by exerting a force with the magnitude, $F_B$. The rate at which that work must be done is given by:

$ P & = frac(d, d t) W \
& = frac(d, d t) arrow(F) dot.op d x \
& = arrow(F) dot.op frac(d x, d t) \
& = arrow(F) dot.op arrow(v) = F v \
& = frac(B^2 L^2 v^2, R) $
where we assumed that the bar moves in the positive $x$ direction. This is exactly the rate at which electric energy is dissipated in the bar! In other words, by doing mechanical work on the bar, we can create an induced current that will dissipate that energy at the same rate at which we do work. We can convert mechanical work into electrical energy!

#attentionBlock(heading: [Olivia's Thoughts])[
I'll quickly sum up what is happening in this example:

+ We pull the bar to the right.
+ The flux in the loop increases, which produces a current in the clockwise direction according to Lenz's law. We can calculate the potential difference to produce this current using Faraday's law.
+ The downwards current in the bar produces a force to the left according to the Lorentz force, $F = I arrow(l) times arrow(B)$. To move the bar at a constant velocity, the force we apply to pull the bar should be equal to the Lorentz force.
+ Assuming the bar has a resistance, power is dissipated in the resistor. Power is dissipated at the same rate as the work done by us to pull the bar.
]

Finally, also note that this situation is closely related to the Hall effect, which is simply a different way to think about this problem. Consider the electrons that are in the bar, as the bar moves at constant speed to the right through the magnetic field (ignore the existence of the U-shaped rail). The electrons will experience a magnetic force that is upwards (consistent with the direction of the induced current discussed above). Eventually, electrons accumulate at the top of the bar, and start preventing more electrons from accumulating there, by producing an electric field, $arrow(E)$, in the bar. The equilibrium condition is that the magnetic force and the electric force have the same magnitude (and opposite directions):

$ q v B & = q E \
E & = v B $
The (Hall) potential difference, across the bar of length, $L$, with an electric field, $E$, is given by:

$ Delta V_(H a l l) = E L = v B L $
where we assumed that the electric field is uniform in the bar. This potential difference is identical to the one that we calculated from Faraday's law. Viewing this example as a different manifestation of the Hall effect provides some insight into what is actually happening at the microscopic level when a current is induced.

==== The generator <the-generator>

An electrical generator is used to create an alternating induced voltage/current by rotating a coil inside of a constant and uniform magnetic field. In this case, the current is induced because the angle between the magnetic field and the surface element vector $d arrow(A)$ changes with time.

Consider a single loop of wire with area $A$ that can rotate in a uniform and constant magnetic field, $arrow(B)$, as illustrated in @fig:induction:generator.

#show figure: set block(breakable: true)
#figure(
  image("files/generator-d90ce872c1eb265a4b57a78c94dce269.png", width: 60%),
  caption: [
A loop of wire rotates in a constant and uniform magnetic field. At time $t = 0$ (left panel), the loop lies in the $y z$ plane. The loop rotates about the $y$ axis, with a constant angular velocity, $arrow(omega)$. At some time $t$ later, the loop has rotated through an angle $theta = omega t$ (right panel, as seen from above, looking down on the $x z$ plane).
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:generator>

Referring to the coordinate system that is illustrated in @fig:induction:generator, the loop has a constant angular velocity, $arrow(omega)$, in the positive $y$ direction and rotates about the $y$ axis (with the origin at the centre of the coil). At time $t = 0$ (left panel), the loop lies in the $y z$ plane, and we choose the vector $arrow(A)$ (used to calculate the flux) to be in the positive $x$ direction at time $t = 0$. As the coil rotates, so will the vector $arrow(A)$, which is easier to visualize than the coil. At some time $t$, the vector $arrow(A)$ will make an angle $theta = omega t$ with the $x$ axis (right panel). The magnetic field is constant and in the positive $x$ direction, $arrow(B) = B hat(x)$. That is, the angle between the vector $arrow(A)$ and the magnetic field, $arrow(B)$, will be given by $theta = omega t$.

At some time, $t$, the vector $arrow(A)$ is given by:

$ arrow(A)(t) = A(cos theta hat(x) -sin theta hat(z)) = A(cos(omega t) hat(x) -sin(omega t) hat(z)) $
We can calculate the flux of the magnetic field through the loop at some time $t$:

$ Phi_B (t) = arrow(B) dot.op arrow(A) =(B hat(x)) dot.op(A cos(omega t) hat(x) -A sin(omega t) hat(z)) = A B cos(omega t) $
where we did not use the integral for the flux, since the magnetic field is constant over the area of the loop. The induced voltage is given by Faraday's law:

$ Delta V = -frac(d Phi_B, d t) = -frac(d, d t) A B cos(omega t) = A B omega sin(omega t) $
If the generator includes $N$ loops in a coil, then the induced voltage is given by:

$ Delta V = N A B omega sin(omega t) $
As you can see, the voltage oscillates with time, between $plus.minus N A B omega$, corresponding to alternating voltage. Furthermore, since the sign of $Delta V$ changes with time (due to the sine function), the relative orientation between $arrow(A)$ and the magnetic dipole moment of the induced current, also changes with time, indicating that the induced current in the coil changes direction every half-turn (alternating current).

The generators that produce the alternating voltages that we find in our outlets work on the same principle. For example, in a hydro-electric dam, the water pressure from the height of the dam is used to force water through a turbine (essentially a propeller) that rotates a set of coils inside of a strong permanent magnet. Various controls allow the rotational frequency of the turbine to be adjusted in order to produce alternating current of the desired frequency ($5 0 upright H z$ in most of the world, $6 0 upright H z$ in North America and a few other countries).

Since the generator produces current that can dissipate electrical energy, one has to do work in order to keep the coil in the generator rotating. As the coil rotates, a current is induced in the coil. A current in a circular loop that is immersed in a magnetic field will experience a torque, $arrow(tau)$, given by:

$ arrow(tau) = arrow(mu) times arrow(B) $
where $arrow(mu)$ is the magnetic dipole moment of the coil with induced current, $I$. If the current from the coil dissipates its energy in a system with resistance, $R$, then the current in the coil is given by Ohm's Law:

$ I = frac(Delta V, R) = frac(N A B omega sin(omega t), R) $
The magnetic moment, $arrow(mu)$, for the current in the coil is given by:

$ arrow(mu) & = I arrow(A) = frac(N A B omega sin(omega t), R)(A(cos(omega t) hat(x) -sin(omega t) hat(z))) \
& = frac(N A^2 B omega sin(omega t), R)(cos(omega t) hat(x) -sin(omega t) hat(z)) $
The torque exerted by the magnetic field on the coil with the induced current is thus given by:

$ arrow(tau) & = arrow(mu) times arrow(B) =(frac(N A^2 B omega sin(omega t), R)(cos(omega t) hat(x) -sin(omega t) hat(z))) times(B hat(x)) \
& = frac(N A^2 B^2 omega sin(omega t), R)(cos omega(t)(hat(x) times hat(x)) -sin(omega t)(hat(z) times hat(x))) \
& = -frac(N A^2 B^2 omega sin^2 (omega t), R) hat(y) $
Note that the torque exerted on the loop is always in the negative $y$ direction, as every term in the torque is either strictly positive ($N, R$) or squared ($sin^2 (omega t)$). The torque exerted by the magnetic field on the coil is thus always in the opposite direction of rotation (recall that the coil has an angular velocity in the positive $y$ direction). This is sometimes called "counter torque". If we want the coil to maintain a constant angular velocity, then we must exert a torque in the positive $y$ direction to counter the torque from the magnetic field. Note that the torque that we must exert to keep the coil rotating with constant angular velocity is not constant in time (but always in the same direction).

You can easily verify that the work that you must do by exerting the torque is the same as the electrical power dissipated by the current in the resistor, $R$. The generator is thus a device to convert mechanical work into electrical energy (with AC current, in particular).

=== Back EMF in an electric motor <back-emf-in-an-electric-motor>

There are many similarities between electric motors and generators, and in fact, they can be thought of as the same device. In an electric motor, current is passed through a coil in a magnetic field, so that a torque is exerted on the coil, and it starts to rotate. In a generator, one exerts a torque to rotate the coil, thus inducing a current.

Consider an electric motor. As we supply current to the motor, the coil starts to rotate. But, a rotating coil in a magnetic field results in an induced current. By Lenz's law, the induced current in the coil of a motor has to be in the direction opposite to the current that we put in, since otherwise, the motor would start to spin infinitely fast. We call this effect "back emf", as the motor effectively acts like a battery that opposes current, as illustrated in @fig:induction:backemf

#show figure: set block(breakable: true)
#figure(
  image("files/backemf-884fc6af7b406bccea4cff3c4f67981b.png", width: 30%),
  caption: [
A simple circuit illustrating how a motor, with resistance, $R_(m o t o r)$, will generate a "back emf", equivalent to a battery that produces a voltage in the direction to oppose the current from the actual battery that is powering the motor, $Delta V$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:backemf>

If you connect an electric motor to a voltage source, initially, the motor is at rest, so there will be no back emf and the current through the circuit will be very large (motors have a small resistance, so that the electrical energy is converted into work rather than heating up the motor). As the motor starts to spin faster, the back emf from the motor grows, reducing the current in the circuit. If there is no load on the motor (i.e. the motor can rotate freely with no friction), then the rotational speed of the motor will increase until the back emf exactly matches the voltage supplied to the motor. The motor will then rotate at constant speed, with (almost) no current in the circuit (if the motor slows down, the emf will decrease, and the current will increase to speed up the motor). If there is a load on the motor (because it's making something turn), then the motor will rotate at a speed that is lower than that which would result in zero current, since some of that current is now used by the motor to exert a torque.

You may notice that the lights in your house dim briefly as your refrigerator turns on. This is because your refrigerator uses an electric motor that initially draws a large current when it turns on, large enough to produce a voltage drop in the circuit of your house to observe a dimming of your lights. You may also notice that if you plug the inlet or outlet of a hair dryer, the hair dryer turns off quickly. In this case, by blocking the flow of air, you prevent the motor in the hair dryer from rotating; this results in a large current through its coil, since there is no back emf. Most hair dryers have a circuit breaker that will detect this large current and open the circuit to prevent the coil in the motor from over heating and melting. In general, one should not prevent an electric motor from rotating, as this will result in a large current through the motor that could melt its internal components.

=== The induced electric field and eddy currents <the-induced-electric-field-and-eddy-currents>

So far, we have described electromagnetic induction in terms of the voltage that is induced by a changing magnetic field. This voltage is related to an electric field, which we discuss in this section. In Faraday's  Law, the voltage is induced across a closed loop (and can be thought of as an ideal battery placed in the loop). This is illustrated in @fig:induction:inducede which shows a loop in the plane of the page, and a magnetic field out of the plane of the page.

#show figure: set block(breakable: true)
#figure(
  image("files/inducedE-7bdece303343897b313b1edc5e6f97b8.png", width: 40%),
  caption: [
A varying magnetic field will induce a circular electric field.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:inducede>

#tipBlock(heading: [Checkpoint])[
In @fig:induction:inducede, in order to produce the induced voltage as shown, is the magnetic field increasing or decreasing?

+ The magnetic field is increasing.
+ The magnetic field is decreasing.

#tipBlock(heading: [Answer])[
+
]
]

As you recall, the electric potential difference between two points, $A$ and $B$, is obtained from the electric field:

$ Delta V = integral_A^B arrow(E) dot.op d arrow(l) $
In the case of an induced voltage across a loop, the points $A$ and $B$ are the same. The integral is thus over a closed path:

$ Delta V = oint arrow(E) dot.op d arrow(l) $
We can include this into Faraday's law by using the electric field instead of the potential difference:

$ Delta V = -frac(d Phi_B, d t) \
 $
$ therefore thick thick boxed oint arrow(E) dot.op d arrow(l) = -frac(d Phi_B, d t) $
where the last line is a more general form of Faraday's law. Note that in the case of electrostatics, where the electric field is produced by a distribution of charges, the integral $oint arrow(E) dot.op d arrow(l)$ must be zero, since the electric force is conservative; the work done by the electric field on a charge $q$ over a closed path, which is just a charge $q$ multiplied by that integral, must be zero. The force from an electric field that is induced by a time-varying magnetic field is not conservative!

Faraday's law as expressed with the electric field is much more general, and implies that a time-varying magnetic field will induce an electric field. This is true, independently of there existing a physical wire to carry the induced current.

#noteBlock(heading: [Example 22.2])[
A circular region with radius $R$ contains a magnetic field that is uniform, and decreasing in magnitude with time:

$ arrow(B)(t) = B_0 (1 -a t) hat(z) $
where $a$ and $B_0$ are positive constants. Determine the electric field at a distance, $r$, from the centre of the region, inside and outside of the region with the magnetic field.

#noteBlock(heading: [Solution])[
@fig:induction:inducede2 shows the circular region of magnetic field, as well as a circular path of radius $r$ that defines the region over which we calculate the flux of the magnetic field.

#show figure: set block(breakable: true)
#figure(
  image("files/inducedE2-d4dcf4f817ea58569abf12bbaa5f7727.png", width: 40%),
  caption: [
The induced electric field lines form closed circles when the magnetic field changes.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:inducede2>

First, we consider the induced electric field in the region with a magnetic field, where $r < R$. We choose a circle of radius $r$ to calculate the flux of the magnetic field. Since the magnetic field is uniform within that region, the flux is given by:

$ Phi_B = arrow(B) dot.op arrow(A) = B A = B_0 (1 -a t) pi r^2 $
The circulation of the electric field is easily found, since the electric field forms concentric circles (by symmetry):

$ oint arrow(E) dot.op d arrow(l) = oint E d l = E oint d l = E(2 pi r) $
Applying Faraday's law, the electric field is found to be:

$ oint arrow(E) dot.op d arrow(l) & = -frac(d Phi_B, d t) \
E(2 pi r) & = -frac(d, d t) B_0 (1 -a t) pi r^2 \
2 E & = B_0 a r \
therefore E & = frac(B_0 a, 2) r quad "(inside the region of magnetic field)" $
and we see that, inside the region with the magnetic field, the strength of the induced electric field is proportional to the distance from the centre of the region (i.e. it increases linearly with $r$).

For the region where the magnetic field is zero, we again calculate the circulation of the electric field around a circular loop of radius $r > R$:

$ oint arrow(E) dot.op d arrow(l) = oint E d l = E oint d l = E(2 pi r) $
The flux of the magnetic field through that loop is however related to the area of the region with the magnetic field (of radius, $R$):

$ Phi_B = arrow(B) dot.op arrow(A) = B A = B_0 (1 -a t) pi R^2 $
Again, applying Faraday's law:

$ oint arrow(E) dot.op d arrow(l) & = -frac(d Phi_B, d t) \
E(2 pi r) & = -frac(d, d t) B_0 (1 -a t) pi R^2 \
2 E r & = B_0 a R^2 \
therefore E & = frac(B_0 a R^2, 2 r) quad "(outside the region of magnetic field)" $
Outside the region with a magnetic field, the magnitude of the electric field decreases with the distance from the centre of the region.

*Discussion:* In this example, we determined the electric field that is induced by a varying magnetic field. In this case, the electric field lines form closed circles and result in a non-conservative force. When the electric field is formed by a distribution of electric charges, the field lines begin and end on charges, which is not the case for an induced electric field.
]
]

#attentionBlock(heading: [Olivia's Thoughts])[
You'll notice that this version of Faraday's law has a very similar structure to Ampère 's law. Recall that Ampere's law states:

$ oint arrow(B) dot.op d arrow(l) = mu_0 I^(e n c) $
The difference is that now we have the circulation of the electric field rather than the magnetic field and instead of the enclosed current we are dealing with the rate of change of the enclosed flux. This is why, in the last example, we used an almost identical process to how we use Ampère 's law.
]

==== Magnetic braking <magnetic-braking>

When a conducting material moves into a region of magnetic field, an electric field forming closed loops is induced in the material, thus inducing small current loops, called "eddy currents". The magnetic field can then exert a force on those currents, effectively resulting in a force on the material. This is the principle behind magnetic braking, which is used in some trains and in other applications.

@fig:induction:magneticbrake illustrates how a magnetic brake can be used to slow a rotating wheel made of a conducting material (the material must conduct or the induced electric field will not produce any current). A magnetic field is produced (e.g. by a fixed permanent magnet) in a direction perpendicular to the wheel, over a small area (shown at the bottom of the wheel in @fig:induction:magneticbrake).

#show figure: set block(breakable: true)
#figure(
  image("files/magneticbrake-912a80c2e0d665014177fc2883ff92a1.png", width: 60%),
  caption: [
A rotating wheel made of a conducting material has a small region with a magnetic field. The eddy currents in the region of changing flux result in a net downwards current at the centre of the region. The magnetic force that is exerted on that current slows down the wheel.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:magneticbrake>

For material located at the bottom left of the wheel, the magnetic flux is increasing, since the material is moving from a region with no magnetic field into a region with a magnetic field. In that part of the region, clockwise eddy currents will form, as those result in a magnetic field into the page, to counter the increasing magnetic flux (Lenz's law). The bottom right side of the wheel is leaving the magnetic field, and will thus have eddy currents in the opposite direction. The currents from both sides add up in the centre, resulting in a net downwards current. The magnetic force on that downwards current is to the left, resulting in a torque that slows the wheel. This is magnetic braking.

Again, this is no more than conservation of energy at play. Since we induce currents by making the wheel move into/out of a region of magnetic field, the electrical energy in those currents must come from somewhere (either we do work to keep the wheel rotating, or the wheel loses kinetic energy). Any time that we try to move a conductor through a magnetic field, in a way that current is induced, we will have to exert a force and do work. In the case of magnetic braking, the wheel will convert its rotational kinetic energy into heat (the eddy currents will heat up the wheel). The main issue with magnetic braking is that one needs to be able to dissipate the heat. The main advantage is that there are no parts that wear out, as opposed to braking with friction. In addition, magnetic braking is very smooth, and only acts when there is motion. As soon as the wheel stops rotating, the magnetic flux is constant everywhere and the eddy currents disappear.

#tipBlock(heading: [Checkpoint])[
Suppose that the magnetic field in @fig:induction:magneticbrake pointed into the page. Would the magnetic break still work?

+ Yes.
+ No.

#tipBlock(heading: [Answer])[
+
]
]

=== Transformers <transformers>

The electric power generated in power stations is transmitted using high-voltage transmission lines, typically with voltages above $3 0 0 0 0 0 upright V$ for long distances. However, that voltage is not usable in our households, as our appliances expect a voltage around $1 2 0 upright V$ (or $2 2 0 upright V$ in Europe). Transformers use electromagnetic induction to transform one *alternating voltage* into another. @fig:induction:transformer illustrates a transformer.

#show figure: set block(breakable: true)
#figure(
  image("files/transformer-bcf11362c9aec157a40b39b5e34827ca.png", width: 50%),
  caption: [
A transformer converts a primary alternating voltage, $Delta V_p$, to a secondary alternating voltage, $Delta V_s$. The magnetic flux produced in one coil is transmitted by an iron core to the secondary coil, where a different voltage is induced, depending on the ratio of the number of windings in each coil.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:transformer>

The transformer has two coils, the "primary" and the "secondary", with different numbers of loops, $N_p$ and $N_s$, respectively. The coils are wrapped around an iron core, which can transmit the magnetic flux generated in the primary coil to the secondary coil. In the transformer, an alternating voltage, $Delta V_p$, is applied to the primary coil, and transformed into the desired voltage, $Delta V_s$, in the secondary coil.

The current in the primary coil creates a magnetic field. Those field lines are transmitted by the iron core into the second coil. A voltage is only induced in the secondary coil if the magnetic flux through the secondary coil changes with time. Thus, transformers only work with alternating voltages, so that the magnetic field created by the primary coil changes continuously. Both coils will have the same magnetic flux, $Phi_B$, through them, since they have the same area. The voltage in the primary coil is given by Faraday's law:

$ Delta V_p = N_p frac(d Phi_B, d t) $
as is the voltage in the secondary coil:

$ Delta V_s = N_s frac(d Phi_B, d t) $
Since the flux (and thus its time-derivative) are the same in both coils, we can isolate the time-derivative in each equation to obtain the relationship between the voltages in the two coils:

$ frac(Delta V_p, N_p) & = frac(Delta V_s, N_s) \
therefore Delta V_s & = frac(N_s, N_p) Delta V_p $
Thus, with a transformer, one simply needs to set the ratio of the number of loops in each coil in order to transform one voltage into another.

#tipBlock(heading: [Checkpoint])[
Which coil in @fig:induction:transformer has the highest voltage?

+ The one with the most loops.
+ The one with the least loops.

#tipBlock(heading: [Answer])[
+
]
]

#tipBlock(heading: [Checkpoint])[
Which coil in @fig:induction:transformer will have the highest current?

+ The one with the most loops.
+ The one with the least loops.
+ Not enough information to tell.

#tipBlock(heading: [Answer])[
+
]
]

#noteBlock(heading: [Example 22.3])[
A power plant produces energy at rate of $P = 1 5 0 upright k W$, and wishes to transmit this power as efficiently as possible to a town. The power lines between the power plant and the town have a resistance of $R = 0 . 5 upright Omega$. Compare the amount of power dissipated in the transmission lines depending on whether the power is transmitted through a voltage of $3 0 0 0 0 0 upright V$ or $3 0 0 upright V$.

#noteBlock(heading: [Solution])[
We model the transmission of power from the power plant to the town using the circuit shown in @fig:induction:powerplant.

#show figure: set block(breakable: true)
#figure(
  image("files/powerplant-b4ec4cc447657225fc944a1bd4e3ab72.png", width: 25%),
  caption: [
Circuit for a power plant transmitting power to a town.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:powerplant>

We do not know the resistance of the town, but we can still calculate the power that is dissipated in the transmission lines that have a total resistance of $R = 0 . 5 upright Omega$. The power plant produces power, $P$, and transmits it through the lines at a potential difference, $Delta V$, resulting in a current, $I$:

$ P & = I Delta V \
therefore I & = frac(P, Delta V) $
The current, $I$, will dissipate power in the lines at a rate of:

$ P_(l i n e) = I^2 R = frac(P^2, Delta V^2) R $
With the two different voltages, this corresponds to:

$ P_(l i n e) & = frac(P^2, Delta V^2) R = frac((1 5 0 e 3 upright W)^2,(3 0 0 0 0 0 upright V)^2) (0 . 5 upright Omega) = 0 . 1 upright W \
P_(l i n e) & = frac(P^2, Delta V^2) R = frac((1 5 0 e 3 upright W)^2,(3 0 0 upright V)^2) (0 . 5 upright Omega) = 1 2 5 0 0 0 upright W \
 $
Thus, when the power is transmitted at low voltage, more than 80% is dissipated in the transmission lines, whereas an insignificant fraction is dissipated when the power is transmitted at high voltage. This is why we need transformers.
]
]

=== Maxwell's equations and electromagnetic waves <maxwells-equations-and-electromagnetic-waves>

This section is meant to be informative, as the material is beyond the scope of this textbook. Nonetheless, it is worth summarizing what we have learned about electricity and magnetism, as Maxwell did. We can summarize the main laws from electromagnetism as follows:

$ oint arrow(E) dot.op d arrow(A) & = frac(Q, epsilon_0) & "(Gauss ' Law)"\
oint arrow(B) dot.op d arrow(A) & = 0 & "(No magnetic monopoles)"\
oint arrow(B) dot.op d arrow(l) & = mu_0 I^(e n c) & "(Ampère ' s Law)"\
oint arrow(E) dot.op d arrow(l) & = -frac(d, d t) integral arrow(B) dot.op d arrow(A) & "(Faraday ' s law)"\
 $
where we wrote the magnetic flux in Faraday's law using the integral explicitly. As you recall, Gauss' Law is equivalent to Coulomb's Law, relating the electric field to electric charges that produce the electric field. Although we did not explicitly use the second equation, it is the equivalent to Gauss' Law for the magnetic field. The flux of the magnetic field out of a closed surface must always be zero, since there are no magnetic monopoles, so that magnetic field lines never end.

When we covered Ampère's Law, we only considered a static current as the source of the magnetic field. However, if there is an electric field present that is created by charges that are moving, then those can also contribute a current to Ampère's Law:

$ oint arrow(E) dot.op d arrow(A) & = frac(Q, epsilon_0) quad "(Gauss ' Law)"\
therefore Q & = epsilon_0 oint arrow(E) dot.op d arrow(A) \
therefore I & = frac(d Q, d t) = epsilon_0 frac(d, d t) oint arrow(E) dot.op d arrow(A) \
 $
so that Ampère's Law, in its most general form, is written:

$ oint arrow(B) dot.op d arrow(l) & = mu_0 (I^(e n c) + epsilon_0 frac(d, d t) oint arrow(E) dot.op d arrow(A)) quad "(Ampère ' s Law)" $
Writing out the four equations again:

$ oint arrow(E) dot.op d arrow(A) & = frac(Q, epsilon_0) & "(Gauss ' Law)"\
oint arrow(B) dot.op d arrow(A) & = 0 & "(No magnetic monopoles)"\
oint arrow(B) dot.op d arrow(l) & = mu_0 (I^(e n c) + epsilon_0 frac(d, d t) oint arrow(E) dot.op d arrow(A)) & "(Ampère ' s Law)"\
oint arrow(E) dot.op d arrow(l) & = -frac(d, d t) integral arrow(B) dot.op d arrow(A) & "(Faraday ' s law)"\
 $
These four equations are known as Maxwell's equations, and form our most complete theory of classical electromagnetism. It is quite interesting to note the similarities and relations between the electric and magnetic field. Maxwell's equations contain equations for the circulation and the total flux out of a closed surface for both fields. Ampère's Law implies that a changing electric field will produce a magnetic field. Faraday's law implies that a changing magnetic field produces an electric field. If a point charge oscillates up and down, it will produce a changing electric field, which will produce a changing magnetic field, which will induce a changing magnetic field, etc. This is precisely what an electromagnetic wave is! The light that we see, the Wi-Fi signals for our phones, and the highly penetrating radiation from nuclear reactors are all examples of electromagnetic waves (of different wavelengths).

In fact, as Maxwell did, we can obtain the wave equation (#link("/waves\#sec-waves-waveequation")[Section 13.3.1]) from Maxwell's equations. We sketch out the derivation here, but it is definitely beyond the scope of this textbook. However, you're so close to seeing one of the most exciting revelations of physics that it would be a shame to skip it!

We first write out Maxwell's equations in differential form, as we have already shown for Gauss' Law ((#link("/gauss\#sec-gauss-interpretation")[Section 16.5]) and Ampère's Law ((#link("/magneticsource\#sec-magneticsource-interpretation")[Section 21.4.1])

$ nabla dot.op arrow(E) & = frac(rho, epsilon_0) & "(Gauss ' Law)"\
nabla dot.op arrow(B) & = 0 & "(No magnetic monopoles)"\
nabla times arrow(B) & = mu_0 (arrow(j) + epsilon_0 frac(diff arrow(E), diff t)) & "(Ampère ' s Law)"\
nabla times arrow(E) & = -frac(diff arrow(B), diff t) & "(Faraday ' s law)"\
 $
If we consider a vacuum region in space, with no charges and no currents, these equations reduce to:

$ nabla dot.op arrow(E) & = 0 ~ ~ ~ ~ & nabla dot.op arrow(B) & = 0 \
nabla times arrow(B) & = mu_0 epsilon_0 frac(diff arrow(E), diff t) ~ ~ ~ ~ & nabla times arrow(E) & = -frac(diff arrow(B), diff t) $
We will make use of the following identity from vector calculus:

$ nabla times(nabla times arrow(E)) = nabla(nabla dot.op arrow(E)) -nabla^2 arrow(E) $
where:

$ nabla^2 arrow(E) & = frac(diff^2 arrow(E), diff x^2) + frac(diff^2 arrow(E), diff y^2) + frac(diff^2 arrow(E), diff z^2) \
& =(frac(diff^2 E_x, diff x^2) + frac(diff^2 E_x, diff y^2) + frac(diff^2 E_x, diff z^2)) hat(x) +(frac(diff^2 E_y, diff x^2) + frac(diff^2 E_y, diff y^2) + frac(diff^2 E_y, diff z^2)) hat(y) \
& +(frac(diff^2 E_z, diff x^2) + frac(diff^2 E_z, diff y^2) + frac(diff^2 E_z, diff z^2)) hat(z) $
is called the "vector Laplacian".

Consider taking the curl ($nabla times$) of the equation that has the curl of the electric field (Faraday's law):

$ nabla times bigg(nabla times arrow(E) & = -frac(diff arrow(B), diff t) bigg) \
nabla(nabla dot.op arrow(E)) -nabla^2 arrow(E) & = -nabla times frac(diff arrow(B), diff t) \
-nabla^2 arrow(E) & = -frac(diff, diff t) nabla times arrow(B) \
-nabla^2 arrow(E) & = -frac(diff, diff t) mu_0 epsilon_0 frac(diff E, diff t) \
-nabla^2 arrow(E) & = -mu_0 epsilon_0 frac(diff^2 arrow(E), diff t^2) $
where, in the third line, we made use of Gauss' Law ($nabla dot.op arrow(E) = 0$), and, in the fourth line, Ampère's Law ($nabla times arrow(B) = mu_0 epsilon_0 frac(diff E, diff t)$). The last equation that we obtained is a vector equation (the vector Laplacian has three components, as does the time-derivative of $arrow(E)$ on the right-hand side). Consider the $x$ component of this equation:

$ frac(diff^2 E_x, diff x^2) + frac(diff^2 E_x, diff y^2) + frac(diff^2 E_x, diff z^2) & = mu_0 epsilon_0 frac(diff^2 E_x, diff t^2) $
If we define the quantity:

$ c = frac(1, sqrt(epsilon_0 mu_0)) $
then, the $x$ component of the equation can be written as:

$ frac(diff^2 E_x, diff x^2) + frac(diff^2 E_x, diff y^2) + frac(diff^2 E_x, diff z^2) & = frac(1, c^2) frac(diff^2 E_x, diff t^2) $
which is exactly the wave equation for the component, $E_x$, of the electric field, propagating with speed $c$, the speed of light! Thus, the speed of light is directly related to the constants $epsilon_0$ and $mu_0$. You can write out similar equations for the $y$ and $z$ components of the electric field, and find the similar equations for the magnetic field if you start by taking the curl of Ampère's Law instead of Faraday's law.

We have just shown that electric and magnetic fields can behave as waves, which we now understand to be the waves that are responsible for light, radio waves, gamma rays, infra-red radiation, etc. All of these are types of electromagnetic waves with different frequencies. Although we did not demonstrate this, the electromagnetic waves that propagate are such that the magnetic and electric field vectors are always perpendicular to each other. Electromagnetic waves also carry energy. Thus, a charge that is oscillating (say on a spring) and creating an electromagnetic wave must necessarily be losing energy (or work must be done to keep the charge oscillating with the same amplitude). Finally, it is worth noting that, according to Quantum Mechanics, light (and the other frequencies of radiation), are really carried by particles called "photons". Those particles are strange, since their propagation is described by a wave equation.

$ Delta V = -frac(d Phi_B, d t) $
The magnetic flux, $Phi_B$, is calculated as the flux of the magnetic field through an open surface, $S$:

$ Phi_B = integral_S arrow(B) dot.op d arrow(A) $
The induced voltage, $Delta V$, is the potential difference that is induced along the closed path (a "loop") that bounds the surface, $S$. If a charge, $q$, were to move around that closed path, it would gain (or lose) energy, $q Delta V$. Note that the potential difference that is induced corresponds to a non-conservative electric force, as a charge can gain/lose energy by moving along a closed path. The induced voltage is often called an induced electromotive force (emf), even if it is a voltage.

The minus sign in Faraday's law is sometime referred to as "Lenz's law", since it indicates in which direction the induced voltage will be. It is easiest to think of the closed path as a physical wire (e.g. a loop of wire) through which a current will be induced as a result of the induced voltage. The minus sign is easiest to interpret in terms of the relative direction between the area vector used to define the flux, and the magnetic dipole moment vector, $arrow(mu)$, associated with the induced current (which points in the same direction as the magnetic field that is produced by the induced current).

When calculating the flux of the magnetic field, the surface element vector $d arrow(A)$, must be perpendicular to the surface through which the flux is calculated, which leads to two possible choices. Once a choice is made, and Faraday's law has been applied, the sign of $Delta V$ will indicate if the magnetic dipole moment of the induced current points in the same direction as $d arrow(A)$ (positive $Delta V$) or in the opposite direction (negative $Delta V$).

If $N$ loops of wire are combined together into a coil, the voltages across each loop sum together, so that the voltage induced across the coil is given by:

$ Delta V = -N frac(d Phi_B, d t) $
Lenz's law is a statement about conservation of energy. Indeed, the induced current must create a magnetic field that *opposes* the change in flux, otherwise, the induced current would grow indefinitely. Lenz's law can be summarized as follows:

- If the magnitude of the magnetic *flux is increasing* in the loop, then the induced current produces a magnetic field that is in the *opposite direction* from the original magnetic field.
- If the magnitude of the magnetic *flux is decreasing* in the loop, then the induced current produces a magnetic field that is in the *same direction* as the original magnetic field.

A voltage is induced along a closed path any time that the flux of the magnetic field through the corresponding surface changes. The flux can change either because the magnetic field is changing, or because the loop is changing (in size or orientation relative to the magnetic field). In the latter case (changing loop), one speaks of a "motional emf". A generator creates a motional emf by rotating a coil (with $N$ loops, each with area, $A$), inside a fixed uniform magnetic field, $arrow(B)$. The voltage produced by a generator is given by:

$ Delta V = N A B omega sin(omega t) $
where $omega$ is the angular speed of the coil. A generator thus produces alternating voltage/current. The current that is induced in the coil of the generator will dissipate energy as it flows through a resistance, $R$. Thus, one must do work in order to keep the generator spinning. The current induced in the coil of the generator will also result in a magnetic moment, and a "counter torque" will be exerted on the coil. One must thus exert a torque in order to keep the generator spinning (and the work done by exerting that torque is converted into the electrical energy dissipated in the resistor). The counter torque on the generator is always in the same direction, and has a magnitude:

$ tau = frac(N A^2 B^2 omega sin^2 (omega t), R) $
When an electric motor is used, a "back emf" is induced in the coil of the motor. The back emf is such that it resists the direction of current (Lenz's law), or else the motor would spin infinitely fast. As the motor spins faster, the back emf grows, until it reaches an equilibrium. Motors thus draw a large current when they first start up, since at low speed, they have no back emf.

Since a changing magnetic flux induces a voltage, an electric field is also induced. We can replace the voltage in Faraday's law with the circulation of the electric field to write a more general version of Faraday's law:

$ oint arrow(E) dot.op d arrow(l) & = -frac(d Phi_B, d t) $
The induced electric field forms closed field lines, and is different than the electric field that is produced by static charges, since the latter will have field lines that start and end on charges. The force associated with the induced electric field is not conservative.

When a metallic object passes through a region of magnetic field, the induced electric field will induce current loops in the material called eddy currents. The magnetic field will also exert a force on these eddy currents to oppose the motion that is creating the currents (Lenz's law); as the eddy currents dissipate electrical energy in the material, the metallic object must lose kinetic energy unless a force is acting on it. Magnetic brakes make use of this principle.

Transformers are used to convert an alternating voltage, $Delta V_p$, into a different alternating voltage, $Delta V_s$. A "primary" coil, with $N_p$ windings, creates a changing magnetic flux that is guided (e.g. by an iron core) to a "secondary" coil, with $N_s$ windings. The voltage induced in the secondary coil is given by:

$ Delta V_s & = frac(N_p, N_s) Delta V_p $
Maxwell's four equations form our best classical theory of electromagnetism. Those equations imply that a changing magnetic field produces an electric field (Faraday's law), while a changing electric field can produce a magnetic field (Ampère's Law). By combining Maxwell's equation (with some heavy vector calculus), one can show that this leads to the formation of electromagnetic waves, that propagate with a speed, $c$, given by:

$ c = frac(1, sqrt(epsilon_0 mu_0)) $
#importantBlock(heading: [Important Equations])[
*Magnetic flux:*

$ Phi_B = integral_S arrow(B) dot.op d arrow(A) $
*Faraday's law:*

$ Delta V = -N frac(d Phi_B, d t) $
*Faraday's law:*

$ oint arrow(E) dot.op d arrow(l) & = -frac(d Phi_B, d t) $
*Voltage produced by a generator:*

$ Delta V = N A B omega sin(omega t) $
*Counter torque on a generator:*

$ tau = frac(N A^2 B^2 omega sin^2 (omega t), R) $
*Secondary voltage in a transformer:*

$ Delta V_s & = frac(N_p, N_s) Delta V_p $
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- Who first discovered induction? Why is it called Faraday's law?
- Give a few examples of applications of magnetic braking.
- How does a microphone make use of electromagnetic induction?
- What is magnetic damping?
- How does an induction stove work?
- How does a credit card swipe reader make use of induction?
- What is the origin of Maxwell's equations? When did he publish them?
- Who was the first to detect electromagnetic waves? How were they produced and detected?
]

#seealsoBlock(heading: [To try at home])[
- Demonstrate magnetic braking by moving a conducting piece of material through a magnetic field.
]

#seealsoBlock(heading: [To try in the lab])[
- Construct an AC generator.
- Propose an experiment to measure Earth's magnetic field using induction.
- Propose an experiment to measure a bar magnet's strength using induction.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 22.1])[
In the 1950s, the Royal Canadian Air Force developed a jet airplane called the Avro Arrow. This jet reached a speed of Mach 1.9 ($6 5 2 upright m s^(-1)$), and was considered one of the most advanced airplanes that existed at the time. Suppose that the Avro Arrow is travelling at a velocity of $v = 6 5 2 upright m s^(-1)$ above the South Pole through Earth's vertical magnetic field, $B = 5 . 2 e -5 upright T$, as shown in @fig:induction:avro. If the Avro Arrow had a wingspan of $l = 1 5 upright m$, determine the induced voltage across its wings.

#show figure: set block(breakable: true)
#figure(
  image("files/avro-2bee885122f39a9c5de989faa5ab7a4b.png", width: 25%),
  caption: [
The Avro Arrow moving through a magnetic field.
],
  kind: "figure",
  supplement: [Figure],
) <fig:induction:avro>
]

#noteBlock(heading: [Problem 22.2])[
A generator is made of $N$ circular loops of radius $R = 0 . 3 upright m$, rotating at a frequency of $f = 6 0 upright H z$ in a uniform magnetic field, $B = 0 . 1 upright T$. How many coils must the generator have in order for it to produce an alternating voltage with a maximum amplitude of $Delta V = 1 1 0 upright V$.
]

==== Solutions <solutions>

#noteBlock(heading: [Solution 22.1])[
This is identical to the motional emf that is generated by a bar moving in a magnetic field. As the airplane moves as illustrated (towards the left, in an upwards magnetic field), the electrons in the wing of the airplane will be pushed into the page. Eventually, the electric field from the electrons will prevent further electrons from accumulating at that side of the wing, and there will be a constant (Hall) voltage, $Delta V$, across the wing tips. This will happen when the magnetic and electric force are equal and opposite:

$ q v B & = q E = q frac(Delta V, L) $
where $L$ is the wingspan of the airplane. The induced potential is thus given by:

$ Delta V = B L v =(5 . 2 e -5 upright T)(1 5 upright m)(6 5 2 upright m s^(-1)) = 0 . 5 1 upright V $
]

#noteBlock(heading: [Solution 22.2])[
The voltage produced by a generator is given by:

$ Delta V & = N A B omega sin(omega t) $
and the angular frequency is given by $omega = 2 pi f$. The number of required coils is thus:

$ N = frac(Delta V, A B omega) = frac(Delta V, pi R^2 B 2 pi f) = frac((1 1 0 upright V), 2 pi^2 (0 . 3 upright m)^2 (0 . 1 upright T)(6 0 upright H z)) = 1 0 . 3 $
Thus, one requires 10 loops in the coil to generate the desired voltage.
]