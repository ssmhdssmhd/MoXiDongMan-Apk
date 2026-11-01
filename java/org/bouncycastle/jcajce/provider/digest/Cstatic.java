package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.pi0;
import android.support.v4.rl;
import android.support.v4.s62;
import org.bouncycastle.asn1.iana.IANAObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cbreak;

/* renamed from: org.bouncycastle.jcajce.provider.digest.static, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cstatic {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.static$case, reason: invalid class name */
    public static class Ccase extends Cbreak {
        public Ccase() {
            super("PBEwithHmacTiger", null, false, 2, 3, 192, 0);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.static$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new s62());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new s62((s62) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.static$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Celse() {
            super(new pi0(new s62()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.static$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACTIGER", 192, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.static$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new s62()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.static$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31300do = Cstatic.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31300do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.TIGER", sb.toString());
            configurableProvider.addAlgorithm("MessageDigest.Tiger", str + "$Digest");
            m34786if(configurableProvider, "TIGER", str + "$HashMac", str + "$KeyGenerator");
            m34785for(configurableProvider, "TIGER", IANAObjectIdentifiers.hmacTIGER);
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHHMACTIGER", str + "$PBEWithMacKeyFactory");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.static$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctry() {
            super(new pi0(new s62()), 2, 3, 192);
        }
    }

    private Cstatic() {
    }
}
