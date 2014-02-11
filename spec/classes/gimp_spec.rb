require 'spec_helper'

describe 'gimp' do
  let(:facts) { { :macosx_productversion_major => '10.9' } }

  it do
    should include_class('xquartz')
  end

  context "mavericks" do
    it do
      should contain_package('gimp').with( { :provider => 'appdmg', :source => 'http://downloads.sourceforge.net/project/gimponosx/GIMP%20Mavericks/Gimp-2.8.10p2-Mavericks.dmg' } )
    end
  end

  context "mountain lion" do
    let(:facts) { { :macosx_productversion_major => '10.8' } }
    it do
      should contain_package('gimp').with( { :provider => 'appdmg', :source => 'http://downloads.sourceforge.net/project/gimponosx/GIMP%20Snow%20Leopard/2.8.10/Gimp-2.8.10-SL-Lion-ML-x64.dmg' } )
    end
  end

end
