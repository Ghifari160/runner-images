# Runner Images

Docker images based on [`actions/runner-images`](https://github.com/actions/runner-images).

The templates depends on some tools that exists in a normal Ubuntu installation, but not in the
base Ubuntu image.
So the images are built on [`ghifari160/ubuntu`](https://github.com/ghifari160/docker-images).

The images are large (~41 GB _uncompressed_ / 14 GB _compressed_).
Build times are in the range of one to three hours.

They are manually built on:

- Changes to the template
- New version of the official images
- As I see fit

## Completeness

The images are not complete.
Most notably, MySQL and PostgreSQL are omitted as they create build failures.
The Android SDK is also not included as it fails to link with the default Java linker of the
templates.

Some packages are not pinned to a specific version by the templates, so they may differ from
the official images.
See [`images/linux/Ubuntu2204-Readme.md`](images/linux/Ubuntu2204-Readme.md) for more information.

## Why not a fork?

This repository aims to maintain minimal changes from the official templates.
The changes between upstream commits should not matter, and the changes between upstream and this
repo should be mostly the same across versions.
A direct fork would muddle the commit history.

## Licenses

Housekeeping scripts ([`scripts/`](scripts/)) and modification: © 2023 GHIFARI160,
[MIT License](LICENSE).

Templates and scripts: © 2023 GitHub,
[MIT License](https://github.com/actions/runner-images/blob/main/LICENSE).
