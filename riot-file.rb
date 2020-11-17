class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.3.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-file-#{version}.zip"
    sha256 "08f4a7ae0e7101f615009face2dc7f89cce7fb5616199aceba310ed63229f43e"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
