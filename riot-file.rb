class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.2.6"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-file-#{version}.zip"
    sha256 "e0951eacff4f2587a5208e049030bd773ebfb0122abfc06f8d27ae02772c5064"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
