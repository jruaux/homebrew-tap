class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.2.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-gen-#{version}.zip"
    sha256 "db0d69597f44ff808fd4ee94fae116c0b6809e44d2bbc6555a9a2319d2445e65"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
