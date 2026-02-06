# Maintainer: Gia Phu <crystalforceix@gmail.com>
pkgname=bcachefs-rollback-initramfs
pkgver=1.0.0
pkgrel=2
pkgdesc="Bcachefs snapshots rollback hook for mkinitcpio"
arch=('any')
url="https://github.com/RengeOS/Bcachefs-Rollback-Initramfs"
license=('GPL')
depends=('mkinitcpio' 'bcachefs-tools' 'rsync' 'squashfs-tools')
install="${pkgname}.install"
source=()
sha256sums=()

package() {
    install -Dm644 "${startdir}/install/bcachefs-rollback" \
        "${pkgdir}/usr/lib/initcpio/install/bcachefs-rollback"
    
    install -Dm644 "${startdir}/hooks/bcachefs-rollback" \
        "${pkgdir}/usr/lib/initcpio/hooks/bcachefs-rollback"
}
