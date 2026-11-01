package com.google.zxing.datamatrix.encoder;

import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.google.zxing.datamatrix.encoder.break, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cbreak extends Cfor {
    @Override // com.google.zxing.datamatrix.encoder.Cfor, com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 2;
    }

    @Override // com.google.zxing.datamatrix.encoder.Cfor
    /* renamed from: if, reason: not valid java name */
    public int mo21885if(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        }
        if (c >= 'a' && c <= 'z') {
            sb.append((char) ((c - 'a') + 14));
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
        if (c == '`') {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            return 2;
        }
        if (c >= 'A' && c <= 'Z') {
            sb.append((char) 2);
            sb.append((char) ((c - 'A') + 1));
            return 2;
        }
        if (c < '{' || c > 127) {
            sb.append("\u0001\u001e");
            return mo21885if((char) (c - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) ((c - MessageFormatter.DELIM_START) + 27));
        return 2;
    }
}
