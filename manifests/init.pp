# Public: Install GIMP, the GNU Image Manipulation Program.
#
# Examples
#
#   include gimp
class gimp {
  include xquartz

  $source = $::macosx_productversion_major ? {
    '10.9' => 'http://downloads.sourceforge.net/project/gimponosx/GIMP%20Mavericks/Gimp-2.8.10p2-Mavericks.dmg',
    '10.8' => 'http://downloads.sourceforge.net/project/gimponosx/GIMP%20Snow%20Leopard/2.8.10/Gimp-2.8.10-SL-Lion-ML-x64.dmg'
  }

  package { 'gimp':
    provider => 'appdmg',
    source   => $source,
  }

}
