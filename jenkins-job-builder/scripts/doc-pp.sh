set +x
# Test Puppet Documentation and Metadata
# puppet doc --outputdir /var/www/puppetdocs/ --mode rdoc
# TODO:
#	Support for Puppet Doc and Strings
#	petems/puppet-doc-lint - Test for RDoc coverage
#	Metadata json validation: metadata-json-lint
#	Build so output (warnings/alerts/metris) can be consumed in Jenkins
#
# /opt/puppet/bin or /usr/local/bin/
echo 'xxxxxxxxxxxxxxxxx';echo 'Executing the Puppet Doc testing:'
find . -name '*.pp' -type f | xargs -r -n 1 -t /opt/puppet/bin/puppet doc --outputdir ./puppetdocs/ --mode rdoc

#set +x
# Another doc generation
### Cleanup old docs.
#[ -d doc/ ] && rm -rf doc/
### Dummy manifests folder.
#! [ -d manifests/ ] && mkdir manifests/
### Generate docs
#puppet doc --mode rdoc --manifestdir manifests/ --modulepath ./modules/ --outputdir doc
# 
### Fix docs to remove the complete workspace from all the file paths.
#if [ -d ${WORKSPACE}/doc/files/${WORKSPACE}/modules ]; then
#  mv -v "${WORKSPACE}/doc/files/${WORKSPACE}/modules" "${WORKSPACE}/doc/files/modules"
#fi;
#grep -l -R ${WORKSPACE} * | while read fname; do sed -i "s@${WORKSPACE}/@/@g" $fname; done;

# Publish HTML Reports
#   doc, index.html, Puppet Docs

