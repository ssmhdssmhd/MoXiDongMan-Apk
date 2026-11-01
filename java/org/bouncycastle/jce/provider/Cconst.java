package org.bouncycastle.jce.provider;

import android.support.v4.b1;
import android.support.v4.cg0;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.i40;
import android.support.v4.j40;
import android.support.v4.k50;
import android.support.v4.l50;
import android.support.v4.nr0;
import android.support.v4.rh2;
import android.support.v4.t30;
import android.support.v4.th2;
import android.support.v4.vh2;
import android.support.v4.x40;
import android.support.v4.y40;
import android.support.v4.yh2;
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
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthis;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jce.provider.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey, ECPointEncoder {
    private String algorithm;
    private ECParameterSpec ecSpec;
    private cg0 gostParams;
    private Cnew q;
    private boolean withCompression;

    public Cconst(String str, k50 k50Var) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.q = k50Var.m4252for();
        this.ecSpec = null;
    }

    public Cconst(String str, k50 k50Var, d50 d50Var) {
        this.algorithm = "EC";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.q = k50Var.m4252for();
        this.ecSpec = d50Var == null ? m35007do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if) : t30.m7704goto(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), d50Var);
    }

    public Cconst(String str, k50 k50Var, ECParameterSpec eCParameterSpec) {
        this.algorithm = "EC";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.q = k50Var.m4252for();
        if (eCParameterSpec == null) {
            this.ecSpec = m35007do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public Cconst(String str, l50 l50Var) {
        ECParameterSpec eCParameterSpecM7704goto;
        this.algorithm = "EC";
        this.algorithm = str;
        this.q = l50Var.m4596if();
        if (l50Var.m7719do() != null) {
            eCParameterSpecM7704goto = t30.m7704goto(t30.m7701do(l50Var.m7719do().m1142do(), l50Var.m7719do().m1146try()), l50Var.m7719do());
        } else {
            if (this.q.m35477this() == null) {
                this.q = Cdo.CONFIGURATION.getEcImplicitlyCa().m1142do().mo35442this(this.q.m35456case().mo339static(), this.q.m35462else().mo339static(), false);
            }
            eCParameterSpecM7704goto = null;
        }
        this.ecSpec = eCParameterSpecM7704goto;
    }

    public Cconst(String str, ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "EC";
        this.algorithm = str;
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.q = t30.m7708try(params, eCPublicKeySpec.getW(), false);
    }

    public Cconst(String str, Cconst cconst) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.q = cconst.q;
        this.ecSpec = cconst.ecSpec;
        this.withCompression = cconst.withCompression;
        this.gostParams = cconst.gostParams;
    }

    public Cconst(ECPublicKey eCPublicKey) {
        this.algorithm = "EC";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.ecSpec = params;
        this.q = t30.m7708try(params, eCPublicKey.getW(), false);
    }

    public Cconst(Ctry ctry) {
        this.algorithm = "EC";
        m35008for(ctry);
    }

    /* renamed from: do, reason: not valid java name */
    private ECParameterSpec m35007do(EllipticCurve ellipticCurve, e40 e40Var) {
        return new ECParameterSpec(ellipticCurve, t30.m7706new(e40Var.m1648if()), e40Var.m1650try(), e40Var.m1647for().intValue());
    }

    /* renamed from: for, reason: not valid java name */
    private void m35008for(Ctry ctry) {
        Cif cifM7909try;
        ECParameterSpec eCParameterSpec;
        byte[] bArrM33057const;
        Cclass jVar;
        if (ctry.m33297try().m420new().equals(CryptoProObjectIdentifiers.gostR3410_2001)) {
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
                cg0 cg0Var = new cg0((Csuper) ctry.m33297try().m419else());
                this.gostParams = cg0Var;
                x40 x40VarM3265if = i40.m3265if(j40.m3719for(cg0Var.m911goto()));
                Cif cifM1142do = x40VarM3265if.m1142do();
                EllipticCurve ellipticCurveM7701do = t30.m7701do(cifM1142do, x40VarM3265if.m1146try());
                this.q = cifM1142do.m35421class(bArr);
                this.ecSpec = new y40(j40.m3719for(this.gostParams.m911goto()), ellipticCurveM7701do, t30.m7706new(x40VarM3265if.m1144if()), x40VarM3265if.m1145new(), x40VarM3265if.m1143for());
                return;
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        rh2 rh2Var = new rh2((Cfinal) ctry.m33297try().m419else());
        if (rh2Var.m6992goto()) {
            Ccatch ccatch = (Ccatch) rh2Var.m6990case();
            th2 th2VarM34729break = Celse.m34729break(ccatch);
            cifM7909try = th2VarM34729break.m7909try();
            eCParameterSpec = new y40(Celse.m34730case(ccatch), t30.m7701do(cifM7909try, th2VarM34729break.m7904class()), t30.m7706new(th2VarM34729break.m7906goto()), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this());
        } else {
            if (rh2Var.m6991else()) {
                this.ecSpec = null;
                cifM7909try = Cdo.CONFIGURATION.getEcImplicitlyCa().m1142do();
                bArrM33057const = ctry.m33296this().m33057const();
                jVar = new j(bArrM33057const);
                if (bArrM33057const[0] == 4 && bArrM33057const[1] == bArrM33057const.length - 2 && ((bArrM33057const[2] == 2 || bArrM33057const[2] == 3) && new yh2().m9870do(cifM7909try) >= bArrM33057const.length - 3)) {
                    try {
                        jVar = (Cclass) Cfinal.m33015else(bArrM33057const);
                    } catch (IOException unused2) {
                        throw new IllegalArgumentException("error recovering public key");
                    }
                }
                this.q = new vh2(cifM7909try, jVar).m8868new();
            }
            th2 th2VarM7901break = th2.m7901break(rh2Var.m6990case());
            cifM7909try = th2VarM7901break.m7909try();
            eCParameterSpec = new ECParameterSpec(t30.m7701do(cifM7909try, th2VarM7901break.m7904class()), t30.m7706new(th2VarM7901break.m7906goto()), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this().intValue());
        }
        this.ecSpec = eCParameterSpec;
        bArrM33057const = ctry.m33296this().m33057const();
        jVar = new j(bArrM33057const);
        if (bArrM33057const[0] == 4) {
            jVar = (Cclass) Cfinal.m33015else(bArrM33057const);
        }
        this.q = new vh2(cifM7909try, jVar).m8868new();
    }

    /* renamed from: if, reason: not valid java name */
    private void m35009if(byte[] bArr, int i, BigInteger bigInteger) {
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

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        m35008for(Ctry.m33291case(Cfinal.m33015else((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
    }

    public Cnew engineGetQ() {
        return this.q;
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : Cdo.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cconst)) {
            return false;
        }
        Cconst cconst = (Cconst) obj;
        return engineGetQ().m35481try(cconst.engineGetQ()) && engineGetSpec().equals(cconst.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        rh2 rh2Var;
        Ctry ctry;
        ASN1Encodable rh2Var2;
        if (this.algorithm.equals("ECGOST3410")) {
            ASN1Encodable aSN1Encodable = this.gostParams;
            if (aSN1Encodable == null) {
                ECParameterSpec eCParameterSpec = this.ecSpec;
                if (eCParameterSpec instanceof y40) {
                    rh2Var2 = new cg0(j40.m3722try(((y40) eCParameterSpec).m9755for()), CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet);
                } else {
                    Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                    rh2Var2 = new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
                }
                aSN1Encodable = rh2Var2;
            }
            BigInteger bigIntegerMo339static = this.q.m35456case().mo339static();
            BigInteger bigIntegerMo339static2 = this.q.m35462else().mo339static();
            byte[] bArr = new byte[64];
            m35009if(bArr, 0, bigIntegerMo339static);
            m35009if(bArr, 32, bigIntegerMo339static2);
            try {
                ctry = new Ctry(new b1(CryptoProObjectIdentifiers.gostR3410_2001, aSN1Encodable), new j(bArr));
            } catch (IOException unused) {
                return null;
            }
        } else {
            ECParameterSpec eCParameterSpec2 = this.ecSpec;
            if (eCParameterSpec2 instanceof y40) {
                Ccatch ccatchM34732class = Celse.m34732class(((y40) eCParameterSpec2).m9755for());
                if (ccatchM34732class == null) {
                    ccatchM34732class = new Ccatch(((y40) this.ecSpec).m9755for());
                }
                rh2Var = new rh2(ccatchM34732class);
            } else if (eCParameterSpec2 == null) {
                rh2Var = new rh2((Cthis) h.f29080do);
            } else {
                Cif cifM7705if2 = t30.m7705if(eCParameterSpec2.getCurve());
                rh2Var = new rh2(new th2(cifM7705if2, t30.m7697case(cifM7705if2, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            ctry = new Ctry(new b1(X9ObjectIdentifiers.id_ecPublicKey, rh2Var), ((Cclass) new vh2(engineGetQ().m35477this().mo35442this(getQ().m35456case().mo339static(), getQ().m35462else().mo339static(), this.withCompression)).toASN1Primitive()).mo5490const());
        }
        return nr0.m5360try(ctry);
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.ECKey
    public d50 getParameters() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.ecSpec;
    }

    @Override // org.bouncycastle.jce.interfaces.ECPublicKey
    public Cnew getQ() {
        return this.ecSpec == null ? this.q.m35457catch() : this.q;
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return t30.m7706new(this.q);
    }

    public int hashCode() {
        return engineGetQ().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append("EC Public Key");
        stringBuffer.append(strM36360new);
        stringBuffer.append("            X: ");
        stringBuffer.append(this.q.m35456case().mo339static().toString(16));
        stringBuffer.append(strM36360new);
        stringBuffer.append("            Y: ");
        stringBuffer.append(this.q.m35462else().mo339static().toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}
