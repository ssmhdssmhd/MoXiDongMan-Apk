package android.support.v4;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cnative;

/* loaded from: classes3.dex */
public class u62 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    public Cfinal f6782do;

    public u62(Date date) throws NumberFormatException {
        SimpleTimeZone simpleTimeZone = new SimpleTimeZone(0, "Z");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        simpleDateFormat.setTimeZone(simpleTimeZone);
        String str = simpleDateFormat.format(date) + "Z";
        int i = Integer.parseInt(str.substring(0, 4));
        this.f6782do = (i < 1950 || i > 2049) ? new org.bouncycastle.asn1.d(str) : new qt(str.substring(2));
    }

    public u62(Date date, Locale locale) throws NumberFormatException {
        SimpleTimeZone simpleTimeZone = new SimpleTimeZone(0, "Z");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", locale);
        simpleDateFormat.setTimeZone(simpleTimeZone);
        String str = simpleDateFormat.format(date) + "Z";
        int i = Integer.parseInt(str.substring(0, 4));
        this.f6782do = (i < 1950 || i > 2049) ? new org.bouncycastle.asn1.d(str) : new qt(str.substring(2));
    }

    public u62(Cfinal cfinal) {
        if (!(cfinal instanceof Cnative) && !(cfinal instanceof Ccase)) {
            throw new IllegalArgumentException("unknown object passed to Time");
        }
        this.f6782do = cfinal;
    }

    /* renamed from: case, reason: not valid java name */
    public static u62 m8264case(Cimport cimport, boolean z) {
        return m8265try(cimport.m33065const());
    }

    /* renamed from: try, reason: not valid java name */
    public static u62 m8265try(Object obj) {
        if (obj == null || (obj instanceof u62)) {
            return (u62) obj;
        }
        if (obj instanceof Cnative) {
            return new u62((Cnative) obj);
        }
        if (obj instanceof Ccase) {
            return new u62((Ccase) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public String m8266else() {
        Cfinal cfinal = this.f6782do;
        return cfinal instanceof Cnative ? ((Cnative) cfinal).m33089class() : ((Ccase) cfinal).m32781throw();
    }

    /* renamed from: new, reason: not valid java name */
    public Date m8267new() {
        try {
            Cfinal cfinal = this.f6782do;
            return cfinal instanceof Cnative ? ((Cnative) cfinal).m33088catch() : ((Ccase) cfinal).m32776const();
        } catch (ParseException e) {
            throw new IllegalStateException("invalid date string: " + e.getMessage());
        }
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6782do;
    }
}
