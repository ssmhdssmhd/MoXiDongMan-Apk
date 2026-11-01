package android.support.v4;

import org.bouncycastle.crypto.macs.Cgoto;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cnew;

/* loaded from: classes3.dex */
public class le1 {

    /* renamed from: android.support.v4.le1$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cdo() {
            super("Poly1305", 256, new me1());
        }
    }

    /* renamed from: android.support.v4.le1$for, reason: invalid class name */
    public static class Cfor extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f3641do = le1.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f3641do;
            sb.append(str);
            sb.append("$Mac");
            configurableProvider.addAlgorithm("Mac.POLY1305", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.POLY1305", str + "$KeyGen");
        }
    }

    /* renamed from: android.support.v4.le1$if, reason: invalid class name */
    public static class Cif extends Cnew {
        public Cif() {
            super(new Cgoto());
        }
    }

    private le1() {
    }
}
