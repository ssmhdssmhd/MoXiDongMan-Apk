package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.dr0;
import android.support.v4.mg2;
import android.support.v4.ng2;
import android.support.v4.rg2;
import android.support.v4.s50;
import android.support.v4.sg2;
import android.support.v4.t50;
import android.support.v4.v50;
import android.support.v4.w40;
import android.support.v4.w50;
import android.support.v4.y3;
import android.support.v4.y50;
import android.support.v4.zh2;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGeneratorSpi;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends KeyPairGeneratorSpi {

    /* renamed from: break, reason: not valid java name */
    private static final int f31165break = 3;

    /* renamed from: case, reason: not valid java name */
    private static final int f31166case = -2;

    /* renamed from: else, reason: not valid java name */
    private static final int f31167else = 0;

    /* renamed from: goto, reason: not valid java name */
    private static final int f31168goto = 1;

    /* renamed from: this, reason: not valid java name */
    private static final int f31169this = 2;

    /* renamed from: try, reason: not valid java name */
    private static final int f31170try = -1;

    /* renamed from: do, reason: not valid java name */
    private int f31171do;

    /* renamed from: for, reason: not valid java name */
    private boolean f31172for;

    /* renamed from: if, reason: not valid java name */
    private AsymmetricCipherKeyPairGenerator f31173if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f31174new;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.else$case, reason: invalid class name */
    public static final class Ccase extends Celse {
        public Ccase() {
            super(-2, null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.else$do, reason: invalid class name */
    public static final class Cdo extends Celse {
        public Cdo() {
            super(1, new t50());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.else$for, reason: invalid class name */
    public static final class Cfor extends Celse {
        public Cfor() {
            super(-1, null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.else$if, reason: invalid class name */
    public static final class Cif extends Celse {
        public Cif() {
            super(0, new w50());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.else$new, reason: invalid class name */
    public static final class Cnew extends Celse {
        public Cnew() {
            super(3, new ng2());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.else$try, reason: invalid class name */
    public static final class Ctry extends Celse {
        public Ctry() {
            super(2, new sg2());
        }
    }

    public Celse(int i, AsymmetricCipherKeyPairGenerator asymmetricCipherKeyPairGenerator) {
        this.f31171do = i;
        this.f31173if = asymmetricCipherKeyPairGenerator;
    }

    /* renamed from: do, reason: not valid java name */
    private void m34698do(int i) throws InvalidAlgorithmParameterException {
        int i2 = this.f31171do;
        if (i2 != i) {
            if (i2 == 1 || i2 == 0) {
                throw new InvalidAlgorithmParameterException("parameterSpec for wrong curve type");
            }
            if (i2 == -1 && i != 1 && i != 0) {
                throw new InvalidAlgorithmParameterException("parameterSpec for wrong curve type");
            }
            if (i2 == 3 || i2 == 2) {
                throw new InvalidAlgorithmParameterException("parameterSpec for wrong curve type");
            }
            if (i2 == -2 && i != 3 && i != 2) {
                throw new InvalidAlgorithmParameterException("parameterSpec for wrong curve type");
            }
            this.f31171do = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m34699for(int i) {
        AsymmetricCipherKeyPairGenerator asymmetricCipherKeyPairGenerator;
        dr0 mg2Var;
        this.f31172for = true;
        if (this.f31174new == null) {
            this.f31174new = new SecureRandom();
        }
        if (i == -2) {
            asymmetricCipherKeyPairGenerator = this.f31173if;
            mg2Var = new mg2(this.f31174new);
        } else if (i == -1) {
            asymmetricCipherKeyPairGenerator = this.f31173if;
            mg2Var = new s50(this.f31174new);
        } else if (i == 0) {
            asymmetricCipherKeyPairGenerator = this.f31173if;
            mg2Var = new v50(this.f31174new);
        } else if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                asymmetricCipherKeyPairGenerator = this.f31173if;
                mg2Var = new mg2(this.f31174new);
            } else {
                asymmetricCipherKeyPairGenerator = this.f31173if;
                mg2Var = new rg2(this.f31174new);
            }
        }
        asymmetricCipherKeyPairGenerator.init(mg2Var);
    }

    /* renamed from: if, reason: not valid java name */
    private void m34700if(String str) throws InvalidAlgorithmParameterException {
        int i;
        AsymmetricCipherKeyPairGenerator w50Var;
        if (str.equalsIgnoreCase(y50.f8137for) || str.equals(EdECObjectIdentifiers.id_Ed448.m32795super())) {
            i = 0;
            m34698do(0);
            w50Var = new w50();
        } else if (str.equalsIgnoreCase(y50.f8138if) || str.equals(EdECObjectIdentifiers.id_Ed25519.m32795super())) {
            i = 1;
            m34698do(1);
            w50Var = new t50();
        } else if (str.equalsIgnoreCase(zh2.f8561for) || str.equals(EdECObjectIdentifiers.id_X448.m32795super())) {
            i = 2;
            m34698do(2);
            w50Var = new sg2();
        } else {
            if (!str.equalsIgnoreCase(zh2.f8562if) && !str.equals(EdECObjectIdentifiers.id_X25519.m32795super())) {
                return;
            }
            i = 3;
            m34698do(3);
            w50Var = new ng2();
        }
        this.f31173if = w50Var;
        m34699for(i);
    }

    @Override // java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (this.f31173if == null) {
            throw new IllegalStateException("generator not correctly initialized");
        }
        if (!this.f31172for) {
            m34699for(this.f31171do);
        }
        y3 y3VarGenerateKeyPair = this.f31173if.generateKeyPair();
        int i = this.f31171do;
        if (i != 0 && i != 1) {
            if (i != 2 && i != 3) {
                throw new IllegalStateException("generator not correctly initialized");
            }
            return new KeyPair(new org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew(y3VarGenerateKeyPair.m9727if()), new org.bouncycastle.jcajce.provider.asymmetric.edec.Cfor(y3VarGenerateKeyPair.m9726do()));
        }
        return new KeyPair(new org.bouncycastle.jcajce.provider.asymmetric.edec.Cif(y3VarGenerateKeyPair.m9727if()), new org.bouncycastle.jcajce.provider.asymmetric.edec.Cdo(y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        int i2;
        this.f31174new = secureRandom;
        if (i == 255 || i == 256) {
            int i3 = this.f31171do;
            i2 = 3;
            if (i3 != -2) {
                if (i3 == -1 || i3 == 1) {
                    m34699for(1);
                    return;
                } else if (i3 != 3) {
                    throw new InvalidParameterException("key size not configurable");
                }
            }
        } else {
            if (i != 448) {
                throw new InvalidParameterException("unknown key size");
            }
            int i4 = this.f31171do;
            i2 = 2;
            if (i4 != -2) {
                if (i4 == -1 || i4 == 0) {
                    m34699for(0);
                    return;
                } else if (i4 != 2) {
                    throw new InvalidParameterException("key size not configurable");
                }
            }
        }
        m34699for(i2);
    }

    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        String strM10214do;
        this.f31174new = secureRandom;
        if (algorithmParameterSpec instanceof ECGenParameterSpec) {
            strM10214do = ((ECGenParameterSpec) algorithmParameterSpec).getName();
        } else if (algorithmParameterSpec instanceof w40) {
            strM10214do = ((w40) algorithmParameterSpec).m9047do();
        } else if (algorithmParameterSpec instanceof y50) {
            strM10214do = ((y50) algorithmParameterSpec).m9756do();
        } else {
            if (!(algorithmParameterSpec instanceof zh2)) {
                throw new InvalidAlgorithmParameterException("invalid parameterSpec: " + algorithmParameterSpec);
            }
            strM10214do = ((zh2) algorithmParameterSpec).m10214do();
        }
        m34700if(strM10214do);
    }
}
