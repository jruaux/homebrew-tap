class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.2.3"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-db-#{version}.zip"
    sha256 "c713b80c562ec7e1fafca44589ab057e49ceabfa07cb10f6a794b5a3806446b6"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
