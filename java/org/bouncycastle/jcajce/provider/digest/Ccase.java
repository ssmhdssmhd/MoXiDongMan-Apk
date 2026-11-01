package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.pi0;
import android.support.v4.rl;
import android.support.v4.tq0;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cbreak() {
            super(new pi0(new tq0(384)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$case, reason: invalid class name and collision with other inner class name */
    public static class C0427case extends a6 implements Cloneable {
        public C0427case(int i) {
            super(new tq0(i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            a6 a6Var = (a6) super.clone();
            a6Var.f46do = new tq0((tq0) this.f46do);
            return a6Var;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$catch, reason: invalid class name */
    public static class Ccatch extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccatch() {
            super(new pi0(new tq0(512)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$class, reason: invalid class name */
    public static class Cclass extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cclass() {
            super("HMACKECCAK224", 224, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$const, reason: invalid class name */
    public static class Cconst extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cconst() {
            super("HMACKECCAK256", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$do, reason: invalid class name */
    public static class Cdo extends C0427case {
        public Cdo() {
            super(224);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Celse() {
            super(new pi0(new tq0(224)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$final, reason: invalid class name */
    public static class Cfinal extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfinal() {
            super("HMACKECCAK288", 288, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$for, reason: invalid class name */
    public static class Cfor extends C0427case {
        public Cfor() {
            super(288);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cgoto() {
            super(new pi0(new tq0(256)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$if, reason: invalid class name */
    public static class Cif extends C0427case {
        public Cif() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$new, reason: invalid class name */
    public static class Cnew extends C0427case {
        public Cnew() {
            super(384);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$super, reason: invalid class name */
    public static class Csuper extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Csuper() {
            super("HMACKECCAK384", 384, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cthis() {
            super(new pi0(new tq0(288)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$throw, reason: invalid class name */
    public static class Cthrow extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cthrow() {
            super("HMACKECCAK512", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$try, reason: invalid class name */
    public static class Ctry extends C0427case {
        public Ctry() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.case$while, reason: invalid class name */
    public static class Cwhile extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31286do = Ccase.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31286do;
            sb.append(str);
            sb.append("$Digest224");
            configurableProvider.addAlgorithm("MessageDigest.KECCAK-224", sb.toString());
            configurableProvider.addAlgorithm("MessageDigest.KECCAK-288", str + "$Digest288");
            configurableProvider.addAlgorithm("MessageDigest.KECCAK-256", str + "$Digest256");
            configurableProvider.addAlgorithm("MessageDigest.KECCAK-384", str + "$Digest384");
            configurableProvider.addAlgorithm("MessageDigest.KECCAK-512", str + "$Digest512");
            m34786if(configurableProvider, "KECCAK224", str + "$HashMac224", str + "$KeyGenerator224");
            m34786if(configurableProvider, "KECCAK256", str + "$HashMac256", str + "$KeyGenerator256");
            m34786if(configurableProvider, "KECCAK288", str + "$HashMac288", str + "$KeyGenerator288");
            m34786if(configurableProvider, "KECCAK384", str + "$HashMac384", str + "$KeyGenerator384");
            m34786if(configurableProvider, "KECCAK512", str + "$HashMac512", str + "$KeyGenerator512");
        }
    }

    private Ccase() {
    }
}
