package android.support.v4;

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
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.ua.UAObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class q5 implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey, ECPointEncoder {
    public static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;

    /* renamed from: do, reason: not valid java name */
    private transient k50 f5250do;

    /* renamed from: for, reason: not valid java name */
    private transient uv f5251for;

    /* renamed from: if, reason: not valid java name */
    private transient ECParameterSpec f5252if;
    private boolean withCompression;

    public q5(l50 l50Var, ProviderConfiguration providerConfiguration) {
        this.algorithm = "DSTU4145";
        if (l50Var.m7719do() == null) {
            this.f5250do = new k50(providerConfiguration.getEcImplicitlyCa().m1142do().m35430goto(l50Var.m4596if().m35456case().mo339static(), l50Var.m4596if().m35462else().mo339static()), t30.m7700const(providerConfiguration, null));
            this.f5252if = null;
        } else {
            EllipticCurve ellipticCurveM7701do = t30.m7701do(l50Var.m7719do().m1142do(), l50Var.m7719do().m1146try());
            this.f5250do = new k50(l50Var.m4596if(), Celse.m34735else(providerConfiguration, l50Var.m7719do()));
            this.f5252if = t30.m7704goto(ellipticCurveM7701do, l50Var.m7719do());
        }
    }

    public q5(q5 q5Var) {
        this.algorithm = "DSTU4145";
        this.f5250do = q5Var.f5250do;
        this.f5252if = q5Var.f5252if;
        this.withCompression = q5Var.withCompression;
        this.f5251for = q5Var.f5251for;
    }

    public q5(String str, k50 k50Var) {
        this.algorithm = "DSTU4145";
        this.algorithm = str;
        this.f5250do = k50Var;
        this.f5252if = null;
    }

    public q5(String str, k50 k50Var, d50 d50Var) {
        this.algorithm = "DSTU4145";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.f5252if = d50Var == null ? m6410do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if) : t30.m7704goto(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), d50Var);
        this.f5250do = k50Var;
    }

    public q5(String str, k50 k50Var, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        e40 e40VarM7258if = k50Var.m7258if();
        this.algorithm = str;
        this.f5250do = k50Var;
        if (eCParameterSpec == null) {
            this.f5252if = m6410do(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), e40VarM7258if);
        } else {
            this.f5252if = eCParameterSpec;
        }
    }

    public q5(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "DSTU4145";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.f5252if = params;
        this.f5250do = new k50(t30.m7708try(params, eCPublicKeySpec.getW(), false), t30.m7700const(null, this.f5252if));
    }

    public q5(Ctry ctry) {
        this.algorithm = "DSTU4145";
        m6412if(ctry);
    }

    /* renamed from: do, reason: not valid java name */
    private ECParameterSpec m6410do(EllipticCurve ellipticCurve, e40 e40Var) {
        return new ECParameterSpec(ellipticCurve, t30.m7706new(e40Var.m1648if()), e40Var.m1650try(), e40Var.m1647for().intValue());
    }

    /* renamed from: for, reason: not valid java name */
    private void m6411for(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - 1) - i];
            bArr[(bArr.length - 1) - i] = b;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m6412if(Ctry ctry) {
        d50 d50Var;
        th2 th2VarM7901break;
        Cinstanceof cinstanceofM33296this = ctry.m33296this();
        this.algorithm = "DSTU4145";
        try {
            byte[] bArrMo5490const = ((Cclass) Cfinal.m33015else(cinstanceofM33296this.m33057const())).mo5490const();
            Ccatch ccatchM420new = ctry.m33295new().m420new();
            Ccatch ccatch = UAObjectIdentifiers.dstu4145le;
            if (ccatchM420new.equals(ccatch)) {
                m6411for(bArrMo5490const);
            }
            Csuper csuperM33129catch = Csuper.m33129catch(ctry.m33295new().m419else());
            if (csuperM33129catch.mo33075final(0) instanceof Cgoto) {
                th2VarM7901break = th2.m7901break(csuperM33129catch);
                d50Var = new d50(th2VarM7901break.m7909try(), th2VarM7901break.m7906goto(), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this(), th2VarM7901break.m7904class());
            } else {
                uv uvVarM8658else = uv.m8658else(csuperM33129catch);
                this.f5251for = uvVarM8658else;
                if (uvVarM8658else.m8663this()) {
                    Ccatch ccatchM8661goto = this.f5251for.m8661goto();
                    e40 e40VarM7144do = rv.m7144do(ccatchM8661goto);
                    d50Var = new x40(ccatchM8661goto.m32795super(), e40VarM7144do.m1646do(), e40VarM7144do.m1648if(), e40VarM7144do.m1650try(), e40VarM7144do.m1647for(), e40VarM7144do.m1645case());
                } else {
                    pv pvVarM8660case = this.f5251for.m8660case();
                    byte[] bArrM6228try = pvVarM8660case.m6228try();
                    if (ctry.m33295new().m420new().equals(ccatch)) {
                        m6411for(bArrM6228try);
                    }
                    ov ovVarM6224case = pvVarM8660case.m6224case();
                    Cif.Ctry ctry2 = new Cif.Ctry(ovVarM6224case.m5782goto(), ovVarM6224case.m5783try(), ovVarM6224case.m5780case(), ovVarM6224case.m5781else(), pvVarM8660case.m6226new(), new BigInteger(1, bArrM6228try));
                    byte[] bArrM6225else = pvVarM8660case.m6225else();
                    if (ctry.m33295new().m420new().equals(ccatch)) {
                        m6411for(bArrM6225else);
                    }
                    d50Var = new d50(ctry2, vv.m8959do(ctry2, bArrM6225else), pvVarM8660case.m6227this());
                }
                th2VarM7901break = null;
            }
            Cif cifM1142do = d50Var.m1142do();
            EllipticCurve ellipticCurveM7701do = t30.m7701do(cifM1142do, d50Var.m1146try());
            uv uvVar = this.f5251for;
            this.f5252if = uvVar != null ? uvVar.m8663this() ? new y40(this.f5251for.m8661goto().m32795super(), ellipticCurveM7701do, t30.m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for()) : new ECParameterSpec(ellipticCurveM7701do, t30.m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for().intValue()) : t30.m7698catch(th2VarM7901break);
            this.f5250do = new k50(vv.m8959do(cifM1142do, bArrMo5490const), t30.m7700const(null, this.f5252if));
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m6412if(Ctry.m33291case(Cfinal.m33015else((byte[]) objectInputStream.readObject())));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public k50 engineGetKeyParameters() {
        return this.f5250do;
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.f5252if;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : Cdo.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q5)) {
            return false;
        }
        q5 q5Var = (q5) obj;
        return this.f5250do.m4252for().m35481try(q5Var.f5250do.m4252for()) && engineGetSpec().equals(q5Var.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        ASN1Encodable rh2Var = this.f5251for;
        if (rh2Var == null) {
            ECParameterSpec eCParameterSpec = this.f5252if;
            if (eCParameterSpec instanceof y40) {
                rh2Var = new uv(new Ccatch(((y40) this.f5252if).m9755for()));
            } else {
                Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                rh2Var = new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, this.f5252if.getGenerator(), this.withCompression), this.f5252if.getOrder(), BigInteger.valueOf(this.f5252if.getCofactor()), this.f5252if.getCurve().getSeed()));
            }
        }
        try {
            return nr0.m5360try(new Ctry(new b1(UAObjectIdentifiers.dstu4145be, rh2Var), new org.bouncycastle.asn1.j(vv.m8961if(this.f5250do.m4252for()))));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.ECKey
    public d50 getParameters() {
        ECParameterSpec eCParameterSpec = this.f5252if;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f5252if;
    }

    @Override // org.bouncycastle.jce.interfaces.ECPublicKey
    public Cnew getQ() {
        Cnew cnewM4252for = this.f5250do.m4252for();
        return this.f5252if == null ? cnewM4252for.m35457catch() : cnewM4252for;
    }

    public byte[] getSbox() {
        uv uvVar = this.f5251for;
        return uvVar != null ? uvVar.m8662new() : uv.m8659try();
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        return t30.m7706new(this.f5250do.m4252for());
    }

    public int hashCode() {
        return this.f5250do.m4252for().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return Celse.m34741super(this.algorithm, this.f5250do.m4252for(), engineGetSpec());
    }
}
