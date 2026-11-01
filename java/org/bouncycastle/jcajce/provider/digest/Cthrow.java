package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.pi0;
import android.support.v4.rl;
import android.support.v4.yp1;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cbreak;

/* renamed from: org.bouncycastle.jcajce.provider.digest.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrow {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.throw$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new yp1());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new yp1((yp1) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.throw$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACSHA256", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.throw$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new yp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.throw$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31304do = Cthrow.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31304do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.SHA-256", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA256", "SHA-256");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.MessageDigest.");
            Ccatch ccatch = NISTObjectIdentifiers.id_sha256;
            sb2.append(ccatch);
            configurableProvider.addAlgorithm(sb2.toString(), "SHA-256");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHHMACSHA256", str + "$PBEWithMacKeyFactory");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA-256", "PBEWITHHMACSHA256");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory." + ccatch, "PBEWITHHMACSHA256");
            configurableProvider.addAlgorithm("Mac.PBEWITHHMACSHA256", str + "$HashMac");
            m34786if(configurableProvider, "SHA256", str + "$HashMac", str + "$KeyGenerator");
            m34785for(configurableProvider, "SHA256", PKCSObjectIdentifiers.id_hmacWithSHA256);
            m34785for(configurableProvider, "SHA256", ccatch);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.throw$try, reason: invalid class name */
    public static class Ctry extends Cbreak {
        public Ctry() {
            super("PBEwithHmacSHA256", null, false, 2, 4, 256, 0);
        }
    }

    private Cthrow() {
    }
}
