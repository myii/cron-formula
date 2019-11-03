# -*- coding: utf-8 -*-
# vim: ft=yaml
---
cron:
  enabled: true      # Default
  tasks:
    # Test all of the available options
    task1:
      type: present  # Default
      name: echo test > /tmp/test
      user: root
      minute: 0
      hour: 0
      daymonth: 7
      month: 1
      dayweek: 6
      comment: comment1
      commented: false
    # Test `type: absent`
    task2:
      type: absent   # To remove that crontask
      name: echo task2 > /tmp/test2
      user: root
      minute: random
      hour: 1
    # Test `special`
    task3:
      type: present
      name: echo task3 > /tmp/test3
      user: root
      special: '@hourly'
      comment: comment3
    # Test `*`
    task4:
      type: present  # run every 5 minutes
      name: echo task4 > /tmp/test4
      user: root
      minute: '*/5'
      hour: '*'
      comment: comment4
    # Test `commented: true` and `minute: random`
    task5:
      type: present
      name: echo task5 > /tmp/test5
      user: root
      minute: random
      hour: 1
      commented: true
  env:
    env1:
      type: present
      name: PATH
      value: /usr/local/bin:/usr/bin:/bin:/usr/games
      user: root
    env2:
      type: present
      name: MAILTO
      value: example@example.com
      user: root
    env3:
      type: absent
      name: LANG
      value: en_GB.UTF-8
      user: root
