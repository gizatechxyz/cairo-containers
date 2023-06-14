# Giza Cairo 1.0 Containers

[Cairo 1.0](https://www.cairo-lang.org/) applications, provided by Giza, containerized and ready to launch.

## Why use Giza's Cairo 1.0 Images?

- Giza closely tracks upstream source changes and promptly publishes new versions of this image using our automated systems.
- With Giza's Cairo 1.0 images the latest bug fixes and features are available as soon as possible.
- Giza containers, virtual machines and cloud images use the same components and configuration approach - making it easy to switch between formats based on your project needs.
- All our images are based on Ubuntu image with the familiarity of a leading Linux distribution.
- All Giza Cairo 1.0 images are available in Docker Hub.
- Giza container images are released on a regular basis with the latest distribution packages available.

## Get an image

The recommended way to get any of the Cairo 1.0 Images is to pull the prebuilt image from the Docker Hub Registry. The tag corresponds with the release version of Cairo 1.0. You can see all releases [here](https://github.com/starkware-libs/cairo/releases).

```
docker pull gizatechxyz/cairo-1.0
```

To use a specific version, you can pull a versioned tag.

```
docker pull gizatechxyz/cairo-1.0:[TAG]
```

If you wish, you can also build the image yourself by cloning the repository and executing the docker build command.

```
git clone https://github.com/gizatechxyz/cairo-containers.git
docker build -t gizatechxyz/cairo-1.0 .
```

If you want to build the Cairo 1.0 image with a specific version you can use:

```
git clone https://github.com/gizatechxyz/cairo-containers.git
docker build -t gizatechxyz/cairo-1.0 --build-arg="CAIRO_GIT_TAG=v1.1.0" --build-arg="SCARB_VERSION=v0.3.0" .
```

## Contributing

We'd love for you to contribute to those container images. You can request new features by creating an issue, or submit a pull request with your contribution.

## License

This project is licensed under the MIT license.

See [LICENSE](./LICENSE) for more information.