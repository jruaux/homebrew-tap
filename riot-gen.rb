class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.2.6"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-gen-#{version}.zip"
    sha256 "180171897d12322ef2243606754f044b16d0ee2bd70bc0d850efafd04f876731"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
