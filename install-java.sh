wget https://download.oracle.com/java/22/latest/jdk-22_linux-aarch64_bin.tar.gz
tar xfvz jdk-22_linux-aarch64_bin.tar.gz
mv jdk-22.0.2 /usr/lib/jvm/jdk-22.0.2/
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-22.0.2/bin/java 2082
