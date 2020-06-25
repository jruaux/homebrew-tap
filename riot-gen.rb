class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.4"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-gen-#{version}.tgz"
    sha256 "15191710397e8b599c3a126b8f5e8a6b02cb28ece36b8421c51df388466b9e90"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
