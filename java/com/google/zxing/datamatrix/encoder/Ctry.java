package com.google.zxing.datamatrix.encoder;

/* renamed from: com.google.zxing.datamatrix.encoder.try, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctry implements Encoder {
    /* renamed from: do, reason: not valid java name */
    private static void m21946do(char c, StringBuilder sb) {
        if (c >= ' ' && c <= '?') {
            sb.append(c);
        } else if (c < '@' || c > '^') {
            Celse.m21909case(c);
        } else {
            sb.append((char) (c - '@'));
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static void m21947for(Ccase ccase, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            boolean z = true;
            if (length == 1) {
                ccase.m21905while();
                int iM21941if = ccase.m21896goto().m21941if() - ccase.m21892do();
                int iM21893else = ccase.m21893else();
                if (iM21893else > iM21941if) {
                    ccase.m21898import(ccase.m21892do() + 1);
                    iM21941if = ccase.m21896goto().m21941if() - ccase.m21892do();
                }
                if (iM21893else <= iM21941if && iM21941if <= 2) {
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException("Count must not exceed 4");
            }
            int i = length - 1;
            String strM21948if = m21948if(charSequence, 0);
            if (!(!ccase.m21887break()) || i > 2) {
                z = false;
            }
            if (i <= 2) {
                ccase.m21898import(ccase.m21892do() + i);
                if (ccase.m21896goto().m21941if() - ccase.m21892do() >= 3) {
                    ccase.m21898import(ccase.m21892do() + strM21948if.length());
                    z = false;
                }
            }
            if (z) {
                ccase.m21890class();
                ccase.f17500case -= i;
            } else {
                ccase.m21901public(strM21948if);
            }
        } finally {
            ccase.m21903throw(0);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static String m21948if(CharSequence charSequence, int i) {
        int length = charSequence.length() - i;
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        int iCharAt = (charSequence.charAt(i) << 18) + ((length >= 2 ? charSequence.charAt(i + 1) : (char) 0) << '\f') + ((length >= 3 ? charSequence.charAt(i + 2) : (char) 0) << 6) + (length >= 4 ? charSequence.charAt(i + 3) : (char) 0);
        char c = (char) ((iCharAt >> 16) & 255);
        char c2 = (char) ((iCharAt >> 8) & 255);
        char c3 = (char) (iCharAt & 255);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c);
        if (length >= 2) {
            sb.append(c2);
        }
        if (length >= 3) {
            sb.append(c3);
        }
        return sb.toString();
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(Ccase ccase) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!ccase.m21887break()) {
                break;
            }
            m21946do(ccase.m21900new(), sb);
            ccase.f17500case++;
            if (sb.length() >= 4) {
                ccase.m21901public(m21948if(sb, 0));
                sb.delete(0, 4);
                if (Celse.m21920super(ccase.m21904try(), ccase.f17500case, getEncodingMode()) != getEncodingMode()) {
                    ccase.m21903throw(0);
                    break;
                }
            }
        }
        sb.append((char) 31);
        m21947for(ccase, sb);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 4;
    }
}
