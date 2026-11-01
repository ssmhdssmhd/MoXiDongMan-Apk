package com.google.zxing.datamatrix.encoder;

/* renamed from: com.google.zxing.datamatrix.encoder.for, reason: invalid class name */
/* loaded from: classes2.dex */
class Cfor implements Encoder {
    /* renamed from: do, reason: not valid java name */
    private int m21924do(Ccase ccase, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        ccase.f17500case--;
        int iMo21885if = mo21885if(ccase.m21900new(), sb2);
        ccase.m21890class();
        return iMo21885if;
    }

    /* renamed from: for, reason: not valid java name */
    private static String m21925for(CharSequence charSequence, int i) {
        int iCharAt = (charSequence.charAt(i) * 1600) + (charSequence.charAt(i + 1) * '(') + charSequence.charAt(i + 2) + 1;
        return new String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)});
    }

    /* renamed from: try, reason: not valid java name */
    public static void m21926try(Ccase ccase, StringBuilder sb) {
        ccase.m21901public(m21925for(sb, 0));
        sb.delete(0, 3);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(Ccase ccase) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!ccase.m21887break()) {
                break;
            }
            char cM21900new = ccase.m21900new();
            ccase.f17500case++;
            int iMo21885if = mo21885if(cM21900new, sb);
            int iM21892do = ccase.m21892do() + ((sb.length() / 3) << 1);
            ccase.m21898import(iM21892do);
            int iM21941if = ccase.m21896goto().m21941if() - iM21892do;
            if (!ccase.m21887break()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (iM21941if < 2 || iM21941if > 2)) {
                    iMo21885if = m21924do(ccase, sb, sb2, iMo21885if);
                }
                while (sb.length() % 3 == 1 && ((iMo21885if <= 3 && iM21941if != 1) || iMo21885if > 3)) {
                    iMo21885if = m21924do(ccase, sb, sb2, iMo21885if);
                }
            } else if (sb.length() % 3 == 0 && Celse.m21920super(ccase.m21904try(), ccase.f17500case, getEncodingMode()) != getEncodingMode()) {
                ccase.m21903throw(0);
                break;
            }
        }
        mo21906new(ccase, sb);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 1;
    }

    /* renamed from: if */
    public int mo21885if(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        }
        if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        }
        if (c < ' ') {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        }
        if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            return 2;
        }
        if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        }
        if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        }
        if (c < '`' || c > 127) {
            sb.append("\u0001\u001e");
            return mo21885if((char) (c - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) (c - '`'));
        return 2;
    }

    /* renamed from: new */
    public void mo21906new(Ccase ccase, StringBuilder sb) {
        int length = (sb.length() / 3) << 1;
        int length2 = sb.length() % 3;
        int iM21892do = ccase.m21892do() + length;
        ccase.m21898import(iM21892do);
        int iM21941if = ccase.m21896goto().m21941if() - iM21892do;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                m21926try(ccase, sb);
            }
            if (ccase.m21887break()) {
                ccase.m21899native((char) 254);
            }
        } else if (iM21941if == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                m21926try(ccase, sb);
            }
            if (ccase.m21887break()) {
                ccase.m21899native((char) 254);
            }
            ccase.f17500case--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb.length() >= 3) {
                m21926try(ccase, sb);
            }
            if (iM21941if > 0 || ccase.m21887break()) {
                ccase.m21899native((char) 254);
            }
        }
        ccase.m21903throw(0);
    }
}
