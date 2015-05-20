# zk-fleet
zookeeper runs under coreos fleet control

because issue:[ZOOKEEPER-1506](https://issues.apache.org/jira/browse/ZOOKEEPER-1506), I have to use the snapshot version

sidekick using systemd bug: [89087](https://bugs.freedesktop.org/show_bug.cgi?id=89087)
the workaround (maybe it is the correct way) is to set the sidekick unit in the main uint's `Wants` directive
otherwise if the main unit is stop and start again, the sidekick will not be restarted.


note: don't use the Requires in the systemd unit. otherwise it will not restart when required units failed
