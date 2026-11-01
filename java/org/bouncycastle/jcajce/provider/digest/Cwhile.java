package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.aq1;
import android.support.v4.pi0;
import android.support.v4.rl;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cbreak(int i) {
            super(new pi0(new aq1(i)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$case, reason: invalid class name */
    public static class Ccase extends Cbreak {
        public Ccase() {
            super(224);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$catch, reason: invalid class name */
    public static class Ccatch extends Csuper {
        public Ccatch() {
            super(224);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$class, reason: invalid class name */
    public static class Cclass extends Csuper {
        public Cclass() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$const, reason: invalid class name */
    public static class Cconst extends Csuper {
        public Cconst() {
            super(384);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$do, reason: invalid class name */
    public static class Cdo extends Ctry {
        public Cdo() {
            super(224);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$else, reason: invalid class name */
    public static class Celse extends Cbreak {
        public Celse() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$final, reason: invalid class name */
    public static class Cfinal extends Csuper {
        public Cfinal() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$for, reason: invalid class name */
    public static class Cfor extends Ctry {
        public Cfor() {
            super(384);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$goto, reason: invalid class name */
    public static class Cgoto extends Cbreak {
        public Cgoto() {
            super(384);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$if, reason: invalid class name */
    public static class Cif extends Ctry {
        public Cif() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$new, reason: invalid class name */
    public static class Cnew extends Ctry {
        public Cnew() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$super, reason: invalid class name */
    public static class Csuper extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Csuper(int i) {
            super("HMACSHA3-" + i, i, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$this, reason: invalid class name */
    public static class Cthis extends Cbreak {
        public Cthis() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$throw, reason: invalid class name */
    public static class Cthrow extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31306do = Cwhile.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31306do;
            sb.append(str);
            sb.append("$Digest224");
            configurableProvider.addAlgorithm("MessageDigest.SHA3-224", sb.toString());
            configurableProvider.addAlgorithm("MessageDigest.SHA3-256", str + "$Digest256");
            configurableProvider.addAlgorithm("MessageDigest.SHA3-384", str + "$Digest384");
            configurableProvider.addAlgorithm("MessageDigest.SHA3-512", str + "$Digest512");
            configurableProvider.addAlgorithm("MessageDigest", NISTObjectIdentifiers.id_sha3_224, str + "$Digest224");
            configurableProvider.addAlgorithm("MessageDigest", NISTObjectIdentifiers.id_sha3_256, str + "$Digest256");
            configurableProvider.addAlgorithm("MessageDigest", NISTObjectIdentifiers.id_sha3_384, str + "$Digest384");
            configurableProvider.addAlgorithm("MessageDigest", NISTObjectIdentifiers.id_sha3_512, str + "$Digest512");
            m34786if(configurableProvider, "SHA3-224", str + "$HashMac224", str + "$KeyGenerator224");
            m34785for(configurableProvider, "SHA3-224", NISTObjectIdentifiers.id_hmacWithSHA3_224);
            m34786if(configurableProvider, "SHA3-256", str + "$HashMac256", str + "$KeyGenerator256");
            m34785for(configurableProvider, "SHA3-256", NISTObjectIdentifiers.id_hmacWithSHA3_256);
            m34786if(configurableProvider, "SHA3-384", str + "$HashMac384", str + "$KeyGenerator384");
            m34785for(configurableProvider, "SHA3-384", NISTObjectIdentifiers.id_hmacWithSHA3_384);
            m34786if(configurableProvider, "SHA3-512", str + "$HashMac512", str + "$KeyGenerator512");
            m34785for(configurableProvider, "SHA3-512", NISTObjectIdentifiers.id_hmacWithSHA3_512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.while$try, reason: invalid class name */
    public static class Ctry extends a6 implements Cloneable {
        public Ctry(int i) {
            super(new aq1(i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            a6 a6Var = (a6) super.clone();
            a6Var.f46do = new aq1((aq1) this.f46do);
            return a6Var;
        }
    }

    private Cwhile() {
    }
}
