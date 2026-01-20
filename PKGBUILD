# Maintainer: Gia Phu <crystalforceix@gmail.com>
pkgname=ros-bcachefs-rollback
pkgver=1.0.0
pkgrel=1
pkgdesc="Bcachefs snapshots rollback hook for mkinitcpio"
arch=('any')
url="https://github.com/RengeOS/bcachefs-snapshots-hook-initramfs"
license=('GPL')
depends=('mkinitcpio' 'bcachefs-tools' 'rsync')
install="${pkgname}.install"
source=('install/bcachefs-rollback'
        'hooks/bcachefs-rollback')
sha256sums=('SKIP'
            'SKIP')

package() {
    install -Dm644 "${srcdir}/install/bcachefs-rollback" \
        "${pkgdir}/usr/lib/initcpio/install/bcachefs-rollback"
    
    install -Dm644 "${srcdir}/hooks/bcachefs-rollback" \
        "${pkgdir}/usr/lib/initcpio/hooks/bcachefs-rollback"
}
