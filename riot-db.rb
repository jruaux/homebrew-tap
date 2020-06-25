class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-db-#{version}.tgz"
    sha256 "980bc8d3bf40e4b0cb111d4d28bc20b6f9e3b0d9dfa9a335d7a66a5283f65bcf"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
