package android.support.v4;

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
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.ua.UAObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.math.ec.Cif;

/* loaded from: classes3.dex */
public class p5 implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier, ECPointEncoder {
    public static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;

    /* renamed from: do, reason: not valid java name */
    private transient BigInteger f4846do;

    /* renamed from: for, reason: not valid java name */
    private transient Cinstanceof f4847for;

    /* renamed from: if, reason: not valid java name */
    private transient ECParameterSpec f4848if;

    /* renamed from: new, reason: not valid java name */
    private transient Cthis f4849new;
    private boolean withCompression;

    public p5() {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
    }

    public p5(i50 i50Var) {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
        this.f4846do = i50Var.m3275if();
        this.f4848if = i50Var.m7719do() != null ? t30.m7704goto(t30.m7701do(i50Var.m7719do().m1142do(), i50Var.m7719do().m1146try()), i50Var.m7719do()) : null;
    }

    public p5(p5 p5Var) {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
        this.f4846do = p5Var.f4846do;
        this.f4848if = p5Var.f4848if;
        this.withCompression = p5Var.withCompression;
        this.f4849new = p5Var.f4849new;
        this.f4847for = p5Var.f4847for;
    }

    public p5(String str, h50 h50Var) {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
        this.algorithm = str;
        this.f4846do = h50Var.m2948for();
        this.f4848if = null;
    }

    public p5(String str, h50 h50Var, q5 q5Var, d50 d50Var) {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
        e40 e40VarM7258if = h50Var.m7258if();
        this.algorithm = str;
        this.f4846do = h50Var.m2948for();
        this.f4848if = d50Var == null ? new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue()) : new ECParameterSpec(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), t30.m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for().intValue());
        this.f4847for = m5876do(q5Var);
    }

    public p5(String str, h50 h50Var, q5 q5Var, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
        e40 e40VarM7258if = h50Var.m7258if();
        this.algorithm = str;
        this.f4846do = h50Var.m2948for();
        if (eCParameterSpec == null) {
            this.f4848if = new ECParameterSpec(t30.m7701do(e40VarM7258if.m1646do(), e40VarM7258if.m1645case()), t30.m7706new(e40VarM7258if.m1648if()), e40VarM7258if.m1650try(), e40VarM7258if.m1647for().intValue());
        } else {
            this.f4848if = eCParameterSpec;
        }
        this.f4847for = m5876do(q5Var);
    }

    public p5(ECPrivateKey eCPrivateKey) {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
        this.f4846do = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.f4848if = eCPrivateKey.getParams();
    }

    public p5(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
        this.f4846do = eCPrivateKeySpec.getS();
        this.f4848if = eCPrivateKeySpec.getParams();
    }

    public p5(Cdo cdo) throws IOException {
        this.algorithm = "DSTU4145";
        this.f4849new = new Cthis();
        m5878if(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private Cinstanceof m5876do(q5 q5Var) {
        try {
            return Ctry.m33291case(Cfinal.m33015else(q5Var.getEncoded())).m33296this();
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m5877for(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - 1) - i];
            bArr[(bArr.length - 1) - i] = b;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x018b  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m5878if(Cdo cdo) throws IOException {
        d50 d50Var;
        ECParameterSpec eCParameterSpec;
        ASN1Encodable aSN1EncodableM33102catch;
        rh2 rh2VarM6988new = rh2.m6988new(cdo.m33104else().m419else());
        if (!rh2VarM6988new.m6992goto()) {
            if (rh2VarM6988new.m6991else()) {
                this.f4848if = null;
            } else {
                Csuper csuperM33129catch = Csuper.m33129catch(rh2VarM6988new.m6990case());
                if (csuperM33129catch.mo33075final(0) instanceof Cgoto) {
                    th2 th2VarM7901break = th2.m7901break(rh2VarM6988new.m6990case());
                    eCParameterSpec = new ECParameterSpec(t30.m7701do(th2VarM7901break.m7909try(), th2VarM7901break.m7904class()), t30.m7706new(th2VarM7901break.m7906goto()), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this().intValue());
                } else {
                    uv uvVarM8658else = uv.m8658else(csuperM33129catch);
                    if (uvVarM8658else.m8663this()) {
                        Ccatch ccatchM8661goto = uvVarM8658else.m8661goto();
                        e40 e40VarM7144do = rv.m7144do(ccatchM8661goto);
                        d50Var = new x40(ccatchM8661goto.m32795super(), e40VarM7144do.m1646do(), e40VarM7144do.m1648if(), e40VarM7144do.m1650try(), e40VarM7144do.m1647for(), e40VarM7144do.m1645case());
                    } else {
                        pv pvVarM8660case = uvVarM8658else.m8660case();
                        byte[] bArrM6228try = pvVarM8660case.m6228try();
                        Ccatch ccatchM420new = cdo.m33104else().m420new();
                        Ccatch ccatch = UAObjectIdentifiers.dstu4145le;
                        if (ccatchM420new.equals(ccatch)) {
                            m5877for(bArrM6228try);
                        }
                        ov ovVarM6224case = pvVarM8660case.m6224case();
                        Cif.Ctry ctry = new Cif.Ctry(ovVarM6224case.m5782goto(), ovVarM6224case.m5783try(), ovVarM6224case.m5780case(), ovVarM6224case.m5781else(), pvVarM8660case.m6226new(), new BigInteger(1, bArrM6228try));
                        byte[] bArrM6225else = pvVarM8660case.m6225else();
                        if (cdo.m33104else().m420new().equals(ccatch)) {
                            m5877for(bArrM6225else);
                        }
                        d50Var = new d50(ctry, vv.m8959do(ctry, bArrM6225else), pvVarM8660case.m6227this());
                    }
                    this.f4848if = new ECParameterSpec(t30.m7701do(d50Var.m1142do(), d50Var.m1146try()), t30.m7706new(d50Var.m1144if()), d50Var.m1145new(), d50Var.m1143for().intValue());
                }
            }
            aSN1EncodableM33102catch = cdo.m33102catch();
            if (!(aSN1EncodableM33102catch instanceof Cgoto)) {
                this.f4846do = Cgoto.m33040catch(aSN1EncodableM33102catch).m33044final();
                return;
            }
            g50 g50VarM2577new = g50.m2577new(aSN1EncodableM33102catch);
            this.f4846do = g50VarM2577new.m2580try();
            this.f4847for = g50VarM2577new.m2579goto();
            return;
        }
        Ccatch ccatchM32790throw = Ccatch.m32790throw(rh2VarM6988new.m6990case());
        th2 th2VarM34729break = Celse.m34729break(ccatchM32790throw);
        if (th2VarM34729break == null) {
            e40 e40VarM7144do2 = rv.m7144do(ccatchM32790throw);
            eCParameterSpec = new y40(ccatchM32790throw.m32795super(), t30.m7701do(e40VarM7144do2.m1646do(), e40VarM7144do2.m1645case()), t30.m7706new(e40VarM7144do2.m1648if()), e40VarM7144do2.m1650try(), e40VarM7144do2.m1647for());
        } else {
            eCParameterSpec = new y40(Celse.m34730case(ccatchM32790throw), t30.m7701do(th2VarM34729break.m7909try(), th2VarM34729break.m7904class()), t30.m7706new(th2VarM34729break.m7906goto()), th2VarM34729break.m7903catch(), th2VarM34729break.m7908this());
        }
        this.f4848if = eCParameterSpec;
        aSN1EncodableM33102catch = cdo.m33102catch();
        if (!(aSN1EncodableM33102catch instanceof Cgoto)) {
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m5878if(Cdo.m33100try(Cfinal.m33015else((byte[]) objectInputStream.readObject())));
        this.f4849new = new Cthis();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public d50 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.f4848if;
        return eCParameterSpec != null ? t30.m7702else(eCParameterSpec, this.withCompression) : org.bouncycastle.jce.provider.Cdo.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof p5)) {
            return false;
        }
        p5 p5Var = (p5) obj;
        return getD().equals(p5Var.getD()) && engineGetSpec().equals(p5Var.engineGetSpec());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.f4849new.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f4849new.getBagAttributeKeys();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.f4846do;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a7 A[Catch: IOException -> 0x00d7, TryCatch #0 {IOException -> 0x00d7, blocks: (B:16:0x009d, B:18:0x00a7, B:20:0x00d0, B:19:0x00bc), top: B:23:0x009d }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00bc A[Catch: IOException -> 0x00d7, TryCatch #0 {IOException -> 0x00d7, blocks: (B:16:0x009d, B:18:0x00a7, B:20:0x00d0, B:19:0x00bc), top: B:23:0x009d }] */
    @Override // java.security.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] getEncoded() {
        rh2 rh2Var;
        int iM34733const;
        ECParameterSpec eCParameterSpec = this.f4848if;
        try {
            if (eCParameterSpec instanceof y40) {
                Ccatch ccatchM34732class = Celse.m34732class(((y40) eCParameterSpec).m9755for());
                if (ccatchM34732class == null) {
                    ccatchM34732class = new Ccatch(((y40) this.f4848if).m9755for());
                }
                rh2Var = new rh2(ccatchM34732class);
            } else {
                if (eCParameterSpec == null) {
                    rh2Var = new rh2((org.bouncycastle.asn1.Cthis) org.bouncycastle.asn1.h.f29080do);
                    iM34733const = Celse.m34733const(org.bouncycastle.jce.provider.Cdo.CONFIGURATION, null, getS());
                    g50 g50Var = this.f4847for == null ? new g50(iM34733const, getS(), this.f4847for, rh2Var) : new g50(iM34733const, getS(), rh2Var);
                    return (!this.algorithm.equals("DSTU4145") ? new Cdo(new b1(UAObjectIdentifiers.dstu4145be, rh2Var.toASN1Primitive()), g50Var.toASN1Primitive()) : new Cdo(new b1(X9ObjectIdentifiers.id_ecPublicKey, rh2Var.toASN1Primitive()), g50Var.toASN1Primitive())).m32764do(ASN1Encoding.DER);
                }
                Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                rh2Var = new rh2(new th2(cifM7705if, t30.m7697case(cifM7705if, this.f4848if.getGenerator(), this.withCompression), this.f4848if.getOrder(), BigInteger.valueOf(this.f4848if.getCofactor()), this.f4848if.getCurve().getSeed()));
            }
            return (!this.algorithm.equals("DSTU4145") ? new Cdo(new b1(UAObjectIdentifiers.dstu4145be, rh2Var.toASN1Primitive()), g50Var.toASN1Primitive()) : new Cdo(new b1(X9ObjectIdentifiers.id_ecPublicKey, rh2Var.toASN1Primitive()), g50Var.toASN1Primitive())).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            return null;
        }
        iM34733const = Celse.m34733const(org.bouncycastle.jce.provider.Cdo.CONFIGURATION, this.f4848if.getOrder(), getS());
        if (this.f4847for == null) {
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.ECKey
    public d50 getParameters() {
        ECParameterSpec eCParameterSpec = this.f4848if;
        if (eCParameterSpec == null) {
            return null;
        }
        return t30.m7702else(eCParameterSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.f4848if;
    }

    @Override // java.security.interfaces.ECPrivateKey
    public BigInteger getS() {
        return this.f4846do;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f4849new.setBagAttribute(ccatch, aSN1Encodable);
    }

    @Override // org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return Celse.m34736final(this.algorithm, this.f4846do, engineGetSpec());
    }
}
