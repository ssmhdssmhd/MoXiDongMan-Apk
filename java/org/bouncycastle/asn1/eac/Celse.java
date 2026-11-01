package org.bouncycastle.asn1.eac;

import android.support.v4.q3;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;

/* renamed from: org.bouncycastle.asn1.eac.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: do, reason: not valid java name */
    private byte[] f29005do;

    public Celse(String str) {
        this.f29005do = m32945do(str);
    }

    public Celse(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMdd'Z'");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f29005do = m32945do(simpleDateFormat.format(date));
    }

    public Celse(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMdd'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f29005do = m32945do(simpleDateFormat.format(date));
    }

    public Celse(byte[] bArr) {
        this.f29005do = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m32945do(String str) {
        char[] charArray = str.toCharArray();
        byte[] bArr = new byte[6];
        for (int i = 0; i != 6; i++) {
            bArr[i] = (byte) (charArray[i] - '0');
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Celse) {
            return q3.m6362case(this.f29005do, ((Celse) obj).f29005do);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m32946for() {
        return q3.m6371final(this.f29005do);
    }

    public int hashCode() {
        return q3.n(this.f29005do);
    }

    /* renamed from: if, reason: not valid java name */
    public Date m32947if() throws ParseException {
        return new SimpleDateFormat("yyyyMMdd").parse("20" + toString());
    }

    public String toString() {
        int length = this.f29005do.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) ((this.f29005do[i] & 255) + 48);
        }
        return new String(cArr);
    }
}
