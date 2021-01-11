class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.4.1"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-file-#{version}.zip"
    sha256 "182bfea50bec052ddee8b019c1a1a2f4ab05511746d0494283b86971e4dd52a3"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
