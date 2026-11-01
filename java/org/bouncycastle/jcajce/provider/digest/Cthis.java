package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.ow0;
import android.support.v4.pi0;
import android.support.v4.rl;
import org.bouncycastle.asn1.iana.IANAObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.this$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new ow0());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new ow0((ow0) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.this$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACMD5", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.this$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new ow0()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.this$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31303do = Cthis.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31303do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.MD5", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + PKCSObjectIdentifiers.md5, "MD5");
            m34786if(configurableProvider, "MD5", str + "$HashMac", str + "$KeyGenerator");
            m34785for(configurableProvider, "MD5", IANAObjectIdentifiers.hmacMD5);
        }
    }

    private Cthis() {
    }
}
