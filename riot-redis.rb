class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.4"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-redis-#{version}.tgz"
    sha256 "37d1b89be5ddace3a7fa78595c089fdb00cfd6598da79caa8e764e557074c132"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
