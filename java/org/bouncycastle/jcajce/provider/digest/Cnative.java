package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.bq1;
import android.support.v4.cq1;
import android.support.v4.pi0;
import android.support.v4.rl;
import android.support.v4.u61;
import android.support.v4.zq1;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.native, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnative {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cbreak() {
            super("HMACSHA512/256", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccase() {
            super(new pi0(new cq1(224)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$catch, reason: invalid class name */
    public static class Ccatch extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31297do = Cnative.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31297do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.SHA-512", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512", "SHA-512");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.id_sha512, "SHA-512");
            configurableProvider.addAlgorithm("MessageDigest.SHA-512/224", str + "$DigestT224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512/224", "SHA-512/224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.id_sha512_224, "SHA-512/224");
            configurableProvider.addAlgorithm("MessageDigest.SHA-512/256", str + "$DigestT256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA512256", zq1.f8632for);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.id_sha512_256, zq1.f8632for);
            configurableProvider.addAlgorithm("Mac.OLDHMACSHA512", str + "$OldSHA512");
            configurableProvider.addAlgorithm("Mac.PBEWITHHMACSHA512", str + "$HashMac");
            m34786if(configurableProvider, "SHA512", str + "$HashMac", str + "$KeyGenerator");
            m34785for(configurableProvider, "SHA512", PKCSObjectIdentifiers.id_hmacWithSHA512);
            m34786if(configurableProvider, "SHA512/224", str + "$HashMacT224", str + "$KeyGeneratorT224");
            m34786if(configurableProvider, "SHA512/256", str + "$HashMacT256", str + "$KeyGeneratorT256");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$class, reason: invalid class name */
    public static class Cclass extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cclass() {
            super(new u61(new bq1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new bq1());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new bq1((bq1) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Celse() {
            super(new pi0(new cq1(256)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$for, reason: invalid class name */
    public static class Cfor extends Cnew {
        public Cfor() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cgoto() {
            super("HMACSHA512", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$if, reason: invalid class name */
    public static class Cif extends Cnew {
        public Cif() {
            super(224);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$new, reason: invalid class name */
    public static class Cnew extends a6 implements Cloneable {
        public Cnew(int i) {
            super(new cq1(i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cnew cnew = (Cnew) super.clone();
            cnew.f46do = new cq1((cq1) this.f46do);
            return cnew;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cthis() {
            super("HMACSHA512/224", 224, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.native$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctry() {
            super(new pi0(new bq1()));
        }
    }

    private Cnative() {
    }
}
