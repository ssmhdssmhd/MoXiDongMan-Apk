package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.b1;
import android.support.v4.d50;
import android.support.v4.e40;
import android.support.v4.k50;
import android.support.v4.l50;
import android.support.v4.nr0;
import android.support.v4.rh2;
import android.support.v4.t30;
import android.support.v4.vh2;
import android.support.v4.yh2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey, ECPointEncoder {
    public static final long serialVersionUID = 2422789860422731812L;
    private String algorithm;

    /* renamed from: do, reason: not valid java name */
    private transient k50 f31080do;

    /* renamed from: for, reason: not valid java name */
    private transient ProviderConfiguration f31081for;

    /* renamed from: if, reason: not valid java name */
    private transient ECParameterSpec f31082if;
    private boolean withCompression;

    public Cfor(String str, k50 k50Var, d50 d50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.f31082if = d50Var == null ? m34659do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if) : t30.m7704goto(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), d50Var);
        this.f31080do = k50Var;
        this.f31081for = providerConfiguration;
    }

    public Cfor(String str, k50 k50Var, ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.f31080do = k50Var;
        if (eCParameterSpec == null) {
            this.f31082if = m34659do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if);
        } else {
            this.f31082if = eCParameterSpec;
        }
        this.f31081for = providerConfiguration;
    }

    public Cfor(String str, k50 k50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.f31080do = k50Var;
        this.f31082if = null;
        this.f31081for = providerConfiguration;
    }

    public Cfor(String str, l50 l50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        if (l50Var.m7719do() != null) {
            EllipticCurve ellipticCurveM7701do = t30.m7701do(l50Var.m7719do().m1142do(), l50Var.m7719do().m1146try());
            this.f31080do = new k50(l50Var.m4596if(), Celse.m34735else(providerConfiguration, l50Var.m7719do()));
            this.f31082if = t30.m7704goto(ellipticCurveM7701do, l50Var.m7719do());
        } else {
            this.f31080do = new k50(providerConfiguration.getEcImplicitlyCa().m1142do().m35430goto(l50Var.m4596if().m35456case().mo339static(), l50Var.m4596if().m35462else().mo339static()), t30.m7700const(providerConfiguration, null));
            this.f31082if = null;
        }
        this.f31081for = providerConfiguration;
    }

    public Cfor(String str, ECPublicKeySpec eCPublicKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f31082if = params;
        this.f31080do = new k50(t30.m7708try(params, eCPublicKeySpec.getW(), false), t30.m7700const(providerConfiguration, eCPublicKeySpec.getParams()));
        this.f31081for = providerConfiguration;
    }

    public Cfor(String str, Ctry ctry, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.f31081for = providerConfiguration;
        m34660if(ctry);
    }

    public Cfor(String str, Cfor cfor) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.f31080do = cfor.f31080do;
        this.f31082if = cfor.f31082if;
        this.withCompression = cfor.withCompression;
        this.f31081for = cfor.f31081for;
    }

    public Cfor(ECPublicKey eCPublicKey, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.f31082if = params;
        this.f31080do = new k50(t30.m7708try(params, eCPublicKey.getW(), false), t30.m7700const(providerConfiguration, eCPublicKey.getParams()));
    }

    /* renamed from: do, reason: not valid java name */
    private ECParameterSpec m34659do(EllipticCurve ellipticCurve, e40 e40Var) {
        return new ECParameterSpec(ellipticCurve, t30.m7706new(e40Var.m1648if()), e40Var.m1650try(), e40Var.m1647for().intValue());
    }

    /* renamed from: if, reason: not valid java name */
    private void m34660if(Ctry ctry) {
        rh2 rh2VarM6988new = rh2.m6988new(ctry.m33295new().m419else());
        Cif cifM7699class = t30.m7699class(this.f31081for, rh2VarM6988new);
        this.f31082if = t30.m7696break(rh2VarM6988new, cifM7699class);
        byte[] bArrM33057const = ctry.m33296this().m33057const();
        Cclass jVar = new j(bArrM33057const);
        if (bArrM33057const[0] == 4 && bArrM33057const[1] == bArrM33057const.length - 2 && ((bArrM33057const[2] == 2 || bArrM33057const[2] == 3) && new yh2().m9870do(cifM7699class) >= bArrM33057const.length - 3)) {
            try {
                jVar = (Cclass) Cfinal.m33015else(bArrM33057const);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        this.f31080do = new k50(new vh2(cifM7699class, jVar).m8868new(), Celse.m34738goto(this.f31081for, rh2VarM6988new));
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        byte[] bArr = (byte[]) objectInputStream.readObject();
        this.f31081for = Cdo.CONFIGURATION;
        m34660if(Ctry.m33291case(Cfinal.m33015else(bArr)));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public k50 engineGetKeyParameters() {
        return this.f31080do;
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.f31082if;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : this.f31081for.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        return this.f31080do.m4252for().m35481try(cfor.f31080do.m4252for()) && engineGetSpec().equals(cfor.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return nr0.m5360try(new Ctry(new b1(X9ObjectIdentifiers.id_ecPublicKey, Cnew.m34668for(this.f31082if, this.withCompression)), Cclass.m32796catch(new vh2(this.f31080do.m4252for(), this.withCompression).toASN1Primitive()).mo5490const()));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.ECKey
    public d50 getParameters() {
        ECParameterSpec eCParameterSpec = this.f31082if;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f31082if;
    }

    @Override // org.bouncycastle.jce.interfaces.ECPublicKey
    public Cnew getQ() {
        Cnew cnewM4252for = this.f31080do.m4252for();
        return this.f31082if == null ? cnewM4252for.m35457catch() : cnewM4252for;
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return t30.m7706new(this.f31080do.m4252for());
    }

    public int hashCode() {
        return this.f31080do.m4252for().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return Celse.m34741super("EC", this.f31080do.m4252for(), engineGetSpec());
    }
}
