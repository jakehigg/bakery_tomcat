node default {
	class { 'java':
	  distribution => 'jre',
	}
        tomcat::install { '/opt/tomcat':
          source_url => 'http://apache.mirrors.lucidnetworks.net/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz',
        }
        tomcat::instance { 'default':
          catalina_home => '/opt/tomcat',
        }
}
