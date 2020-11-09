class RiotStream < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.3.1"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-stream-#{version}.zip"
    sha256 "6bbd86fd8f78c5f2a41b67d19b200ccbdafec8c031e623356873407c0ae95b90"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-stream"
    end
  end
