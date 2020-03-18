class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "1.10.1"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-#{version}.tgz"
    sha256 "7c868b0110de15382edd382c6dce63c327504a577fa5a4bf2acdfda9b5fbc216"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot"
      mkdir prefix/"bash"
  
      system "#{bin}/riot generate-completion > #{prefix}/bash/completion.bash"
      bash_completion.install "#{prefix}/bash/completion.bash" => "riot"
  
      system "#{bin}/riot generate-completion > #{prefix}/bash/completion.zsh"
      zsh_completion.install "#{prefix}/bash/completion.zsh" => "_riot"
    end
  end
