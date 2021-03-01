class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.5.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-file-#{version}.zip"
    sha256 "2537545d6abadb902987b1e50cb5d650fd38ed187817df3e45a37ff6e428de5b"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
