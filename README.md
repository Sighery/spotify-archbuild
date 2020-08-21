# Automated Arch Linux package for Spotify

You can find a built package under the latest GitHub Actions run as an
artifact.

That artifact is also uploaded and added to my own
[Arch Linux repository][Sighery's Arch Linux repository].

## How the artifact is built

GitHub Actions is used as the CI provider to run the `makepkg` command on my
[Arch Linux Docker image][sighery/archbuilder].

After that, the package itself is then packaged into a `.tar.gz` file (so
there are [no issues with the filename][invalid artifact name characters]),
and uploaded as an artifact to that run.

The PKGBUILD and other necessary files are simply taken from the
[AUR entry][AUR spotify]. AUR entries are just Git repositories. As such, they
can be set as submodules of this repository.

Keeping the submodule updated is then up to [GitHub-native Dependabot][]. Any
updates to the AUR entry repository will trigger Dependabot to update this
submodule, which in turn will trigger the CI run.


[Sighery's Arch Linux repository]: https://archrepo.sighery.com/
[sighery/archbuilder]: https://hub.docker.com/r/sighery/archbuilder
[Invalid artifact name characters]: https://github.com/actions/toolkit/blob/master/packages/artifact/docs/additional-information.md#Non-Supported-Characters
[AUR spotify]: https://aur.archlinux.org/packages/spotify/
[GitHub-native Dependabot]: https://github.blog/2020-06-01-keep-all-your-packages-up-to-date-with-dependabot/
