package com.google.zxing.datamatrix.encoder;

/* renamed from: com.google.zxing.datamatrix.encoder.catch, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ccatch extends Cfor {
    @Override // com.google.zxing.datamatrix.encoder.Cfor, com.google.zxing.datamatrix.encoder.Encoder
    public void encode(Ccase ccase) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!ccase.m21887break()) {
                break;
            }
            char cM21900new = ccase.m21900new();
            ccase.f17500case++;
            mo21885if(cM21900new, sb);
            if (sb.length() % 3 == 0) {
                Cfor.m21926try(ccase, sb);
                if (Celse.m21920super(ccase.m21904try(), ccase.f17500case, getEncodingMode()) != getEncodingMode()) {
                    ccase.m21903throw(0);
                    break;
                }
            }
        }
        mo21906new(ccase, sb);
    }

    @Override // com.google.zxing.datamatrix.encoder.Cfor, com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 3;
    }

    @Override // com.google.zxing.datamatrix.encoder.Cfor
    /* renamed from: if */
    public int mo21885if(char c, StringBuilder sb) {
        if (c == '\r') {
            sb.append((char) 0);
        } else if (c == ' ') {
            sb.append((char) 3);
        } else if (c == '*') {
            sb.append((char) 1);
        } else if (c == '>') {
            sb.append((char) 2);
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
        } else if (c < 'A' || c > 'Z') {
            Celse.m21909case(c);
        } else {
            sb.append((char) ((c - 'A') + 14));
        }
        return 1;
    }

    @Override // com.google.zxing.datamatrix.encoder.Cfor
    /* renamed from: new, reason: not valid java name */
    public void mo21906new(Ccase ccase, StringBuilder sb) {
        ccase.m21905while();
        int iM21941if = ccase.m21896goto().m21941if() - ccase.m21892do();
        ccase.f17500case -= sb.length();
        if (ccase.m21893else() > 1 || iM21941if > 1 || ccase.m21893else() != iM21941if) {
            ccase.m21899native((char) 254);
        }
        if (ccase.m21888case() < 0) {
            ccase.m21903throw(0);
        }
    }
}
