sudo apt-get update
sudo apt-get -y install unzip
sudo apt-get -y install vim

sudo apt-get -y install openjdk-7-jdk curl

cd /home/vagrant

mkdir bin
cd bin
wget http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.1/sbt-launch.jar
cd ..

echo "PATH=\"$PATH:/home/vagrant/bin\"" >> /home/vagrant/.bashrc
echo "SBT_OPTS=\"-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M\"; java $SBT_OPTS -jar /home/vagrant/bin/sbt-launch.jar \"$@\"" > /home/vagrant/bin/sbt
chmod a+x /home/vagrant/bin/sbt


sudo apt-get -y install git
git clone https://github.com/twitter/finagle.git
cd finagle/doc/src/sphinx/code/quickstart
./sbt compile

