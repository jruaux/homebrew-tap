class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.1.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-redis-#{version}.zip"
    sha256 "92f8aab15676048488592585286b50ee6c0c766bb266672ae95fd1a5e5395b4d"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
