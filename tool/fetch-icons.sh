rm -rf ../.cache
git clone https://github.com/tailwindlabs/heroicons.git ../.cache
mv -f ../.cache/src/outline/* ../assets/outline
mv -f ../.cache/src/solid/* ../assets/solid
