docker run --rm -v $(pwd):/src -w /src \
           jhass/crystal-build-x86_64 crystal build \
           --link-flags -static -o bootstrap src/main.cr && \
chmod 755 bootstrap && \
zip lambda-crystal.zip bootstrap