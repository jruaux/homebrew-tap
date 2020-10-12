class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.2.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-file-#{version}.zip"
    sha256 "b76dc69a68ccc14094759ca43da221ce5c1bdc21ae0cc1fc254839230045fe10"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
