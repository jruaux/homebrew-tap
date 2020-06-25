class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-gen-#{version}.tgz"
    sha256 "bffaaee10acbe9a462133af86bb8b4deaa452050ab1e4fa8dd746dc61275a9a3"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
