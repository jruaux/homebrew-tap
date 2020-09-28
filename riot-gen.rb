class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.1.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-gen-#{version}.zip"
    sha256 "ba6ee37c42bd63571a7c2ab08fdb2c9318bf59f19119249303d1c7ac2215918e"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
