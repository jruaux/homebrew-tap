class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.4.1"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-db-#{version}.zip"
    sha256 "933af181adec02948294e37a8d1f76a980e8f64df889fc271f035b59529f147e"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
