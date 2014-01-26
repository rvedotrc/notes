'jq' examples

AWS CloudFormation

jq -M < prod-stacks.json '.Stacks[] | select(.StackName=="LiveModavMattress") | .Parameters | sort_by(.ParameterKey)'
- a single array of hashes, sorted by ParameterKey

jq -M '.Reservations[].Instances[] | select(.Tags[].Value == "TestModavMattress")' < prod-ec2.json
- zero or more hashes

jq -M '[ .Reservations[].Instances[] | select(.Tags[].Value == "TestModavMattress") ]' < prod-ec2.json
- a single array of zero or more hashes

jq -M '[ .Reservations[].Instances[] | select(.State.Name=="running") | [ ( .Tags[] | select(.Key=="Name") | .Value), .InstanceType, .PrivateIpAddress ] ]' < prod-ec2.json | vim -
- summary of running instances - Name, InstanceType and PrivateIpAddress of each
- remove the enclosing [ ] and add "-c" to get one json array per line





cat prod-instances.json | jq -M -c '
  .Reservations[].Instances[] | .Tags=([ .Tags[] | { key:.Key, value:.Value } ] | from_entries)
    | [ .InstanceId, .InstanceType, .Placement.AvailabilityZone, .State.Name, .Tags.BBCEnvironment, .Tags.BBCProject, .Tags.BBCComponent, .Tags.BBCBilling ]
'
