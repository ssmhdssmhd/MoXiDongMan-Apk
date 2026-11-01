package org.bouncycastle.pqc.crypto.util;

import android.support.v4.a4;
import android.support.v4.b1;
import android.support.v4.br1;
import android.support.v4.gi2;
import android.support.v4.ji2;
import android.support.v4.pi2;
import android.support.v4.qi1;
import android.support.v4.s11;
import android.support.v4.yq1;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.xmss.Cfinally;
import org.bouncycastle.pqc.crypto.xmss.Cprivate;
import org.bouncycastle.pqc.crypto.xmss.Cpublic;
import org.bouncycastle.pqc.crypto.xmss.Cstatic;

/* renamed from: org.bouncycastle.pqc.crypto.util.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static Map f32370do;

    /* renamed from: org.bouncycastle.pqc.crypto.util.for$case, reason: invalid class name */
    public static class Ccase extends Ctry {
        private Ccase() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.Cfor.Ctry
        /* renamed from: do, reason: not valid java name */
        public a4 mo35811do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            gi2 gi2VarM2697try = gi2.m2697try(ctry.m33295new().m419else());
            Ccatch ccatchM420new = gi2VarM2697try.m2698case().m420new();
            pi2 pi2VarM6082new = pi2.m6082new(ctry.m33293break());
            return new Cprivate.Cif(new Cfinally(gi2VarM2697try.m2699new(), org.bouncycastle.pqc.crypto.util.Ctry.m35818do(ccatchM420new))).m35948else(pi2VarM6082new.m6084try()).m35949goto(pi2VarM6082new.m6083case()).m35950try();
        }
    }

    /* renamed from: org.bouncycastle.pqc.crypto.util.for$else, reason: invalid class name */
    public static class Celse extends Ctry {
        private Celse() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.Cfor.Ctry
        /* renamed from: do */
        public a4 mo35811do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            ji2 ji2VarM3903try = ji2.m3903try(ctry.m33295new().m419else());
            Ccatch ccatchM420new = ji2VarM3903try.m3905else().m420new();
            pi2 pi2VarM6082new = pi2.m6082new(ctry.m33293break());
            return new Cstatic.Cif(new Cpublic(ji2VarM3903try.m3906new(), ji2VarM3903try.m3904case(), org.bouncycastle.pqc.crypto.util.Ctry.m35818do(ccatchM420new))).m35994else(pi2VarM6082new.m6084try()).m35995goto(pi2VarM6082new.m6083case()).m35996try();
        }
    }

    /* renamed from: org.bouncycastle.pqc.crypto.util.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0466for extends Ctry {
        private C0466for() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.Cfor.Ctry
        /* renamed from: do */
        public a4 mo35811do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            return new qi1(org.bouncycastle.pqc.crypto.util.Ctry.m35819for(ctry.m33295new()), ctry.m33296this().m33059super());
        }
    }

    /* renamed from: org.bouncycastle.pqc.crypto.util.for$if, reason: invalid class name */
    public static class Cif extends Ctry {
        private Cif() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.Cfor.Ctry
        /* renamed from: do */
        public a4 mo35811do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            return new s11(ctry.m33296this().m33057const());
        }
    }

    /* renamed from: org.bouncycastle.pqc.crypto.util.for$new, reason: invalid class name */
    public static class Cnew extends Ctry {
        private Cnew() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.Cfor.Ctry
        /* renamed from: do */
        public a4 mo35811do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            return new br1(ctry.m33296this().m33057const(), org.bouncycastle.pqc.crypto.util.Ctry.m35822try(yq1.m9929new(ctry.m33295new().m419else())));
        }
    }

    /* renamed from: org.bouncycastle.pqc.crypto.util.for$try, reason: invalid class name */
    public static abstract class Ctry {
        private Ctry() {
        }

        /* renamed from: do */
        public abstract a4 mo35811do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException;
    }

    static {
        HashMap map = new HashMap();
        f32370do = map;
        map.put(PQCObjectIdentifiers.qTESLA_I, new C0466for());
        f32370do.put(PQCObjectIdentifiers.qTESLA_III_size, new C0466for());
        f32370do.put(PQCObjectIdentifiers.qTESLA_III_speed, new C0466for());
        f32370do.put(PQCObjectIdentifiers.qTESLA_p_I, new C0466for());
        f32370do.put(PQCObjectIdentifiers.qTESLA_p_III, new C0466for());
        f32370do.put(PQCObjectIdentifiers.sphincs256, new Cnew());
        f32370do.put(PQCObjectIdentifiers.newHope, new Cif());
        f32370do.put(PQCObjectIdentifiers.xmss, new Ccase());
        f32370do.put(PQCObjectIdentifiers.xmss_mt, new Celse());
    }

    /* renamed from: do, reason: not valid java name */
    public static a4 m35807do(InputStream inputStream) throws IOException {
        return m35809if(org.bouncycastle.asn1.x509.Ctry.m33291case(new org.bouncycastle.asn1.Celse(inputStream).m33002break()));
    }

    /* renamed from: for, reason: not valid java name */
    public static a4 m35808for(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
        b1 b1VarM33295new = ctry.m33295new();
        Ctry ctry2 = (Ctry) f32370do.get(b1VarM33295new.m420new());
        if (ctry2 != null) {
            return ctry2.mo35811do(ctry, obj);
        }
        throw new IOException("algorithm identifier in public key not recognised: " + b1VarM33295new.m420new());
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m35809if(org.bouncycastle.asn1.x509.Ctry ctry) throws IOException {
        return m35808for(ctry, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static a4 m35810new(byte[] bArr) throws IOException {
        return m35809if(org.bouncycastle.asn1.x509.Ctry.m33291case(Cfinal.m33015else(bArr)));
    }
}
