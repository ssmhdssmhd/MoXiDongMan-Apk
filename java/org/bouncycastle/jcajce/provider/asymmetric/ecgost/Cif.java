package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

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
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.math.ec.Cnew;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey, ECPointEncoder {
    public static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;

    /* renamed from: do, reason: not valid java name */
    private transient k50 f31115do;

    /* renamed from: for, reason: not valid java name */
    private transient ASN1Encodable f31116for;

    /* renamed from: if, reason: not valid java name */
    private transient ECParameterSpec f31117if;
    private boolean withCompression;

    public Cif(l50 l50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "ECGOST3410";
        if (l50Var.m7719do() == null) {
            this.f31115do = new k50(providerConfiguration.getEcImplicitlyCa().m1142do().m35430goto(l50Var.m4596if().m35456case().mo339static(), l50Var.m4596if().m35462else().mo339static()), t30.m7700const(providerConfiguration, null));
            this.f31117if = null;
        } else {
            EllipticCurve ellipticCurveM7701do = t30.m7701do(l50Var.m7719do().m1142do(), l50Var.m7719do().m1146try());
            this.f31115do = new k50(l50Var.m4596if(), Celse.m34735else(providerConfiguration, l50Var.m7719do()));
            this.f31117if = t30.m7704goto(ellipticCurveM7701do, l50Var.m7719do());
        }
    }

    public Cif(String str, k50 k50Var) {
        this.algorithm = "ECGOST3410";
        this.algorithm = str;
        this.f31115do = k50Var;
        this.f31117if = null;
    }

    public Cif(String str, k50 k50Var, d50 d50Var) {
        this.algorithm = "ECGOST3410";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.f31115do = k50Var;
        this.f31117if = d50Var == null ? m34680do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if) : t30.m7704goto(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), d50Var);
    }

    public Cif(String str, k50 k50Var, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        e40 e40VarM7258if = k50Var.m7258if();
        if (e40VarM7258if instanceof l40) {
            l40 l40Var = (l40) e40VarM7258if;
            this.f31116for = new cg0(l40Var.m4589catch(), l40Var.m4590this(), l40Var.m4588break());
        }
        this.algorithm = str;
        this.f31115do = k50Var;
        if (eCParameterSpec == null) {
            this.f31117if = m34680do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if);
        } else {
            this.f31117if = eCParameterSpec;
        }
    }

    public Cif(ECPublicKey eCPublicKey) {
        this.algorithm = "ECGOST3410";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.f31117if = params;
        this.f31115do = new k50(t30.m7708try(params, eCPublicKey.getW(), false), t30.m7700const(null, eCPublicKey.getParams()));
    }

    public Cif(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "ECGOST3410";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f31117if = params;
        this.f31115do = new k50(t30.m7708try(params, eCPublicKeySpec.getW(), false), t30.m7700const(null, eCPublicKeySpec.getParams()));
    }

    public Cif(Ctry ctry) {
        this.algorithm = "ECGOST3410";
        m34681for(ctry);
    }

    public Cif(Cif cif) {
        this.algorithm = "ECGOST3410";
        this.f31115do = cif.f31115do;
        this.f31117if = cif.f31117if;
        this.withCompression = cif.withCompression;
        this.f31116for = cif.f31116for;
    }

    /* renamed from: do, reason: not valid java name */
    private ECParameterSpec m34680do(EllipticCurve ellipticCurve, e40 e40Var) {
        return new ECParameterSpec(ellipticCurve, t30.m7706new(e40Var.m1648if()), e40Var.m1650try(), e40Var.m1647for().intValue());
    }

    /* renamed from: for, reason: not valid java name */
    private void m34681for(Ctry ctry) {
        Ccatch ccatchM911goto;
        Cinstanceof cinstanceofM33296this = ctry.m33296this();
        this.algorithm = "ECGOST3410";
        try {
            byte[] bArrMo5490const = ((Cclass) Cfinal.m33015else(cinstanceofM33296this.m33057const())).mo5490const();
            byte[] bArr = new byte[65];
            bArr[0] = 4;
            for (int i = 1; i <= 32; i++) {
                bArr[i] = bArrMo5490const[32 - i];
                bArr[i + 32] = bArrMo5490const[64 - i];
            }
            boolean z = ctry.m33295new().m419else() instanceof Ccatch;
            ASN1Encodable aSN1EncodableM419else = ctry.m33295new().m419else();
            if (z) {
                ccatchM911goto = Ccatch.m32790throw(aSN1EncodableM419else);
                this.f31116for = ccatchM911goto;
            } else {
                cg0 cg0VarM909case = cg0.m909case(aSN1EncodableM419else);
                this.f31116for = cg0VarM909case;
                ccatchM911goto = cg0VarM909case.m911goto();
            }
            x40 x40VarM3265if = i40.m3265if(j40.m3719for(ccatchM911goto));
            org.bouncycastle.math.ec.Cif cifM1142do = x40VarM3265if.m1142do();
            EllipticCurve ellipticCurveM7701do = t30.m7701do(cifM1142do, x40VarM3265if.m1146try());
            this.f31115do = new k50(cifM1142do.m35421class(bArr), Celse.m34735else(null, x40VarM3265if));
            this.f31117if = new y40(j40.m3719for(ccatchM911goto), ellipticCurveM7701do, t30.m7706new(x40VarM3265if.m1144if()), x40VarM3265if.m1145new(), x40VarM3265if.m1143for());
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m34682if(byte[] bArr, int i, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(byteArray, 0, bArr2, 32 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i2 = 0; i2 != 32; i2++) {
            bArr[i + i2] = byteArray[(byteArray.length - 1) - i2];
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m34681for(Ctry.m33291case(Cfinal.m33015else((byte[]) objectInputStream.readObject())));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public k50 engineGetKeyParameters() {
        return this.f31115do;
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.f31117if;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : Cdo.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return this.f31115do.m4252for().m35481try(cif.f31115do.m4252for()) && engineGetSpec().equals(cif.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        ASN1Encodable rh2Var;
        ASN1Encodable gostParams = getGostParams();
        if (gostParams == null) {
            ECParameterSpec eCParameterSpec = this.f31117if;
            if (eCParameterSpec instanceof y40) {
                rh2Var = new cg0(j40.m3722try(((y40) eCParameterSpec).m9755for()), CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet);
            } else {
                org.bouncycastle.math.ec.Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                rh2Var = new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, this.f31117if.getGenerator(), this.withCompression), this.f31117if.getOrder(), BigInteger.valueOf(this.f31117if.getCofactor()), this.f31117if.getCurve().getSeed()));
            }
            gostParams = rh2Var;
        }
        BigInteger bigIntegerMo339static = this.f31115do.m4252for().m35456case().mo339static();
        BigInteger bigIntegerMo339static2 = this.f31115do.m4252for().m35462else().mo339static();
        byte[] bArr = new byte[64];
        m34682if(bArr, 0, bigIntegerMo339static);
        m34682if(bArr, 32, bigIntegerMo339static2);
        try {
            return nr0.m5360try(new Ctry(new b1(CryptoProObjectIdentifiers.gostR3410_2001, gostParams), new j(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public ASN1Encodable getGostParams() {
        if (this.f31116for == null) {
            ECParameterSpec eCParameterSpec = this.f31117if;
            if (eCParameterSpec instanceof y40) {
                this.f31116for = new cg0(j40.m3722try(((y40) eCParameterSpec).m9755for()), CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet);
            }
        }
        return this.f31116for;
    }

    @Override // org.bouncycastle.jce.interfaces.ECKey
    public d50 getParameters() {
        ECParameterSpec eCParameterSpec = this.f31117if;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f31117if;
    }

    @Override // org.bouncycastle.jce.interfaces.ECPublicKey
    public Cnew getQ() {
        return this.f31117if == null ? this.f31115do.m4252for().m35457catch() : this.f31115do.m4252for();
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return t30.m7706new(this.f31115do.m4252for());
    }

    public int hashCode() {
        return this.f31115do.m4252for().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return Celse.m34741super(this.algorithm, this.f31115do.m4252for(), engineGetSpec());
    }
}
