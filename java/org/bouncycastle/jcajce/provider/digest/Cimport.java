package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.pi0;
import android.support.v4.qy0;
import android.support.v4.rl;
import android.support.v4.u61;
import android.support.v4.zp1;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.import$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new zp1());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new zp1((zp1) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.import$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACSHA384", 384, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.import$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new zp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.import$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31296do = Cimport.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31296do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.SHA-384", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA384", qy0.f5544this);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.id_sha384, qy0.f5544this);
            configurableProvider.addAlgorithm("Mac.OLDHMACSHA384", str + "$OldSHA384");
            configurableProvider.addAlgorithm("Mac.PBEWITHHMACSHA384", str + "$HashMac");
            m34786if(configurableProvider, "SHA384", str + "$HashMac", str + "$KeyGenerator");
            m34785for(configurableProvider, "SHA384", PKCSObjectIdentifiers.id_hmacWithSHA384);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.import$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctry() {
            super(new u61(new zp1()));
        }
    }

    private Cimport() {
    }
}
