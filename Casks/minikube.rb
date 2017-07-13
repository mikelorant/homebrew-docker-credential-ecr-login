cask 'minikube' do
  version '0.18.0'
  sha256 '301dc5f47cccface80769bd3a03d58ba80893f6ede75f2a7ec22f1bc56666deb'

  # storage.googleapis.com/minikube was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/minikube/releases/v#{version}/minikube-darwin-amd64"
  appcast 'https://github.com/kubernetes/minikube/releases.atom',
          checkpoint: '577fe8f01e8e845dc03231e3ed21b3ebc0e40eac'
  name 'Minikube'
  homepage 'https://github.com/kubernetes/minikube'

  container type: :naked

  binary 'minikube-darwin-amd64', target: 'minikube'

  zap delete: '~/.minikube'
end
