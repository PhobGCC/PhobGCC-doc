# Kalman-inspired filter for snapback

For a thorough introduction to Kalman filters, check out this website: https://www.kalmanfilter.net/

Kalman filters are a common way to estimate current system state when all you have are noisy measurements. They use a model of the system's behavior to generate a prediction of the current state, and then blend that with measurements, while tracking uncertainty for both the measurements for the model. By choosing the right blend of measurement data and predictions from past data, they can generate estimates that are more accurate than the measurements alone.

In the PhobGCC, the measured stick positions have a slightly noisy signal, but it wouldn't be hard to get a good estimate of the actual stick position. The main issue is removal of unwanted snapback oscillations. Thus, we heavily modify the Kalman filter in order to exclude the measurements when we think the stick is undergoing snapback, and add other changes to improve behavior in other circumstances.

# Filter components

## Current position measurement

When determining the final estimated stick position, we weight the current measured position according to the minimum of the following:

1. To ensure that the stick responds quickly to full stick inputs, the first weight is the radius of the stick position to the 6th power. This stays very close to 0 and then it rises very suddenly near the edge. We can assume that snapback is not currently occurring when the stick is near the rim, because by definition it only occurs when the stick is released.
2. To ensure that the stick responds reasonably quickly to small stick inputs, the second weight is 1 when the stick is not moving or accelerating in that particular axis, and it gradually drops to 0 as the acceleration or velocity reach corresponding thresholds. The assumption here is that problematic amounts of snapback outside the deadzone will always have acceleration or velocity (or both) greater than these thresholds, while small manual stick movements will never be near these thresholds.

These cover both cases: a small input will always be slow compared to snapback, and any input near the rim, even if fast, will never be snapback.

## Prediction of future motion

The prediction based on past motion is weighted to be the complement of the current position measurement's weight.

However, the prediction based on past motion is not actually designed to be as accurate as possible. It's just an estimate of the *desired* velocity.

For one, we reduce the velocity estimate by a damping factor, which is a parameter you can adjust to tame snapback on particularly high-snapback controllers.

Secondly, the velocity estimate is itself a heavily filtered rendition of the current velocity.

* The current velocity is weighted according to the radius of the stick position squared, so that it is mostly ignored near the center (though less so than the stick position weight).
* The previous filtered velocity is weighted according to the complement of the current velocity's weight, but it has an additional decay factor to help prevent unwanted slow overshoots when returning to center.
* The disagreement between the previous measured stick position and the previous filtered stick position is lightly weighted into the filtered velocity in order to help improve responsiveness but not enough to cause overshooting.

# Results

For smash inputs, the PhobGCC analog stick filter ignores the initial part of the stick travel due to high speed/acceleration and not being near the gate, and then it "catches up". This results in a very short time interval where the filtered stick position is in the tilt region, which helps with the reliability of dashbacks, pivots, and wiggle out of tumble.

For small tilt outputs, the stick is still very responsive because humanly possible stick inputs can't approach the incredible speeds or accelerations characteristic of snapback. By closely following the stick when it is moving slowly, the PhobGCC maintains responsiveness for small inputs, which is useful for fast tilts, turnarounds, and slight DI.

Finally, when the stick is released, the high velocity and acceleration of the stick snapback cause the filter to drastically decrease the weight of the current stick position, allowing it to effectively ignore the oscillation and dampen the overshoot.

Thanks to this combination of characteristics, the PhobGCC analog stick filter achieves excellent responsiveness for *Melee* while taming snapback.

If you want to peruse the actual code for the filter, it is well-commented [here](https://github.com/PhobGCC/PhobGCC-SW/blob/843ff59011ab0bced795b43427e81f2a1a8c55f1/PhobGCC/PhobGCC.ino#L2636).


![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
