package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.b1;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.g50;
import android.support.v4.h50;
import android.support.v4.i50;
import android.support.v4.rh2;
import android.support.v4.t30;
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
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.math.ec.Cnew;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier, ECPointEncoder {
    public static final long serialVersionUID = 994553197664784084L;
    private String algorithm;

    /* renamed from: do, reason: not valid java name */
    private transient BigInteger f31090do;

    /* renamed from: for, reason: not valid java name */
    private transient ProviderConfiguration f31091for;

    /* renamed from: if, reason: not valid java name */
    private transient ECParameterSpec f31092if;

    /* renamed from: new, reason: not valid java name */
    private transient Cinstanceof f31093new;

    /* renamed from: try, reason: not valid java name */
    private transient Cthis f31094try;
    private boolean withCompression;

    public Cif() {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
    }

    public Cif(String str, h50 h50Var, Cfor cfor, d50 d50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
        this.algorithm = str;
        this.f31090do = h50Var.m2948for();
        this.f31091for = providerConfiguration;
        if (d50Var == null) {
            e40 e40VarM7258if = h50Var.m7258if();
            this.f31092if = new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue());
        } else {
            this.f31092if = t30.m7704goto(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), d50Var);
        }
        try {
            this.f31093new = m34666if(cfor);
        } catch (Exception unused) {
            this.f31093new = null;
        }
    }

    public Cif(String str, h50 h50Var, Cfor cfor, ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
        this.algorithm = str;
        this.f31090do = h50Var.m2948for();
        this.f31091for = providerConfiguration;
        if (eCParameterSpec == null) {
            e40 e40VarM7258if = h50Var.m7258if();
            eCParameterSpec = new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue());
        }
        this.f31092if = eCParameterSpec;
        this.f31093new = m34666if(cfor);
    }

    public Cif(String str, h50 h50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
        this.algorithm = str;
        this.f31090do = h50Var.m2948for();
        this.f31092if = null;
        this.f31091for = providerConfiguration;
    }

    public Cif(String str, i50 i50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
        this.algorithm = str;
        this.f31090do = i50Var.m3275if();
        this.f31092if = i50Var.m7719do() != null ? t30.m7704goto(t30.m7701do(i50Var.m7719do().m1142do(), i50Var.m7719do().m1146try()), i50Var.m7719do()) : null;
        this.f31091for = providerConfiguration;
    }

    public Cif(String str, ECPrivateKeySpec eCPrivateKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
        this.algorithm = str;
        this.f31090do = eCPrivateKeySpec.getS();
        this.f31092if = eCPrivateKeySpec.getParams();
        this.f31091for = providerConfiguration;
    }

    public Cif(String str, Cdo cdo, ProviderConfiguration providerConfiguration) throws IOException {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
        this.algorithm = str;
        this.f31091for = providerConfiguration;
        m34665for(cdo);
    }

    public Cif(String str, Cif cif) {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
        this.algorithm = str;
        this.f31090do = cif.f31090do;
        this.f31092if = cif.f31092if;
        this.withCompression = cif.withCompression;
        this.f31094try = cif.f31094try;
        this.f31093new = cif.f31093new;
        this.f31091for = cif.f31091for;
    }

    public Cif(ECPrivateKey eCPrivateKey, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.f31094try = new Cthis();
        this.f31090do = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.f31092if = eCPrivateKey.getParams();
        this.f31091for = providerConfiguration;
    }

    /* renamed from: do, reason: not valid java name */
    private Cnew m34664do(d50 d50Var) {
        return d50Var.m1144if().m35470package(this.f31090do).m35454abstract();
    }

    /* renamed from: for, reason: not valid java name */
    private void m34665for(Cdo cdo) throws IOException {
        rh2 rh2VarM6988new = rh2.m6988new(cdo.m33104else().m419else());
        this.f31092if = t30.m7696break(rh2VarM6988new, t30.m7699class(this.f31091for, rh2VarM6988new));
        ASN1Encodable aSN1EncodableM33102catch = cdo.m33102catch();
        if (aSN1EncodableM33102catch instanceof Cgoto) {
            this.f31090do = Cgoto.m33040catch(aSN1EncodableM33102catch).m33044final();
            return;
        }
        g50 g50VarM2577new = g50.m2577new(aSN1EncodableM33102catch);
        this.f31090do = g50VarM2577new.m2580try();
        this.f31093new = g50VarM2577new.m2579goto();
    }

    /* renamed from: if, reason: not valid java name */
    private Cinstanceof m34666if(Cfor cfor) {
        try {
            return Ctry.m33291case(Cfinal.m33015else(cfor.getEncoded())).m33296this();
        } catch (IOException unused) {
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        byte[] bArr = (byte[]) objectInputStream.readObject();
        this.f31091for = org.bouncycastle.jce.provider.Cdo.CONFIGURATION;
        m34665for(Cdo.m33100try(Cfinal.m33015else(bArr)));
        this.f31094try = new Cthis();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.f31092if;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : this.f31091for.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return getD().equals(cif.getD()) && engineGetSpec().equals(cif.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.f31094try.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f31094try.getBagAttributeKeys();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.f31090do;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        rh2 rh2VarM34668for = Cnew.m34668for(this.f31092if, this.withCompression);
        ECParameterSpec eCParameterSpec = this.f31092if;
        int iM34733const = eCParameterSpec == null ? Celse.m34733const(this.f31091for, null, getS()) : Celse.m34733const(this.f31091for, eCParameterSpec.getOrder(), getS());
        try {
            return new Cdo(new b1(X9ObjectIdentifiers.id_ecPublicKey, rh2VarM34668for), this.f31093new != null ? new g50(iM34733const, getS(), this.f31093new, rh2VarM34668for) : new g50(iM34733const, getS(), rh2VarM34668for)).m32764do(ASN1Encoding.DER);
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
        ECParameterSpec eCParameterSpec = this.f31092if;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f31092if;
    }

    @Override // java.security.interfaces.ECPrivateKey
    public BigInteger getS() {
        return this.f31090do;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f31094try.setBagAttribute(ccatch, aSN1Encodable);
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return Celse.m34736final("EC", this.f31090do, engineGetSpec());
    }
}
