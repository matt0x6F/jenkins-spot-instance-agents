# Jenkins Agent Spot Instances
Spot Instances are really powerful for short term jobs that require specific resources which makes them perfect for Jenkins Agents. [You can read about Spot Instances here](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-spot-instances-work.html). This Cloudformation template was designed for use with the [Jenkins EC2-Fleet plugin](https://wiki.jenkins.io/display/JENKINS/Amazon+EC2+Fleet+Plugin).

On my Agents I enforce builds to occur in docker so that I don't need snowflake dedicated resources. In order to accomplish this I have the following requirements:
* Git
* Docker
* Java 1.8.0

## Considerations

I've parameterized most of the settings, though you might want to edit which instances are used (Line 159).

### Weights
I set the weight of each Launch Configuration to 1 because each instance I've selected is around an on-demand cost of $.1/hr and have fairly similar resources, the spot instance price at the time of this writing is $.033/hr. I have 20 instances I need in total, so each gets a weight of 1.

### Subnets
Spot instance availability is per region, per AZ. All my instances in the example are in AZ A, but you should vary them both by AZ and instance type.
