class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.3.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-db-#{version}.zip"
    sha256 "f10cc32cb20b5ab1350ee88dc746cae0e9609fd08adab99ff41fc81b55081102"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
