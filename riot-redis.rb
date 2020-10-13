class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.2.3"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-redis-#{version}.zip"
    sha256 "b4290bb3ac357f7e166655f7aad5011eba3995f65141ecb5a2499b866285d995"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
