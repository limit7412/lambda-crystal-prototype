docker run --rm -v $(pwd):/src -w /src \
           tjholowaychuk/up-crystal crystal build \
           --link-flags -static -o bootstrap src/main.cr && \
chmod 755 bootstrap && \
zip lambda-crystal.zip bootstrap