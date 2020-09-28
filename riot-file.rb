class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.1.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-file-#{version}.zip"
    sha256 "9475ba97a4ecf6ed1a8b9d34fa37b4495ab5439123c1a22501820737082d57ef"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
