package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.asn1.native, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnative extends Cfinal {

    /* renamed from: do, reason: not valid java name */
    private byte[] f29110do;

    public Cnative(String str) {
        this.f29110do = Cfor.m36358goto(str);
        try {
            m33090const();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    public Cnative(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'", g0.f29072for);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f29110do = Cfor.m36358goto(simpleDateFormat.format(date));
    }

    public Cnative(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f29110do = Cfor.m36358goto(simpleDateFormat.format(date));
    }

    public Cnative(byte[] bArr) {
        this.f29110do = bArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static Cnative m33086final(Object obj) {
        if (obj == null || (obj instanceof Cnative)) {
            return (Cnative) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Cnative) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static Cnative m33087super(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Cnative)) ? m33086final(cfinalM33065const) : new Cnative(((Cclass) cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        int length = this.f29110do.length;
        return m0.m33082do(length) + 1 + length;
    }

    /* renamed from: catch, reason: not valid java name */
    public Date m33088catch() throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return g0.m33027do(simpleDateFormat.parse(m33089class()));
    }

    /* renamed from: class, reason: not valid java name */
    public String m33089class() {
        StringBuilder sb;
        String str;
        String strM33091throw = m33091throw();
        if (strM33091throw.charAt(0) < '5') {
            sb = new StringBuilder();
            str = "20";
        } else {
            sb = new StringBuilder();
            str = "19";
        }
        sb.append(str);
        sb.append(strM33091throw);
        return sb.toString();
    }

    /* renamed from: const, reason: not valid java name */
    public Date m33090const() throws ParseException {
        return g0.m33027do(new SimpleDateFormat("yyMMddHHmmssz").parse(m33091throw()));
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f29110do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof Cnative) {
            return q3.m6362case(this.f29110do, ((Cnative) cfinal).f29110do);
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public String m33091throw() {
        StringBuilder sb;
        String strSubstring;
        String strM36359if = Cfor.m36359if(this.f29110do);
        if (strM36359if.indexOf(45) >= 0 || strM36359if.indexOf(43) >= 0) {
            int iIndexOf = strM36359if.indexOf(45);
            if (iIndexOf < 0) {
                iIndexOf = strM36359if.indexOf(43);
            }
            if (iIndexOf == strM36359if.length() - 3) {
                strM36359if = strM36359if + "00";
            }
            if (iIndexOf == 10) {
                sb = new StringBuilder();
                sb.append(strM36359if.substring(0, 10));
                sb.append("00GMT");
                sb.append(strM36359if.substring(10, 13));
                sb.append(":");
                strSubstring = strM36359if.substring(13, 15);
            } else {
                sb = new StringBuilder();
                sb.append(strM36359if.substring(0, 12));
                sb.append("GMT");
                sb.append(strM36359if.substring(12, 15));
                sb.append(":");
                strSubstring = strM36359if.substring(15, 17);
            }
        } else if (strM36359if.length() == 11) {
            sb = new StringBuilder();
            sb.append(strM36359if.substring(0, 10));
            strSubstring = "00GMT+00:00";
        } else {
            sb = new StringBuilder();
            sb.append(strM36359if.substring(0, 12));
            strSubstring = "GMT+00:00";
        }
        sb.append(strSubstring);
        return sb.toString();
    }

    public String toString() {
        return Cfor.m36359if(this.f29110do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.mo32910try(23);
        int length = this.f29110do.length;
        cconst.m32900catch(length);
        for (int i = 0; i != length; i++) {
            cconst.mo32910try(this.f29110do[i]);
        }
    }
}
