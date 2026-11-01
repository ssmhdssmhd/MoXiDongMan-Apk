package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import android.support.v4.b1;
import android.support.v4.cg0;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.i40;
import android.support.v4.j40;
import android.support.v4.k50;
import android.support.v4.l40;
import android.support.v4.l50;
import android.support.v4.nr0;
import android.support.v4.rh2;
import android.support.v4.t30;
import android.support.v4.th2;
import android.support.v4.x40;
import android.support.v4.y40;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.math.ec.Cnew;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey, ECPointEncoder {
    public static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;

    /* renamed from: do, reason: not valid java name */
    private transient k50 f31141do;

    /* renamed from: for, reason: not valid java name */
    private transient cg0 f31142for;

    /* renamed from: if, reason: not valid java name */
    private transient ECParameterSpec f31143if;
    private boolean withCompression;

    public Cif(l50 l50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "ECGOST3410-2012";
        if (l50Var.m7719do() == null) {
            this.f31141do = new k50(providerConfiguration.getEcImplicitlyCa().m1142do().m35430goto(l50Var.m4596if().m35456case().mo339static(), l50Var.m4596if().m35462else().mo339static()), t30.m7700const(providerConfiguration, null));
            this.f31143if = null;
        } else {
            EllipticCurve ellipticCurveM7701do = t30.m7701do(l50Var.m7719do().m1142do(), l50Var.m7719do().m1146try());
            this.f31141do = new k50(l50Var.m4596if(), Celse.m34735else(providerConfiguration, l50Var.m7719do()));
            this.f31143if = t30.m7704goto(ellipticCurveM7701do, l50Var.m7719do());
        }
    }

    public Cif(String str, k50 k50Var) {
        this.algorithm = "ECGOST3410-2012";
        this.algorithm = str;
        this.f31141do = k50Var;
        this.f31143if = null;
    }

    public Cif(String str, k50 k50Var, d50 d50Var) {
        this.algorithm = "ECGOST3410-2012";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.f31141do = k50Var;
        this.f31143if = d50Var == null ? m34690do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if) : t30.m7704goto(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), d50Var);
    }

    public Cif(String str, k50 k50Var, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410-2012";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.f31141do = k50Var;
        if (e40VarM7258if instanceof l40) {
            l40 l40Var = (l40) e40VarM7258if;
            this.f31142for = new cg0(l40Var.m4589catch(), l40Var.m4590this(), l40Var.m4588break());
        }
        if (eCParameterSpec == null) {
            this.f31143if = m34690do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if);
        } else {
            this.f31143if = eCParameterSpec;
        }
    }

    public Cif(ECPublicKey eCPublicKey) {
        this.algorithm = "ECGOST3410-2012";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.f31143if = params;
        this.f31141do = new k50(t30.m7708try(params, eCPublicKey.getW(), false), t30.m7700const(null, eCPublicKey.getParams()));
    }

    public Cif(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "ECGOST3410-2012";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f31143if = params;
        this.f31141do = new k50(t30.m7708try(params, eCPublicKeySpec.getW(), false), t30.m7700const(null, eCPublicKeySpec.getParams()));
    }

    public Cif(Ctry ctry) {
        this.algorithm = "ECGOST3410-2012";
        m34691for(ctry);
    }

    public Cif(Cif cif) {
        this.algorithm = "ECGOST3410-2012";
        this.f31141do = cif.f31141do;
        this.f31143if = cif.f31143if;
        this.withCompression = cif.withCompression;
        this.f31142for = cif.f31142for;
    }

    /* renamed from: do, reason: not valid java name */
    private ECParameterSpec m34690do(EllipticCurve ellipticCurve, e40 e40Var) {
        return new ECParameterSpec(ellipticCurve, t30.m7706new(e40Var.m1648if()), e40Var.m1650try(), e40Var.m1647for().intValue());
    }

    /* renamed from: for, reason: not valid java name */
    private void m34691for(Ctry ctry) {
        Ccatch ccatchM420new = ctry.m33295new().m420new();
        Cinstanceof cinstanceofM33296this = ctry.m33296this();
        this.algorithm = "ECGOST3410-2012";
        try {
            byte[] bArrMo5490const = ((Cclass) Cfinal.m33015else(cinstanceofM33296this.m33057const())).mo5490const();
            int i = ccatchM420new.equals(RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512) ? 64 : 32;
            int i2 = i * 2;
            byte[] bArr = new byte[i2 + 1];
            bArr[0] = 4;
            for (int i3 = 1; i3 <= i; i3++) {
                bArr[i3] = bArrMo5490const[i - i3];
                bArr[i3 + i] = bArrMo5490const[i2 - i3];
            }
            cg0 cg0VarM909case = cg0.m909case(ctry.m33295new().m419else());
            this.f31142for = cg0VarM909case;
            x40 x40VarM3265if = i40.m3265if(j40.m3719for(cg0VarM909case.m911goto()));
            org.bouncycastle.math.ec.Cif cifM1142do = x40VarM3265if.m1142do();
            EllipticCurve ellipticCurveM7701do = t30.m7701do(cifM1142do, x40VarM3265if.m1146try());
            this.f31141do = new k50(cifM1142do.m35421class(bArr), Celse.m34735else(null, x40VarM3265if));
            this.f31143if = new y40(j40.m3719for(this.f31142for.m911goto()), ellipticCurveM7701do, t30.m7706new(x40VarM3265if.m1144if()), x40VarM3265if.m1145new(), x40VarM3265if.m1143for());
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m34692if(byte[] bArr, int i, int i2, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(byteArray, 0, bArr2, i - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i3 = 0; i3 != i; i3++) {
            bArr[i2 + i3] = byteArray[(byteArray.length - 1) - i3];
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m34691for(Ctry.m33291case(Cfinal.m33015else((byte[]) objectInputStream.readObject())));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public k50 engineGetKeyParameters() {
        return this.f31141do;
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.f31143if;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : Cdo.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return this.f31141do.m4252for().m35481try(cif.f31141do.m4252for()) && engineGetSpec().equals(cif.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        int i;
        Ccatch ccatch;
        ASN1Encodable rh2Var;
        cg0 cg0Var;
        BigInteger bigIntegerMo339static = this.f31141do.m4252for().m35456case().mo339static();
        BigInteger bigIntegerMo339static2 = this.f31141do.m4252for().m35462else().mo339static();
        boolean z = bigIntegerMo339static.bitLength() > 256;
        ASN1Encodable gostParams = getGostParams();
        if (gostParams == null) {
            ECParameterSpec eCParameterSpec = this.f31143if;
            if (eCParameterSpec instanceof y40) {
                Ccatch ccatchM3722try = j40.m3722try(((y40) eCParameterSpec).m9755for());
                if (z) {
                    rh2Var = cg0Var;
                    cg0Var = new cg0(ccatchM3722try, RosstandartObjectIdentifiers.id_tc26_gost_3411_12_512);
                } else {
                    rh2Var = cg0Var;
                    cg0Var = new cg0(ccatchM3722try, RosstandartObjectIdentifiers.id_tc26_gost_3411_12_256);
                }
            } else {
                org.bouncycastle.math.ec.Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                rh2Var = new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, this.f31143if.getGenerator(), this.withCompression), this.f31143if.getOrder(), BigInteger.valueOf(this.f31143if.getCofactor()), this.f31143if.getCurve().getSeed()));
            }
            gostParams = rh2Var;
        }
        int i2 = 64;
        if (z) {
            ccatch = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512;
            i = 64;
            i2 = 128;
        } else {
            i = 32;
            ccatch = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256;
        }
        byte[] bArr = new byte[i2];
        int i3 = i2 / 2;
        m34692if(bArr, i3, 0, bigIntegerMo339static);
        m34692if(bArr, i3, i, bigIntegerMo339static2);
        try {
            return nr0.m5360try(new Ctry(new b1(ccatch, gostParams), new j(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public cg0 getGostParams() {
        if (this.f31142for == null && (this.f31143if instanceof y40)) {
            this.f31142for = this.f31141do.m4252for().m35456case().mo339static().bitLength() > 256 ? new cg0(j40.m3722try(((y40) this.f31143if).m9755for()), RosstandartObjectIdentifiers.id_tc26_gost_3411_12_512) : new cg0(j40.m3722try(((y40) this.f31143if).m9755for()), RosstandartObjectIdentifiers.id_tc26_gost_3411_12_256);
        }
        return this.f31142for;
    }

    @Override // org.bouncycastle.jce.interfaces.ECKey
    public d50 getParameters() {
        ECParameterSpec eCParameterSpec = this.f31143if;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f31143if;
    }

    @Override // org.bouncycastle.jce.interfaces.ECPublicKey
    public Cnew getQ() {
        return this.f31143if == null ? this.f31141do.m4252for().m35457catch() : this.f31141do.m4252for();
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return t30.m7706new(this.f31141do.m4252for());
    }

    public int hashCode() {
        return this.f31141do.m4252for().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return Celse.m34741super(this.algorithm, this.f31141do.m4252for(), engineGetSpec());
    }
}
