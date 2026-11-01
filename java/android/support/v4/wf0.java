package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.jce.interfaces.GOST3410Params;

/* loaded from: classes3.dex */
public class wf0 implements AlgorithmParameterSpec, GOST3410Params {

    /* renamed from: do, reason: not valid java name */
    private dg0 f7508do;

    /* renamed from: for, reason: not valid java name */
    private String f7509for;

    /* renamed from: if, reason: not valid java name */
    private String f7510if;

    /* renamed from: new, reason: not valid java name */
    private String f7511new;

    public wf0(dg0 dg0Var) {
        this.f7508do = dg0Var;
        this.f7509for = CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet.m32795super();
        this.f7511new = null;
    }

    public wf0(String str) {
        this(str, CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet.m32795super(), null);
    }

    public wf0(String str, String str2) {
        this(str, str2, null);
    }

    public wf0(String str, String str2, String str3) {
        vf0 vf0VarM8404if;
        try {
            vf0VarM8404if = uf0.m8404if(new Ccatch(str));
        } catch (IllegalArgumentException unused) {
            Ccatch ccatchM8405new = uf0.m8405new(str);
            if (ccatchM8405new != null) {
                str = ccatchM8405new.m32795super();
                vf0VarM8404if = uf0.m8404if(ccatchM8405new);
            } else {
                vf0VarM8404if = null;
            }
        }
        if (vf0VarM8404if == null) {
            throw new IllegalArgumentException("no key parameter set for passed in name/OID.");
        }
        this.f7508do = new dg0(vf0VarM8404if.m8849this(), vf0VarM8404if.m8845break(), vf0VarM8404if.m8848new());
        this.f7510if = str;
        this.f7509for = str2;
        this.f7511new = str3;
    }

    /* renamed from: do, reason: not valid java name */
    public static wf0 m9137do(cg0 cg0Var) {
        return cg0Var.m913try() != null ? new wf0(cg0Var.m911goto().m32795super(), cg0Var.m912new().m32795super(), cg0Var.m913try().m32795super()) : new wf0(cg0Var.m911goto().m32795super(), cg0Var.m912new().m32795super());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof wf0)) {
            return false;
        }
        wf0 wf0Var = (wf0) obj;
        if (!this.f7508do.equals(wf0Var.f7508do) || !this.f7509for.equals(wf0Var.f7509for)) {
            return false;
        }
        String str = this.f7511new;
        String str2 = wf0Var.f7511new;
        return str == str2 || (str != null && str.equals(str2));
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Params
    public String getDigestParamSetOID() {
        return this.f7509for;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Params
    public String getEncryptionParamSetOID() {
        return this.f7511new;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Params
    public String getPublicKeyParamSetOID() {
        return this.f7510if;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Params
    public dg0 getPublicKeyParameters() {
        return this.f7508do;
    }

    public int hashCode() {
        int iHashCode = this.f7508do.hashCode() ^ this.f7509for.hashCode();
        String str = this.f7511new;
        return iHashCode ^ (str != null ? str.hashCode() : 0);
    }
}
