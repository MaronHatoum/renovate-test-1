if ! command -v kustomize &> /dev/null; then
  # renovate: datasource=github-tags depName=kustomize packageName=kubernetes-sigs/kustomize versioning=regex:^kustomize\/v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)$
  KUSTOMIZE_VERSION="kustomize/v4.5.5"
  curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | sudo bash -s "${KUSTOMIZE_VERSION}" /usr/local/bin/
fi
