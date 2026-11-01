package org.bouncycastle.crypto.util;

import android.support.v4.a4;
import android.support.v4.a50;
import android.support.v4.b1;
import android.support.v4.b50;
import android.support.v4.cg0;
import android.support.v4.ck1;
import android.support.v4.e40;
import android.support.v4.fe2;
import android.support.v4.fv;
import android.support.v4.gk1;
import android.support.v4.hv;
import android.support.v4.j40;
import android.support.v4.j60;
import android.support.v4.k50;
import android.support.v4.kv;
import android.support.v4.l40;
import android.support.v4.l60;
import android.support.v4.nu;
import android.support.v4.o60;
import android.support.v4.ou;
import android.support.v4.ov;
import android.support.v4.pv;
import android.support.v4.qu;
import android.support.v4.rh2;
import android.support.v4.ru;
import android.support.v4.rv;
import android.support.v4.th2;
import android.support.v4.uv;
import android.support.v4.vh2;
import android.support.v4.vv;
import android.support.v4.xu;
import android.support.v4.yh2;
import android.support.v4.z10;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.asn1.ua.UAObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.math.ec.Cif;

/* renamed from: org.bouncycastle.crypto.util.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst {

    /* renamed from: do, reason: not valid java name */
    private static Map f30874do;

    /* renamed from: org.bouncycastle.crypto.util.const$break, reason: invalid class name */
    public static class Cbreak extends AbstractC0411const {
        private Cbreak() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do, reason: not valid java name */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) {
            try {
                byte[] bArrMo5490const = ((org.bouncycastle.asn1.Cclass) org.bouncycastle.asn1.Cfinal.m33015else(ctry.m33296this().m33057const())).mo5490const();
                byte[] bArr = new byte[65];
                bArr[0] = 4;
                for (int i = 1; i <= 32; i++) {
                    bArr[i] = bArrMo5490const[32 - i];
                    bArr[i + 32] = bArrMo5490const[64 - i];
                }
                cg0 cg0VarM909case = cg0.m909case(ctry.m33295new().m419else());
                l40 l40Var = new l40(new b50(cg0VarM909case.m911goto(), j40.m3720if(cg0VarM909case.m911goto())), cg0VarM909case.m911goto(), cg0VarM909case.m912new(), cg0VarM909case.m913try());
                return new k50(l40Var.m1646do().m35421class(bArr), l40Var);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$case, reason: invalid class name */
    public static class Ccase extends AbstractC0411const {
        private Ccase() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) {
            e40 e40Var;
            rh2 rh2VarM6988new = rh2.m6988new(ctry.m33295new().m419else());
            if (rh2VarM6988new.m6992goto()) {
                org.bouncycastle.asn1.Ccatch ccatch = (org.bouncycastle.asn1.Ccatch) rh2VarM6988new.m6990case();
                th2 th2VarM33366this = org.bouncycastle.crypto.ec.Cdo.m33366this(ccatch);
                if (th2VarM33366this == null) {
                    th2VarM33366this = a50.m47new(ccatch);
                }
                e40Var = new b50(ccatch, th2VarM33366this.m7909try(), th2VarM33366this.m7906goto(), th2VarM33366this.m7903catch(), th2VarM33366this.m7908this(), th2VarM33366this.m7904class());
            } else if (rh2VarM6988new.m6991else()) {
                e40Var = (e40) obj;
            } else {
                th2 th2VarM7901break = th2.m7901break(rh2VarM6988new.m6990case());
                e40Var = new e40(th2VarM7901break.m7909try(), th2VarM7901break.m7906goto(), th2VarM7901break.m7903catch(), th2VarM7901break.m7908this(), th2VarM7901break.m7904class());
            }
            byte[] bArrM33057const = ctry.m33296this().m33057const();
            org.bouncycastle.asn1.Cclass jVar = new j(bArrM33057const);
            if (bArrM33057const[0] == 4 && bArrM33057const[1] == bArrM33057const.length - 2 && ((bArrM33057const[2] == 2 || bArrM33057const[2] == 3) && new yh2().m9870do(e40Var.m1646do()) >= bArrM33057const.length - 3)) {
                try {
                    jVar = (org.bouncycastle.asn1.Cclass) org.bouncycastle.asn1.Cfinal.m33015else(bArrM33057const);
                } catch (IOException unused) {
                    throw new IllegalArgumentException("error recovering public key");
                }
            }
            return new k50(new vh2(e40Var.m1646do(), jVar).m8868new(), e40Var);
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$catch, reason: invalid class name */
    public static class Ccatch extends AbstractC0411const {
        private Ccatch() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) {
            org.bouncycastle.asn1.Ccatch ccatchM420new = ctry.m33295new().m420new();
            try {
                byte[] bArrMo5490const = ((org.bouncycastle.asn1.Cclass) org.bouncycastle.asn1.Cfinal.m33015else(ctry.m33296this().m33057const())).mo5490const();
                int i = ccatchM420new.equals(RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512) ? 64 : 32;
                int i2 = i * 2;
                byte[] bArr = new byte[i2 + 1];
                bArr[0] = 4;
                for (int i3 = 1; i3 <= i; i3++) {
                    bArr[i3] = bArrMo5490const[i - i3];
                    bArr[i3 + i] = bArrMo5490const[i2 - i3];
                }
                cg0 cg0VarM909case = cg0.m909case(ctry.m33295new().m419else());
                l40 l40Var = new l40(new b50(cg0VarM909case.m911goto(), j40.m3720if(cg0VarM909case.m911goto())), cg0VarM909case.m911goto(), cg0VarM909case.m912new(), cg0VarM909case.m913try());
                return new k50(l40Var.m1646do().m35421class(bArr), l40Var);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$class, reason: invalid class name */
    public static class Cclass extends AbstractC0411const {
        private Cclass() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            gk1 gk1VarM2719new = gk1.m2719new(ctry.m33293break());
            return new ck1(false, gk1VarM2719new.m2721case(), gk1VarM2719new.m2722else());
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$const, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0411const {
        private AbstractC0411const() {
        }

        /* renamed from: do */
        public abstract a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException;
    }

    /* renamed from: org.bouncycastle.crypto.util.const$else, reason: invalid class name */
    public static class Celse extends AbstractC0411const {
        private Celse() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) {
            return new org.bouncycastle.crypto.params.Cfor(Cconst.m34473case(ctry, obj, 32), 0);
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$final, reason: invalid class name */
    public static class Cfinal extends AbstractC0411const {
        private Cfinal() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) {
            return new org.bouncycastle.crypto.params.Cgoto(Cconst.m34473case(ctry, obj, 32), 0);
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$for, reason: invalid class name */
    public static class Cfor extends AbstractC0411const {
        private Cfor() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            BigInteger bigIntegerM6667case = qu.m6665new(ctry.m33293break()).m6667case();
            z10 z10VarM10013try = z10.m10013try(ctry.m33295new().m419else());
            BigInteger bigIntegerM10018this = z10VarM10013try.m10018this();
            BigInteger bigIntegerM10017new = z10VarM10013try.m10017new();
            BigInteger bigIntegerM10014break = z10VarM10013try.m10014break();
            BigInteger bigIntegerM10016else = z10VarM10013try.m10016else() != null ? z10VarM10013try.m10016else() : null;
            fe2 fe2VarM10015catch = z10VarM10013try.m10015catch();
            return new ru(bigIntegerM6667case, new ou(bigIntegerM10018this, bigIntegerM10017new, bigIntegerM10014break, bigIntegerM10016else, fe2VarM10015catch != null ? new xu(fe2VarM10015catch.m2264else(), fe2VarM10015catch.m2263case().intValue()) : null));
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$goto, reason: invalid class name */
    public static class Cgoto extends AbstractC0411const {
        private Cgoto() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) {
            return new org.bouncycastle.crypto.params.Ctry(Cconst.m34473case(ctry, obj, 57), 0);
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$if, reason: invalid class name */
    public static class Cif extends AbstractC0411const {
        private Cif() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            nu nuVarM5370try = nu.m5370try(ctry.m33295new().m419else());
            org.bouncycastle.asn1.Cgoto cgoto = (org.bouncycastle.asn1.Cgoto) ctry.m33293break();
            BigInteger bigIntegerM5371case = nuVarM5370try.m5371case();
            return new ru(cgoto.m33044final(), new ou(nuVarM5370try.m5372else(), nuVarM5370try.m5373new(), null, bigIntegerM5371case == null ? 0 : bigIntegerM5371case.intValue()));
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$new, reason: invalid class name */
    public static class Cnew extends AbstractC0411const {
        private Cnew() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            hv hvVar;
            org.bouncycastle.asn1.Cgoto cgoto = (org.bouncycastle.asn1.Cgoto) ctry.m33293break();
            ASN1Encodable aSN1EncodableM419else = ctry.m33295new().m419else();
            if (aSN1EncodableM419else != null) {
                fv fvVarM2433try = fv.m2433try(aSN1EncodableM419else.toASN1Primitive());
                hvVar = new hv(fvVarM2433try.m2434else(), fvVarM2433try.m2435goto(), fvVarM2433try.m2436new());
            } else {
                hvVar = null;
            }
            return new kv(cgoto.m33044final(), hvVar);
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$super, reason: invalid class name */
    public static class Csuper extends AbstractC0411const {
        private Csuper() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) {
            return new org.bouncycastle.crypto.params.Cbreak(Cconst.m34473case(ctry, obj, 56), 0);
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$this, reason: invalid class name */
    public static class Cthis extends AbstractC0411const {
        private Cthis() {
            super();
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            j60 j60VarM3733try = j60.m3733try(ctry.m33295new().m419else());
            return new o60(((org.bouncycastle.asn1.Cgoto) ctry.m33293break()).m33044final(), new l60(j60VarM3733try.m3734case(), j60VarM3733try.m3735new()));
        }
    }

    /* renamed from: org.bouncycastle.crypto.util.const$try, reason: invalid class name */
    public static class Ctry extends AbstractC0411const {
        private Ctry() {
            super();
        }

        /* renamed from: if, reason: not valid java name */
        private void m34480if(byte[] bArr) {
            for (int i = 0; i < bArr.length / 2; i++) {
                byte b = bArr[i];
                bArr[i] = bArr[(bArr.length - 1) - i];
                bArr[(bArr.length - 1) - i] = b;
            }
        }

        @Override // org.bouncycastle.crypto.util.Cconst.AbstractC0411const
        /* renamed from: do */
        public a4 mo34479do(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
            e40 e40Var;
            try {
                byte[] bArrMo5490const = ((org.bouncycastle.asn1.Cclass) org.bouncycastle.asn1.Cfinal.m33015else(ctry.m33296this().m33057const())).mo5490const();
                org.bouncycastle.asn1.Ccatch ccatchM420new = ctry.m33295new().m420new();
                org.bouncycastle.asn1.Ccatch ccatch = UAObjectIdentifiers.dstu4145le;
                if (ccatchM420new.equals(ccatch)) {
                    m34480if(bArrMo5490const);
                }
                uv uvVarM8658else = uv.m8658else(ctry.m33295new().m419else());
                if (uvVarM8658else.m8663this()) {
                    e40Var = rv.m7144do(uvVarM8658else.m8661goto());
                } else {
                    pv pvVarM8660case = uvVarM8658else.m8660case();
                    byte[] bArrM6228try = pvVarM8660case.m6228try();
                    if (ctry.m33295new().m420new().equals(ccatch)) {
                        m34480if(bArrM6228try);
                    }
                    ov ovVarM6224case = pvVarM8660case.m6224case();
                    Cif.Ctry ctry2 = new Cif.Ctry(ovVarM6224case.m5782goto(), ovVarM6224case.m5783try(), ovVarM6224case.m5780case(), ovVarM6224case.m5781else(), pvVarM8660case.m6226new(), new BigInteger(1, bArrM6228try));
                    byte[] bArrM6225else = pvVarM8660case.m6225else();
                    if (ctry.m33295new().m420new().equals(ccatch)) {
                        m34480if(bArrM6225else);
                    }
                    e40Var = new e40(ctry2, vv.m8959do(ctry2, bArrM6225else), pvVarM8660case.m6227this());
                }
                return new k50(vv.m8959do(e40Var.m1646do(), bArrMo5490const), e40Var);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
    }

    static {
        HashMap map = new HashMap();
        f30874do = map;
        map.put(PKCSObjectIdentifiers.rsaEncryption, new Cclass());
        f30874do.put(PKCSObjectIdentifiers.id_RSASSA_PSS, new Cclass());
        f30874do.put(X509ObjectIdentifiers.id_ea_rsa, new Cclass());
        f30874do.put(X9ObjectIdentifiers.dhpublicnumber, new Cfor());
        f30874do.put(PKCSObjectIdentifiers.dhKeyAgreement, new Cif());
        f30874do.put(X9ObjectIdentifiers.id_dsa, new Cnew());
        f30874do.put(OIWObjectIdentifiers.dsaWithSHA1, new Cnew());
        f30874do.put(OIWObjectIdentifiers.elGamalAlgorithm, new Cthis());
        f30874do.put(X9ObjectIdentifiers.id_ecPublicKey, new Ccase());
        f30874do.put(CryptoProObjectIdentifiers.gostR3410_2001, new Cbreak());
        f30874do.put(RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256, new Ccatch());
        f30874do.put(RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512, new Ccatch());
        f30874do.put(UAObjectIdentifiers.dstu4145be, new Ctry());
        f30874do.put(UAObjectIdentifiers.dstu4145le, new Ctry());
        f30874do.put(EdECObjectIdentifiers.id_X25519, new Cfinal());
        f30874do.put(EdECObjectIdentifiers.id_X448, new Csuper());
        f30874do.put(EdECObjectIdentifiers.id_Ed25519, new Celse());
        f30874do.put(EdECObjectIdentifiers.id_Ed448, new Cgoto());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static byte[] m34473case(org.bouncycastle.asn1.x509.Ctry ctry, Object obj, int i) {
        byte[] bArrM33059super = ctry.m33296this().m33059super();
        if (i == bArrM33059super.length) {
            return bArrM33059super;
        }
        throw new RuntimeException("public key encoding has incorrect length");
    }

    /* renamed from: for, reason: not valid java name */
    public static a4 m34475for(org.bouncycastle.asn1.x509.Ctry ctry) throws IOException {
        return m34477new(ctry, null);
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m34476if(InputStream inputStream) throws IOException {
        return m34475for(org.bouncycastle.asn1.x509.Ctry.m33291case(new org.bouncycastle.asn1.Celse(inputStream).m33002break()));
    }

    /* renamed from: new, reason: not valid java name */
    public static a4 m34477new(org.bouncycastle.asn1.x509.Ctry ctry, Object obj) throws IOException {
        b1 b1VarM33295new = ctry.m33295new();
        AbstractC0411const abstractC0411const = (AbstractC0411const) f30874do.get(b1VarM33295new.m420new());
        if (abstractC0411const != null) {
            return abstractC0411const.mo34479do(ctry, obj);
        }
        throw new IOException("algorithm identifier in public key not recognised: " + b1VarM33295new.m420new());
    }

    /* renamed from: try, reason: not valid java name */
    public static a4 m34478try(byte[] bArr) throws IOException {
        return m34475for(org.bouncycastle.asn1.x509.Ctry.m33291case(org.bouncycastle.asn1.Cfinal.m33015else(bArr)));
    }
}
