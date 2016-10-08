[![](https://images.microbadger.com/badges/image/sthysel/nuhtml.svg)](https://microbadger.com/images/sthysel/docker-taskjuggler "Get your own image badge on microbadger.com")

# docker-taskjuggler

Provides a taskjuggler container and helper script to manage tasks using taskjuggler.


## taskjuggler helper script

The helper script will download sthysel/taskjuggler if not present.
This sample will drop the generated reports in ./testrun
```
$ ./taskjuggler template.tjp -o ./testrun
```

## makefile

To build the container locally use the makefile. This will use the local user's user id
as the container user's (planner) id.

```
$ make build
$ make testrun
```

# Install 

```
$ sudo bash -c 'JRUN=/usr/local/bin/tj; curl -L https://raw.githubusercontent.com/sthysel/docker-taskjuggler/master/tj > $JRUN && chmod +x $JRUN'
$ sudo bash -c 'JMAN=/usr/local/bin/tjman; curl -L https://raw.githubusercontent.com/sthysel/docker-taskjuggler/master/tjman > $JMAN && chmod +x $JMAN'
```
