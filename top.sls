base:
  '*':
    - internal_networks
    - rsyslog
    - consul
    - github
    - users
  'ec2:True':
    - match: grain
    - newrelic-server
    - go-release
  'env:prod':
    - match: grain
    - users.prod
  'ec2_region:us-west-2': # EC2-West (Applies to All AWS West Servers)
    - match: grain
    - resolv.us-west-2
