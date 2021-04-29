# docker-gnucobol

[![Gitter][gitter-image]][gitter-url]
[![Docker Repository][docker-image]][docker-url]

Docker Container with GNU Cobol pre-installed. So you can do things out of the box like:

```sh
$ cobc -xj test.cob
docker-gnucobol installed successfully!
```

## To build and run
* Build `docker build -t gnucobol:1.1 .` 
* Run only Dockerfile `docker container run --name gnucobol gnucobol:1.1`
* Run with interactive shell and atach bash
    * `docker container run --name gnucobol -i gnucobol:1.1` add a trailing `&` to move it to background
    * `docker exec -it gnucobol bash` in a new tab or window

## License

MIT

## See Also

- [gnu cobol](https://sourceforge.net/projects/open-cobol/)

[docker-image]: https://img.shields.io/badge/Docker-gnucobol-1aaaf8.svg?style=flat-square
[docker-url]: https://hub.docker.com/r/morecobol/gnucobol/

[gitter-image]: http://img.shields.io/badge/+%20GITTER-JOIN%20CHAT%20%E2%86%92-1DCE73.svg?style=flat-square
[gitter-url]: https://gitter.im/morecobol
