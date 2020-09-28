class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.1.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-db-#{version}.zip"
    sha256 "843a808d13e2e986661f5832f1ee77538735115bf6a691ad577f8655c2b80c84"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
