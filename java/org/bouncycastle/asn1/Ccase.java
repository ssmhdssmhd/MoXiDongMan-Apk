package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.asn1.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Cfinal {

    /* renamed from: do, reason: not valid java name */
    public byte[] f28908do;

    public Ccase(String str) {
        this.f28908do = Cfor.m36358goto(str);
        try {
            m32776const();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    public Ccase(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", g0.f29072for);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f28908do = Cfor.m36358goto(simpleDateFormat.format(date));
    }

    public Ccase(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f28908do = Cfor.m36358goto(simpleDateFormat.format(date));
    }

    public Ccase(byte[] bArr) {
        this.f28908do = bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    private String m32771catch() {
        String str;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str = "-";
        } else {
            str = "+";
        }
        int i = rawOffset / 3600000;
        int i2 = (rawOffset - (((i * 60) * 60) * 1000)) / 60000;
        try {
            if (timeZone.useDaylightTime() && timeZone.inDaylightTime(m32776const())) {
                i += str.equals("+") ? 1 : -1;
            }
        } catch (ParseException unused) {
        }
        return "GMT" + str + m32772class(i) + ":" + m32772class(i2);
    }

    /* renamed from: class, reason: not valid java name */
    private String m32772class(int i) {
        if (i >= 10) {
            return Integer.toString(i);
        }
        return "0" + i;
    }

    /* renamed from: final, reason: not valid java name */
    public static Ccase m32773final(Object obj) {
        if (obj == null || (obj instanceof Ccase)) {
            return (Ccase) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Ccase) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: return, reason: not valid java name */
    private boolean m32774return(int i) {
        byte[] bArr = this.f28908do;
        return bArr.length > i && bArr[i] >= 48 && bArr[i] <= 57;
    }

    /* renamed from: super, reason: not valid java name */
    public static Ccase m32775super(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Ccase)) ? m32773final(cfinalM33065const) : new Ccase(((Cclass) cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        int length = this.f28908do.length;
        return m0.m33082do(length) + 1 + length;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e1  */
    /* renamed from: const, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Date m32776const() throws ParseException {
        SimpleDateFormat simpleDateFormat;
        SimpleTimeZone simpleTimeZone;
        String str;
        StringBuilder sb;
        char cCharAt;
        String strM36359if = Cfor.m36359if(this.f28908do);
        if (strM36359if.endsWith("Z")) {
            simpleDateFormat = m32777import() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'") : m32779public() ? new SimpleDateFormat("yyyyMMddHHmmss'Z'") : m32778native() ? new SimpleDateFormat("yyyyMMddHHmm'Z'") : new SimpleDateFormat("yyyyMMddHH'Z'");
            simpleTimeZone = new SimpleTimeZone(0, "Z");
        } else {
            if (strM36359if.indexOf(45) <= 0 && strM36359if.indexOf(43) <= 0) {
                simpleDateFormat = m32777import() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : m32779public() ? new SimpleDateFormat("yyyyMMddHHmmss") : m32778native() ? new SimpleDateFormat("yyyyMMddHHmm") : new SimpleDateFormat("yyyyMMddHH");
                simpleDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
                if (m32777import()) {
                    String strSubstring = strM36359if.substring(14);
                    int i = 1;
                    while (i < strSubstring.length() && '0' <= (cCharAt = strSubstring.charAt(i)) && cCharAt <= '9') {
                        i++;
                    }
                    int i2 = i - 1;
                    if (i2 > 3) {
                        str = strSubstring.substring(0, 4) + strSubstring.substring(i);
                        sb = new StringBuilder();
                    } else if (i2 == 1) {
                        str = strSubstring.substring(0, i) + "00" + strSubstring.substring(i);
                        sb = new StringBuilder();
                    } else if (i2 == 2) {
                        str = strSubstring.substring(0, i) + "0" + strSubstring.substring(i);
                        sb = new StringBuilder();
                    }
                    sb.append(strM36359if.substring(0, 14));
                    sb.append(str);
                    strM36359if = sb.toString();
                }
                return g0.m33027do(simpleDateFormat.parse(strM36359if));
            }
            strM36359if = m32781throw();
            simpleDateFormat = m32777import() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : m32779public() ? new SimpleDateFormat("yyyyMMddHHmmssz") : m32778native() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
            simpleTimeZone = new SimpleTimeZone(0, "Z");
        }
        simpleDateFormat.setTimeZone(simpleTimeZone);
        if (m32777import()) {
        }
        return g0.m33027do(simpleDateFormat.parse(strM36359if));
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f28908do);
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m32777import() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f28908do;
            if (i == bArr.length) {
                return false;
            }
            if (bArr[i] == 46 && i == 14) {
                return true;
            }
            i++;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m32778native() {
        return m32774return(10) && m32774return(11);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof Ccase) {
            return q3.m6362case(this.f28908do, ((Ccase) cfinal).f28908do);
        }
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m32779public() {
        return m32774return(12) && m32774return(13);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: this, reason: not valid java name */
    public Cfinal mo32780this() {
        return new d(this.f28908do);
    }

    /* renamed from: throw, reason: not valid java name */
    public String m32781throw() {
        String strM36359if = Cfor.m36359if(this.f28908do);
        if (strM36359if.charAt(strM36359if.length() - 1) == 'Z') {
            return strM36359if.substring(0, strM36359if.length() - 1) + "GMT+00:00";
        }
        int length = strM36359if.length() - 5;
        char cCharAt = strM36359if.charAt(length);
        if (cCharAt == '-' || cCharAt == '+') {
            StringBuilder sb = new StringBuilder();
            sb.append(strM36359if.substring(0, length));
            sb.append("GMT");
            int i = length + 3;
            sb.append(strM36359if.substring(length, i));
            sb.append(":");
            sb.append(strM36359if.substring(i));
            return sb.toString();
        }
        int length2 = strM36359if.length() - 3;
        char cCharAt2 = strM36359if.charAt(length2);
        if (cCharAt2 != '-' && cCharAt2 != '+') {
            return strM36359if + m32771catch();
        }
        return strM36359if.substring(0, length2) + "GMT" + strM36359if.substring(length2) + ":00";
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(24, this.f28908do);
    }

    /* renamed from: while, reason: not valid java name */
    public String m32782while() {
        return Cfor.m36359if(this.f28908do);
    }
}
