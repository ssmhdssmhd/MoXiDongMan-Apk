package com.google.zxing.datamatrix.encoder;

/* renamed from: com.google.zxing.datamatrix.encoder.do, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdo implements Encoder {
    /* renamed from: do, reason: not valid java name */
    private static char m21907do(char c, char c2) {
        if (Celse.m21914else(c) && Celse.m21914else(c2)) {
            return (char) (((c - '0') * 10) + (c2 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c + c2);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(Ccase ccase) {
        if (Celse.m21913do(ccase.m21904try(), ccase.f17500case) >= 2) {
            ccase.m21899native(m21907do(ccase.m21904try().charAt(ccase.f17500case), ccase.m21904try().charAt(ccase.f17500case + 1)));
            ccase.f17500case += 2;
            return;
        }
        char cM21900new = ccase.m21900new();
        int iM21920super = Celse.m21920super(ccase.m21904try(), ccase.f17500case, getEncodingMode());
        if (iM21920super == getEncodingMode()) {
            if (!Celse.m21917goto(cM21900new)) {
                ccase.m21899native((char) (cM21900new + 1));
                ccase.f17500case++;
                return;
            } else {
                ccase.m21899native(Celse.f17522new);
                ccase.m21899native((char) ((cM21900new - 128) + 1));
                ccase.f17500case++;
                return;
            }
        }
        if (iM21920super == 1) {
            ccase.m21899native(Celse.f17519if);
            ccase.m21903throw(1);
            return;
        }
        if (iM21920super == 2) {
            ccase.m21899native(Celse.f17518goto);
            ccase.m21903throw(2);
            return;
        }
        if (iM21920super == 3) {
            ccase.m21899native(Celse.f17515else);
            ccase.m21903throw(3);
        } else if (iM21920super == 4) {
            ccase.m21899native(Celse.f17525this);
            ccase.m21903throw(4);
        } else {
            if (iM21920super != 5) {
                throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(iM21920super)));
            }
            ccase.m21899native(Celse.f17517for);
            ccase.m21903throw(5);
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 0;
    }
}
