class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-file-#{version}.tgz"
    sha256 "040c7e172640f1a8aa4462972b059719d2aa82a005b9afa5cb5a04fe71165494"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
