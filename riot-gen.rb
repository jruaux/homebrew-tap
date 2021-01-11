class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.4.1"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-gen-#{version}.zip"
    sha256 "f365b2d9d6a29f01d3b0ae4d0e274f557d0f820401ba2eb9d6366e712d152acb"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
