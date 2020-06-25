class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.4"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-db-#{version}.tgz"
    sha256 "3485cd2a799fa1d94526ee91aa4c1b6118090ee955815c0a67f879f49fc59e6e"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
