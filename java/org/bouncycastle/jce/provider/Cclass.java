package org.bouncycastle.jce.provider;

import android.support.v4.b1;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.h50;
import android.support.v4.i50;
import android.support.v4.j40;
import android.support.v4.j50;
import android.support.v4.rh2;
import android.support.v4.t30;
import android.support.v4.th2;
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
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jce.provider.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier, ECPointEncoder {
    private String algorithm;
    private Cthis attrCarrier;
    private BigInteger d;
    private ECParameterSpec ecSpec;
    private Cinstanceof publicKey;
    private boolean withCompression;

    public Cclass() {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
    }

    public Cclass(String str, h50 h50Var) {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
        this.algorithm = str;
        this.d = h50Var.m2948for();
        this.ecSpec = null;
    }

    public Cclass(String str, h50 h50Var, Cconst cconst, d50 d50Var) {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
        this.algorithm = str;
        this.d = h50Var.m2948for();
        if (d50Var == null) {
            e40 e40VarM7258if = h50Var.m7258if();
            this.ecSpec = new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue());
        } else {
            this.ecSpec = new ECParameterSpec(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), t30.m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for().intValue());
        }
        this.publicKey = m35005do(cconst);
    }

    public Cclass(String str, h50 h50Var, Cconst cconst, ECParameterSpec eCParameterSpec) {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
        this.algorithm = str;
        this.d = h50Var.m2948for();
        if (eCParameterSpec == null) {
            e40 e40VarM7258if = h50Var.m7258if();
            eCParameterSpec = new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue());
        }
        this.ecSpec = eCParameterSpec;
        this.publicKey = m35005do(cconst);
    }

    public Cclass(String str, i50 i50Var) {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
        this.algorithm = str;
        this.d = i50Var.m3275if();
        this.ecSpec = i50Var.m7719do() != null ? t30.m7704goto(t30.m7701do(i50Var.m7719do().m1142do(), i50Var.m7719do().m1146try()), i50Var.m7719do()) : null;
    }

    public Cclass(String str, ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
        this.algorithm = str;
        this.d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public Cclass(String str, Cclass cclass) {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
        this.algorithm = str;
        this.d = cclass.d;
        this.ecSpec = cclass.ecSpec;
        this.withCompression = cclass.withCompression;
        this.attrCarrier = cclass.attrCarrier;
        this.publicKey = cclass.publicKey;
    }

    public Cclass(ECPrivateKey eCPrivateKey) {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
        this.d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }

    public Cclass(Cdo cdo) throws IOException {
        this.algorithm = "EC";
        this.attrCarrier = new Cthis();
        m35006if(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private Cinstanceof m35005do(Cconst cconst) {
        try {
            return Ctry.m33291case(Cfinal.m33015else(cconst.getEncoded())).m33296this();
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c1  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m35006if(Cdo cdo) throws IOException {
        ECParameterSpec eCParameterSpec;
        ASN1Encodable aSN1EncodableM33102catch;
        rh2 rh2Var = new rh2((Cfinal) cdo.m33104else().m419else());
        if (rh2Var.m6992goto()) {
            Ccatch ccatchM32790throw = Ccatch.m32790throw(rh2Var.m6990case());
            th2 th2VarM34729break = Celse.m34729break(ccatchM32790throw);
            if (th2VarM34729break == null) {
                e40 e40VarM3720if = j40.m3720if(ccatchM32790throw);
                eCParameterSpec = new y40(j40.m3719for(ccatchM32790throw), t30.m7701do(e40VarM3720if.m1646do(), e40VarM3720if.m1645case()), t30.m7706new(e40VarM3720if.m1648if()), e40VarM3720if.m1650try(), e40VarM3720if.m1647for());
            } else {
                eCParameterSpec = new y40(Celse.m34730case(ccatchM32790throw), t30.m7701do(th2VarM34729break.m7909try(), th2VarM34729break.m7904class()), t30.m7706new(th2VarM34729break.m7906goto()), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this());
            }
        } else {
            if (rh2Var.m6991else()) {
                this.ecSpec = null;
                aSN1EncodableM33102catch = cdo.m33102catch();
                if (!(aSN1EncodableM33102catch instanceof Cgoto)) {
                    this.d = Cgoto.m33040catch(aSN1EncodableM33102catch).m33044final();
                    return;
                }
                j50 j50Var = new j50((Csuper) aSN1EncodableM33102catch);
                this.d = j50Var.m3726new();
                this.publicKey = j50Var.m3725else();
                return;
            }
            th2 th2VarM7901break = th2.m7901break(rh2Var.m6990case());
            eCParameterSpec = new ECParameterSpec(t30.m7701do(th2VarM7901break.m7909try(), th2VarM7901break.m7904class()), t30.m7706new(th2VarM7901break.m7906goto()), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this().intValue());
        }
        this.ecSpec = eCParameterSpec;
        aSN1EncodableM33102catch = cdo.m33102catch();
        if (!(aSN1EncodableM33102catch instanceof Cgoto)) {
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        m35006if(Cdo.m33100try(Cfinal.m33015else((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
        Cthis cthis = new Cthis();
        this.attrCarrier = cthis;
        cthis.m34751for(objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
        this.attrCarrier.m34754try(objectOutputStream);
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : Cdo.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cclass)) {
            return false;
        }
        Cclass cclass = (Cclass) obj;
        return getD().equals(cclass.getD()) && engineGetSpec().equals(cclass.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.attrCarrier.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.d;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        rh2 rh2Var;
        ECParameterSpec eCParameterSpec = this.ecSpec;
        if (eCParameterSpec instanceof y40) {
            Ccatch ccatchM34732class = Celse.m34732class(((y40) eCParameterSpec).m9755for());
            if (ccatchM34732class == null) {
                ccatchM34732class = new Ccatch(((y40) this.ecSpec).m9755for());
            }
            rh2Var = new rh2(ccatchM34732class);
        } else if (eCParameterSpec == null) {
            rh2Var = new rh2((org.bouncycastle.asn1.Cthis) h.f29080do);
        } else {
            Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
            rh2Var = new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
        }
        j50 j50Var = this.publicKey != null ? new j50(getS(), this.publicKey, rh2Var) : new j50(getS(), rh2Var);
        try {
            return (this.algorithm.equals("ECGOST3410") ? new Cdo(new b1(CryptoProObjectIdentifiers.gostR3410_2001, rh2Var.toASN1Primitive()), j50Var.toASN1Primitive()) : new Cdo(new b1(X9ObjectIdentifiers.id_ecPublicKey, rh2Var.toASN1Primitive()), j50Var.toASN1Primitive())).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
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

    @Override // java.security.interfaces.ECPrivateKey
    public BigInteger getS() {
        return this.d;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.attrCarrier.setBagAttribute(ccatch, aSN1Encodable);
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append("EC Private Key");
        stringBuffer.append(strM36360new);
        stringBuffer.append("             S: ");
        stringBuffer.append(this.d.toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}
