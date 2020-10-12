class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.2.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-db-#{version}.zip"
    sha256 "6f7a03e7b8f02e080b96528dcb9d0a23a192a69845e7123b2ba3457f4d5feddf"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
