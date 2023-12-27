object Form11: TForm11
  Left = 233
  Top = 154
  Width = 928
  Height = 480
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 40
    Top = 32
    object LOGIN1: TMenuItem
      Caption = 'LOGIN'
    end
    object FORM1: TMenuItem
      Caption = 'FORM'
      object FORMBARANG1: TMenuItem
        Caption = 'FORM BARANG'
        OnClick = FORMBARANG1Click
      end
      object FORMKATEGORI1: TMenuItem
        Caption = 'FORM KATEGORI'
        OnClick = FORMKATEGORI1Click
      end
      object FORMJUAL1: TMenuItem
        Caption = 'FORM JUAL'
        OnClick = FORMJUAL1Click
      end
      object FORMKOSTUMER1: TMenuItem
        Caption = 'FORM KOSTUMER'
        OnClick = FORMKOSTUMER1Click
      end
      object FORMSTOK1: TMenuItem
        Caption = 'FORM STOK'
        OnClick = FORMSTOK1Click
      end
      object FORMBELI1: TMenuItem
        Caption = 'FORM BELI'
        OnClick = FORMBELI1Click
      end
      object FOEMSUPPLIER1: TMenuItem
        Caption = 'FOEM SUPPLIER'
        OnClick = FOEMSUPPLIER1Click
      end
      object FORMDETAILJUAL1: TMenuItem
        Caption = 'FORM DETAIL JUAL'
        OnClick = FORMDETAILJUAL1Click
      end
      object FORMDETAILBELI1: TMenuItem
        Caption = 'FORM DETAIL BELI'
        OnClick = FORMDETAILBELI1Click
      end
      object FORMUSER1: TMenuItem
        Caption = 'FORM USER'
        OnClick = FORMUSER1Click
      end
    end
    object LAPORAN1: TMenuItem
      Caption = 'LAPORAN'
    end
  end
end
