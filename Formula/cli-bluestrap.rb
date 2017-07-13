class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.59.0.tar.gz'
  sha256 '65877879e5c4f7e96b7e254021af683e284c3ee6fce7b866615ca3f4c3a69aa7'
  version '0.59.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.59.0'
  end

  test do
    system 'bs', '--help'
  end
end
