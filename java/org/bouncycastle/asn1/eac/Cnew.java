package org.bouncycastle.asn1.eac;

import android.support.v4.Cimport;
import android.support.v4.hn0;
import android.support.v4.q8;
import java.io.IOException;
import java.util.Hashtable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cdo;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Ctransient;

/* renamed from: org.bouncycastle.asn1.eac.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final int f29031case = 64;

    /* renamed from: else, reason: not valid java name */
    public static final int f29034else = 0;

    /* renamed from: goto, reason: not valid java name */
    public static final int f29036goto = 2;

    /* renamed from: new, reason: not valid java name */
    public static final int f29037new = 192;

    /* renamed from: this, reason: not valid java name */
    public static final int f29038this = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f29039try = 128;

    /* renamed from: do, reason: not valid java name */
    public Ccatch f29040do;

    /* renamed from: if, reason: not valid java name */
    public Cdo f29041if;

    /* renamed from: for, reason: not valid java name */
    public static final Ccatch f29035for = EACObjectIdentifiers.bsi_de.m32792catch("3.1.2.1");

    /* renamed from: break, reason: not valid java name */
    public static Hashtable f29030break = new Hashtable();

    /* renamed from: catch, reason: not valid java name */
    public static q8 f29032catch = new q8();

    /* renamed from: class, reason: not valid java name */
    public static Hashtable f29033class = new Hashtable();

    static {
        f29030break.put(hn0.m3072for(2), "RADG4");
        f29030break.put(hn0.m3072for(1), "RADG3");
        f29032catch.put(hn0.m3072for(192), "CVCA");
        f29032catch.put(hn0.m3072for(128), "DV_DOMESTIC");
        f29032catch.put(hn0.m3072for(64), "DV_FOREIGN");
        f29032catch.put(hn0.m3072for(0), "IS");
    }

    public Cnew(Ccatch ccatch, int i) throws IOException {
        m32977this(ccatch);
        m32976goto((byte) i);
    }

    public Cnew(Cdo cdo) throws IOException {
        if (cdo.m32918catch() == 76) {
            m32974break(new Celse(cdo.m32919class()));
        }
    }

    /* renamed from: break, reason: not valid java name */
    private void m32974break(Celse celse) throws IOException {
        Cfinal cfinalM33002break = celse.m33002break();
        if (!(cfinalM33002break instanceof Ccatch)) {
            throw new IllegalArgumentException("no Oid in CerticateHolderAuthorization");
        }
        this.f29040do = (Ccatch) cfinalM33002break;
        Cfinal cfinalM33002break2 = celse.m33002break();
        if (!(cfinalM33002break2 instanceof Cdo)) {
            throw new IllegalArgumentException("No access rights in CerticateHolderAuthorization");
        }
        this.f29041if = (Cdo) cfinalM33002break2;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m32975else(int i) {
        return (String) f29032catch.get(hn0.m3072for(i));
    }

    /* renamed from: goto, reason: not valid java name */
    private void m32976goto(byte b) {
        this.f29041if = new Ctransient(19, new byte[]{b});
    }

    /* renamed from: this, reason: not valid java name */
    private void m32977this(Ccatch ccatch) {
        this.f29040do = ccatch;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m32978try(String str) {
        Integer num = (Integer) f29032catch.getReverse(str);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("Unknown value " + str);
    }

    /* renamed from: case, reason: not valid java name */
    public Ccatch m32979case() {
        return this.f29040do;
    }

    /* renamed from: new, reason: not valid java name */
    public int m32980new() {
        return this.f29041if.m32919class()[0] & 255;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f29040do);
        cimport.m3516do(this.f29041if);
        return new Ctransient(76, cimport);
    }
}
