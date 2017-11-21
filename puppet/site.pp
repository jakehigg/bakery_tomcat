node default {
	class { 'java':
	  distribution => 'jre',
	}
        tomcat::install { '/opt/tomcat':
          source_url => 'http://apache.mesi.com.ar/tomcat/tomcat-9/v9.0.1/bin/apache-tomcat-9.0.1.tar.gz',
        }
        tomcat::instance { 'default':
          catalina_home => '/opt/tomcat',
        }
}
