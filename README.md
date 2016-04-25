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
$ sudo bash -c 'JRUN=/usr/local/bin/taskjuggler; curl -L https://raw.githubusercontent.com/sthysel/docker-taskjuggler/master/taskjuggler > $JRUN && chmod +x $JRUN'
```
