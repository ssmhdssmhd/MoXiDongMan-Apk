package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

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
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.math.ec.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier, ECPointEncoder {
    public static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;

    /* renamed from: do, reason: not valid java name */
    private transient cg0 f31125do;

    /* renamed from: for, reason: not valid java name */
    private transient ECParameterSpec f31126for;

    /* renamed from: if, reason: not valid java name */
    private transient BigInteger f31127if;

    /* renamed from: new, reason: not valid java name */
    private transient Cinstanceof f31128new;

    /* renamed from: try, reason: not valid java name */
    private transient Cthis f31129try;
    private boolean withCompression;

    public Cdo() {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
    }

    public Cdo(i50 i50Var) {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
        this.f31127if = i50Var.m3275if();
        this.f31126for = i50Var.m7719do() != null ? t30.m7704goto(t30.m7701do(i50Var.m7719do().m1142do(), i50Var.m7719do().m1146try()), i50Var.m7719do()) : null;
    }

    public Cdo(String str, h50 h50Var) {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
        this.algorithm = str;
        this.f31127if = h50Var.m2948for();
        this.f31126for = null;
    }

    public Cdo(String str, h50 h50Var, Cif cif, d50 d50Var) {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
        e40 e40VarM7258if = h50Var.m7258if();
        this.algorithm = str;
        this.f31127if = h50Var.m2948for();
        this.f31126for = d50Var == null ? new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue()) : new ECParameterSpec(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), t30.m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for().intValue());
        this.f31125do = cif.getGostParams();
        this.f31128new = m34687if(cif);
    }

    public Cdo(String str, h50 h50Var, Cif cif, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
        e40 e40VarM7258if = h50Var.m7258if();
        this.algorithm = str;
        this.f31127if = h50Var.m2948for();
        if (eCParameterSpec == null) {
            this.f31126for = new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue());
        } else {
            this.f31126for = eCParameterSpec;
        }
        this.f31125do = cif.getGostParams();
        this.f31128new = m34687if(cif);
    }

    public Cdo(ECPrivateKey eCPrivateKey) {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
        this.f31127if = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.f31126for = eCPrivateKey.getParams();
    }

    public Cdo(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
        this.f31127if = eCPrivateKeySpec.getS();
        this.f31126for = eCPrivateKeySpec.getParams();
    }

    public Cdo(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
        m34686for(cdo);
    }

    public Cdo(Cdo cdo) {
        this.algorithm = "ECGOST3410-2012";
        this.f31129try = new Cthis();
        this.f31127if = cdo.f31127if;
        this.f31126for = cdo.f31126for;
        this.withCompression = cdo.withCompression;
        this.f31129try = cdo.f31129try;
        this.f31128new = cdo.f31128new;
        this.f31125do = cdo.f31125do;
    }

    /* renamed from: do, reason: not valid java name */
    private void m34685do(byte[] bArr, int i, int i2, BigInteger bigInteger) {
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

    /* JADX WARN: Removed duplicated region for block: B:29:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x015f  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m34686for(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        ECParameterSpec eCParameterSpec;
        ASN1Encodable aSN1EncodableM33102catch;
        BigInteger bigIntegerM33044final;
        Cfinal aSN1Primitive = cdo.m33104else().m419else().toASN1Primitive();
        if ((aSN1Primitive instanceof Csuper) && (Csuper.m33129catch(aSN1Primitive).size() == 2 || Csuper.m33129catch(aSN1Primitive).size() == 3)) {
            cg0 cg0VarM909case = cg0.m909case(cdo.m33104else().m419else());
            this.f31125do = cg0VarM909case;
            x40 x40VarM3265if = i40.m3265if(j40.m3719for(cg0VarM909case.m911goto()));
            this.f31126for = new y40(j40.m3719for(this.f31125do.m911goto()), t30.m7701do(x40VarM3265if.m1142do(), x40VarM3265if.m1146try()), t30.m7706new(x40VarM3265if.m1144if()), x40VarM3265if.m1145new(), x40VarM3265if.m1143for());
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
            rh2 rh2VarM6988new = rh2.m6988new(cdo.m33104else().m419else());
            if (rh2VarM6988new.m6992goto()) {
                Ccatch ccatchM32790throw = Ccatch.m32790throw(rh2VarM6988new.m6990case());
                th2 th2VarM34729break = Celse.m34729break(ccatchM32790throw);
                if (th2VarM34729break == null) {
                    e40 e40VarM3720if = j40.m3720if(ccatchM32790throw);
                    eCParameterSpec = new y40(j40.m3719for(ccatchM32790throw), t30.m7701do(e40VarM3720if.m1646do(), e40VarM3720if.m1645case()), t30.m7706new(e40VarM3720if.m1648if()), e40VarM3720if.m1650try(), e40VarM3720if.m1647for());
                } else {
                    eCParameterSpec = new y40(Celse.m34730case(ccatchM32790throw), t30.m7701do(th2VarM34729break.m7909try(), th2VarM34729break.m7904class()), t30.m7706new(th2VarM34729break.m7906goto()), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this());
                }
            } else if (rh2VarM6988new.m6991else()) {
                this.f31126for = null;
                aSN1EncodableM33102catch = cdo.m33102catch();
                if (aSN1EncodableM33102catch instanceof Cgoto) {
                    g50 g50VarM2577new = g50.m2577new(aSN1EncodableM33102catch);
                    this.f31127if = g50VarM2577new.m2580try();
                    this.f31128new = g50VarM2577new.m2579goto();
                    return;
                }
                bigIntegerM33044final = Cgoto.m33040catch(aSN1EncodableM33102catch).m33044final();
            } else {
                th2 th2VarM7901break = th2.m7901break(rh2VarM6988new.m6990case());
                eCParameterSpec = new ECParameterSpec(t30.m7701do(th2VarM7901break.m7909try(), th2VarM7901break.m7904class()), t30.m7706new(th2VarM7901break.m7906goto()), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this().intValue());
            }
            this.f31126for = eCParameterSpec;
            aSN1EncodableM33102catch = cdo.m33102catch();
            if (aSN1EncodableM33102catch instanceof Cgoto) {
            }
        }
        this.f31127if = bigIntegerM33044final;
    }

    /* renamed from: if, reason: not valid java name */
    private Cinstanceof m34687if(Cif cif) {
        return Ctry.m33291case(cif.getEncoded()).m33296this();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m34686for(org.bouncycastle.asn1.pkcs.Cdo.m33100try(Cfinal.m33015else((byte[]) objectInputStream.readObject())));
        this.f31129try = new Cthis();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.f31126for;
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
        return this.f31129try.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f31129try.getBagAttributeKeys();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.f31127if;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d6  */
    @Override // java.security.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] getEncoded() {
        rh2 rh2Var;
        int iM34733const;
        boolean z = this.f31127if.bitLength() > 256;
        Ccatch ccatch = z ? RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512 : RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256;
        int i = z ? 64 : 32;
        if (this.f31125do != null) {
            byte[] bArr = new byte[i];
            m34685do(bArr, i, 0, getS());
            try {
                return new org.bouncycastle.asn1.pkcs.Cdo(new b1(ccatch, this.f31125do), new j(bArr)).m32764do(ASN1Encoding.DER);
            } catch (IOException unused) {
                return null;
            }
        }
        ECParameterSpec eCParameterSpec = this.f31126for;
        try {
            if (eCParameterSpec instanceof y40) {
                Ccatch ccatchM34732class = Celse.m34732class(((y40) eCParameterSpec).m9755for());
                if (ccatchM34732class == null) {
                    ccatchM34732class = new Ccatch(((y40) this.f31126for).m9755for());
                }
                rh2Var = new rh2(ccatchM34732class);
            } else {
                if (eCParameterSpec == null) {
                    rh2Var = new rh2((org.bouncycastle.asn1.Cthis) h.f29080do);
                    iM34733const = Celse.m34733const(org.bouncycastle.jce.provider.Cdo.CONFIGURATION, null, getS());
                    return new org.bouncycastle.asn1.pkcs.Cdo(new b1(ccatch, rh2Var.toASN1Primitive()), (this.f31128new == null ? new g50(iM34733const, getS(), this.f31128new, rh2Var) : new g50(iM34733const, getS(), rh2Var)).toASN1Primitive()).m32764do(ASN1Encoding.DER);
                }
                Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                rh2Var = new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, this.f31126for.getGenerator(), this.withCompression), this.f31126for.getOrder(), BigInteger.valueOf(this.f31126for.getCofactor()), this.f31126for.getCurve().getSeed()));
            }
            return new org.bouncycastle.asn1.pkcs.Cdo(new b1(ccatch, rh2Var.toASN1Primitive()), (this.f31128new == null ? new g50(iM34733const, getS(), this.f31128new, rh2Var) : new g50(iM34733const, getS(), rh2Var)).toASN1Primitive()).m32764do(ASN1Encoding.DER);
        } catch (IOException unused2) {
            return null;
        }
        iM34733const = Celse.m34733const(org.bouncycastle.jce.provider.Cdo.CONFIGURATION, this.f31126for.getOrder(), getS());
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.ECKey
    public d50 getParameters() {
        ECParameterSpec eCParameterSpec = this.f31126for;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f31126for;
    }

    @Override // java.security.interfaces.ECPrivateKey
    public BigInteger getS() {
        return this.f31127if;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f31129try.setBagAttribute(ccatch, aSN1Encodable);
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return Celse.m34736final(this.algorithm, this.f31127if, engineGetSpec());
    }
}
