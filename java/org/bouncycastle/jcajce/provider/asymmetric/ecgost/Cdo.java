package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import android.support.v4.b1;
import android.support.v4.cg0;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.g50;
import android.support.v4.h50;
import android.support.v4.i40;
import android.support.v4.i50;
import android.support.v4.j40;
import android.support.v4.rh2;
import android.support.v4.t30;
import android.support.v4.th2;
import android.support.v4.x40;
import android.support.v4.y40;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPrivateKeySpec;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.math.ec.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier, ECPointEncoder {
    public static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;

    /* renamed from: do, reason: not valid java name */
    private transient ASN1Encodable f31105do;

    /* renamed from: for, reason: not valid java name */
    private transient ECParameterSpec f31106for;

    /* renamed from: if, reason: not valid java name */
    private transient BigInteger f31107if;

    /* renamed from: new, reason: not valid java name */
    private transient Cinstanceof f31108new;

    /* renamed from: try, reason: not valid java name */
    private transient Cthis f31109try;
    private boolean withCompression;

    public Cdo() {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
    }

    public Cdo(i50 i50Var) {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
        this.f31107if = i50Var.m3275if();
        this.f31106for = i50Var.m7719do() != null ? t30.m7704goto(t30.m7701do(i50Var.m7719do().m1142do(), i50Var.m7719do().m1146try()), i50Var.m7719do()) : null;
    }

    public Cdo(String str, h50 h50Var) {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
        this.algorithm = str;
        this.f31107if = h50Var.m2948for();
        this.f31106for = null;
    }

    public Cdo(String str, h50 h50Var, Cif cif, d50 d50Var) {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
        this.algorithm = str;
        this.f31107if = h50Var.m2948for();
        if (d50Var == null) {
            e40 e40VarM7258if = h50Var.m7258if();
            this.f31106for = new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue());
        } else {
            this.f31106for = new ECParameterSpec(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), t30.m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for().intValue());
        }
        this.f31105do = cif.getGostParams();
        this.f31108new = m34676if(cif);
    }

    public Cdo(String str, h50 h50Var, Cif cif, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
        this.algorithm = str;
        this.f31107if = h50Var.m2948for();
        if (eCParameterSpec == null) {
            e40 e40VarM7258if = h50Var.m7258if();
            eCParameterSpec = new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue());
        }
        this.f31106for = eCParameterSpec;
        this.f31105do = cif.getGostParams();
        this.f31108new = m34676if(cif);
    }

    public Cdo(ECPrivateKey eCPrivateKey) {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
        this.f31107if = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.f31106for = eCPrivateKey.getParams();
    }

    public Cdo(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
        this.f31107if = eCPrivateKeySpec.getS();
        this.f31106for = eCPrivateKeySpec.getParams();
    }

    public Cdo(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
        m34675for(cdo);
    }

    public Cdo(Cdo cdo) {
        this.algorithm = "ECGOST3410";
        this.f31109try = new Cthis();
        this.f31107if = cdo.f31107if;
        this.f31106for = cdo.f31106for;
        this.withCompression = cdo.withCompression;
        this.f31109try = cdo.f31109try;
        this.f31108new = cdo.f31108new;
        this.f31105do = cdo.f31105do;
    }

    /* renamed from: do, reason: not valid java name */
    private void m34674do(byte[] bArr, int i, BigInteger bigInteger) {
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

    /* JADX WARN: Removed duplicated region for block: B:30:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0148  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m34675for(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        y40 y40Var;
        ASN1Encodable aSN1EncodableM33102catch;
        BigInteger bigIntegerM33044final;
        String strM34730case;
        ASN1Encodable aSN1EncodableM419else = cdo.m33104else().m419else();
        Cfinal aSN1Primitive = aSN1EncodableM419else.toASN1Primitive();
        if ((aSN1Primitive instanceof Csuper) && (Csuper.m33129catch(aSN1Primitive).size() == 2 || Csuper.m33129catch(aSN1Primitive).size() == 3)) {
            cg0 cg0VarM909case = cg0.m909case(aSN1EncodableM419else);
            this.f31105do = cg0VarM909case;
            x40 x40VarM3265if = i40.m3265if(j40.m3719for(cg0VarM909case.m911goto()));
            this.f31106for = new y40(j40.m3719for(cg0VarM909case.m911goto()), t30.m7701do(x40VarM3265if.m1142do(), x40VarM3265if.m1146try()), t30.m7706new(x40VarM3265if.m1144if()), x40VarM3265if.m1145new(), x40VarM3265if.m1143for());
            ASN1Encodable aSN1EncodableM33102catch2 = cdo.m33102catch();
            if (aSN1EncodableM33102catch2 instanceof Cgoto) {
                bigIntegerM33044final = Cgoto.m33040catch(aSN1EncodableM33102catch2).m33043const();
            } else {
                byte[] bArrMo5490const = Cclass.m32796catch(aSN1EncodableM33102catch2).mo5490const();
                byte[] bArr = new byte[bArrMo5490const.length];
                for (int i = 0; i != bArrMo5490const.length; i++) {
                    bArr[i] = bArrMo5490const[(bArrMo5490const.length - 1) - i];
                }
                bigIntegerM33044final = new BigInteger(1, bArr);
            }
        } else {
            rh2 rh2VarM6988new = rh2.m6988new(aSN1EncodableM419else);
            if (rh2VarM6988new.m6992goto()) {
                Ccatch ccatchM32790throw = Ccatch.m32790throw(rh2VarM6988new.m6990case());
                th2 th2VarM34729break = Celse.m34729break(ccatchM32790throw);
                if (th2VarM34729break == null) {
                    e40 e40VarM3720if = j40.m3720if(ccatchM32790throw);
                    th2 th2Var = new th2(e40VarM3720if.m1646do(), e40VarM3720if.m1648if(), e40VarM3720if.m1650try(), e40VarM3720if.m1647for(), e40VarM3720if.m1645case());
                    strM34730case = j40.m3719for(ccatchM32790throw);
                    th2VarM34729break = th2Var;
                } else {
                    strM34730case = Celse.m34730case(ccatchM32790throw);
                }
                y40Var = new y40(strM34730case, t30.m7701do(th2VarM34729break.m7909try(), th2VarM34729break.m7904class()), t30.m7706new(th2VarM34729break.m7906goto()), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this());
            } else if (rh2VarM6988new.m6991else()) {
                y40Var = null;
            } else {
                th2 th2VarM7901break = th2.m7901break(rh2VarM6988new.m6990case());
                this.f31106for = new ECParameterSpec(t30.m7701do(th2VarM7901break.m7909try(), th2VarM7901break.m7904class()), t30.m7706new(th2VarM7901break.m7906goto()), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this().intValue());
                aSN1EncodableM33102catch = cdo.m33102catch();
                if (aSN1EncodableM33102catch instanceof Cgoto) {
                    g50 g50VarM2577new = g50.m2577new(aSN1EncodableM33102catch);
                    this.f31107if = g50VarM2577new.m2580try();
                    this.f31108new = g50VarM2577new.m2579goto();
                    return;
                }
                bigIntegerM33044final = Cgoto.m33040catch(aSN1EncodableM33102catch).m33044final();
            }
            this.f31106for = y40Var;
            aSN1EncodableM33102catch = cdo.m33102catch();
            if (aSN1EncodableM33102catch instanceof Cgoto) {
            }
        }
        this.f31107if = bigIntegerM33044final;
    }

    /* renamed from: if, reason: not valid java name */
    private Cinstanceof m34676if(Cif cif) {
        try {
            return Ctry.m33291case(Cfinal.m33015else(cif.getEncoded())).m33296this();
        } catch (IOException unused) {
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m34675for(org.bouncycastle.asn1.pkcs.Cdo.m33100try(Cfinal.m33015else((byte[]) objectInputStream.readObject())));
        this.f31109try = new Cthis();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.f31106for;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : org.bouncycastle.jce.provider.Cdo.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cdo)) {
            return false;
        }
        Cdo cdo = (Cdo) obj;
        return getD().equals(cdo.getD()) && engineGetSpec().equals(cdo.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.f31109try.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f31109try.getBagAttributeKeys();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.f31107if;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bf  */
    @Override // java.security.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] getEncoded() {
        rh2 rh2Var;
        int iM34733const;
        if (this.f31105do != null) {
            byte[] bArr = new byte[32];
            m34674do(bArr, 0, getS());
            try {
                return new org.bouncycastle.asn1.pkcs.Cdo(new b1(CryptoProObjectIdentifiers.gostR3410_2001, this.f31105do), new j(bArr)).m32764do(ASN1Encoding.DER);
            } catch (IOException unused) {
                return null;
            }
        }
        ECParameterSpec eCParameterSpec = this.f31106for;
        try {
            if (eCParameterSpec instanceof y40) {
                Ccatch ccatchM34732class = Celse.m34732class(((y40) eCParameterSpec).m9755for());
                if (ccatchM34732class == null) {
                    ccatchM34732class = new Ccatch(((y40) this.f31106for).m9755for());
                }
                rh2Var = new rh2(ccatchM34732class);
            } else {
                if (eCParameterSpec == null) {
                    rh2Var = new rh2((org.bouncycastle.asn1.Cthis) h.f29080do);
                    iM34733const = Celse.m34733const(org.bouncycastle.jce.provider.Cdo.CONFIGURATION, null, getS());
                    return new org.bouncycastle.asn1.pkcs.Cdo(new b1(CryptoProObjectIdentifiers.gostR3410_2001, rh2Var.toASN1Primitive()), (this.f31108new == null ? new g50(iM34733const, getS(), this.f31108new, rh2Var) : new g50(iM34733const, getS(), rh2Var)).toASN1Primitive()).m32764do(ASN1Encoding.DER);
                }
                Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                rh2Var = new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, this.f31106for.getGenerator(), this.withCompression), this.f31106for.getOrder(), BigInteger.valueOf(this.f31106for.getCofactor()), this.f31106for.getCurve().getSeed()));
            }
            return new org.bouncycastle.asn1.pkcs.Cdo(new b1(CryptoProObjectIdentifiers.gostR3410_2001, rh2Var.toASN1Primitive()), (this.f31108new == null ? new g50(iM34733const, getS(), this.f31108new, rh2Var) : new g50(iM34733const, getS(), rh2Var)).toASN1Primitive()).m32764do(ASN1Encoding.DER);
        } catch (IOException unused2) {
            return null;
        }
        iM34733const = Celse.m34733const(org.bouncycastle.jce.provider.Cdo.CONFIGURATION, this.f31106for.getOrder(), getS());
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.ECKey
    public d50 getParameters() {
        ECParameterSpec eCParameterSpec = this.f31106for;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f31106for;
    }

    @Override // java.security.interfaces.ECPrivateKey
    public BigInteger getS() {
        return this.f31107if;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f31109try.setBagAttribute(ccatch, aSN1Encodable);
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return Celse.m34736final(this.algorithm, this.f31107if, engineGetSpec());
    }
}
