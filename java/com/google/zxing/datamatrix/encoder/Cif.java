package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;

/* renamed from: com.google.zxing.datamatrix.encoder.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif implements Encoder {
    /* renamed from: do, reason: not valid java name */
    private static char m21945do(char c, int i) {
        int i2 = c + ((i * 149) % 255) + 1;
        return i2 <= 255 ? (char) i2 : (char) (i2 + InputDeviceCompat.SOURCE_ANY);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(Ccase ccase) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!ccase.m21887break()) {
                break;
            }
            sb.append(ccase.m21900new());
            ccase.f17500case++;
            if (Celse.m21920super(ccase.m21904try(), ccase.f17500case, getEncodingMode()) != getEncodingMode()) {
                ccase.m21903throw(0);
                break;
            }
        }
        int length = sb.length() - 1;
        int iM21892do = ccase.m21892do() + length + 1;
        ccase.m21898import(iM21892do);
        boolean z = ccase.m21896goto().m21941if() - iM21892do > 0;
        if (ccase.m21887break() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
                }
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            ccase.m21899native(m21945do(sb.charAt(i), ccase.m21892do() + 1));
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 5;
    }
}
