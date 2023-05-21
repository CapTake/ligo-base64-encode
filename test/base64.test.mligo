#import "../lib/base64.jsligo" "Base64"

let test_encode =
  begin
    assert (Base64.base64_encode 0x00 = "AA==");
    assert (Base64.base64_encode 0x0000 = "AAA=");
    assert (Base64.base64_encode 0x000000 = "AAAA");
    assert (Base64.base64_encode 0xFF = "/w==");
    assert (Base64.base64_encode 0xFFFF = "//8=");
    assert (Base64.base64_encode 0xFFFFFF = "////");
    assert (Base64.base64_encode 0xFFEF = "/+8=");
    assert (Base64.base64_encode 0x53656e64207265696e666f7263656d656e7473 = "U2VuZCByZWluZm9yY2VtZW50cw==")
  end


