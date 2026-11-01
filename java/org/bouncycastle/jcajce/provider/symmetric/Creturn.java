package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.d6;
import android.support.v4.f1;
import android.support.v4.gr0;
import android.support.v4.ns1;
import android.support.v4.tp1;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.crypto.Cnew;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ctry;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.return, reason: invalid class name */
/* loaded from: classes3.dex */
public class Creturn {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.return$do, reason: invalid class name */
    public static class Cdo extends Ctry {

        /* renamed from: for, reason: not valid java name */
        private int f31444for;

        public Cdo(String str, int i) {
            super(str, MiscObjectIdentifiers.id_scrypt);
            this.f31444for = i;
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (!(keySpec instanceof ns1)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            ns1 ns1Var = (ns1) keySpec;
            if (ns1Var.m5364case() == null) {
                throw new IllegalArgumentException("Salt S must be provided.");
            }
            if (ns1Var.m5367if() <= 1) {
                throw new IllegalArgumentException("Cost parameter N must be > 1.");
            }
            if (ns1Var.m5366for() > 0) {
                if (ns1Var.m5369try().length == 0) {
                    throw new IllegalArgumentException("password empty");
                }
                return new d6(this.f31525do, ns1Var, new gr0(tp1.m8045this(Cnew.UTF8.convert(ns1Var.m5369try()), ns1Var.m5364case(), ns1Var.m5367if(), ns1Var.m5365do(), ns1Var.m5368new(), ns1Var.m5366for() / 8)));
            }
            throw new InvalidKeySpecException("positive key length required: " + ns1Var.m5366for());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.return$for, reason: invalid class name */
    public static class Cfor extends Cdo {
        public Cfor() {
            super("SCRYPT", 5);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.return$if, reason: invalid class name */
    public static class Cif extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31445do = Creturn.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31445do;
            sb.append(str);
            sb.append("$ScryptWithUTF8");
            configurableProvider.addAlgorithm("SecretKeyFactory.SCRYPT", sb.toString());
            configurableProvider.addAlgorithm("SecretKeyFactory", MiscObjectIdentifiers.id_scrypt, str + "$ScryptWithUTF8");
        }
    }

    private Creturn() {
    }
}
