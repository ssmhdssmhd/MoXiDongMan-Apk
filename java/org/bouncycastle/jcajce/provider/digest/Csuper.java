package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.pi0;
import android.support.v4.qy0;
import android.support.v4.rl;
import android.support.v4.xp1;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.super$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new xp1());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new xp1((xp1) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.super$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACSHA224", 224, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.super$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new xp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.super$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31301do = Csuper.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31301do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.SHA-224", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA224", qy0.f5542else);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.id_sha224, qy0.f5542else);
            configurableProvider.addAlgorithm("Mac.PBEWITHHMACSHA224", str + "$HashMac");
            m34786if(configurableProvider, "SHA224", str + "$HashMac", str + "$KeyGenerator");
            m34785for(configurableProvider, "SHA224", PKCSObjectIdentifiers.id_hmacWithSHA224);
        }
    }

    private Csuper() {
    }
}
