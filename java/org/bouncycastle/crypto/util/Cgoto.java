package org.bouncycastle.crypto.util;

import android.support.v4.Cimport;
import android.support.v4.a4;
import android.support.v4.a50;
import android.support.v4.b50;
import android.support.v4.dk1;
import android.support.v4.ek1;
import android.support.v4.g50;
import android.support.v4.h50;
import android.support.v4.hv;
import android.support.v4.jv;
import android.support.v4.q3;
import android.support.v4.th2;
import java.io.IOException;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;
import org.bouncycastle.crypto.params.Cif;
import org.bouncycastle.util.Cdo;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.crypto.util.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {

    /* renamed from: do, reason: not valid java name */
    public static final byte[] f30882do = Cfor.m36358goto("openssh-key-v1\u0000");

    private Cgoto() {
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m34491do(Csuper csuper) {
        for (int i = 0; i < csuper.size(); i++) {
            if (!(csuper.mo33075final(i) instanceof org.bouncycastle.asn1.Cgoto)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00f9  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static a4 m34492for(byte[] bArr) {
        a4 cif;
        if (bArr[0] == 48) {
            Csuper csuperM33129catch = Csuper.m33129catch(bArr);
            if (csuperM33129catch.size() == 6) {
                cif = (m34491do(csuperM33129catch) && ((org.bouncycastle.asn1.Cgoto) csuperM33129catch.mo33075final(0)).m33043const().equals(Cdo.f32644do)) ? new jv(((org.bouncycastle.asn1.Cgoto) csuperM33129catch.mo33075final(5)).m33043const(), new hv(((org.bouncycastle.asn1.Cgoto) csuperM33129catch.mo33075final(1)).m33043const(), ((org.bouncycastle.asn1.Cgoto) csuperM33129catch.mo33075final(2)).m33043const(), ((org.bouncycastle.asn1.Cgoto) csuperM33129catch.mo33075final(3)).m33043const())) : null;
            } else if (csuperM33129catch.size() == 9) {
                if (m34491do(csuperM33129catch) && ((org.bouncycastle.asn1.Cgoto) csuperM33129catch.mo33075final(0)).m33043const().equals(Cdo.f32644do)) {
                    ek1 ek1VarM1930else = ek1.m1930else(csuperM33129catch);
                    cif = new dk1(ek1VarM1930else.m1939this(), ek1VarM1930else.m1936const(), ek1VarM1930else.m1935class(), ek1VarM1930else.m1932break(), ek1VarM1930else.m1934catch(), ek1VarM1930else.m1940try(), ek1VarM1930else.m1933case(), ek1VarM1930else.m1938new());
                }
            } else if (csuperM33129catch.size() == 4 && (csuperM33129catch.mo33075final(3) instanceof u) && (csuperM33129catch.mo33075final(2) instanceof u)) {
                g50 g50VarM2577new = g50.m2577new(csuperM33129catch);
                Ccatch ccatch = (Ccatch) g50VarM2577new.m2578else();
                th2 th2VarM47new = a50.m47new(ccatch);
                cif = new h50(g50VarM2577new.m2580try(), new b50(ccatch, th2VarM47new.m7909try(), th2VarM47new.m7906goto(), th2VarM47new.m7903catch(), th2VarM47new.m7908this(), th2VarM47new.m7904class()));
            }
        } else {
            Cfinal cfinal = new Cfinal(f30882do, bArr);
            if (!"none".equals(Cfor.m36359if(cfinal.m34488try()))) {
                throw new IllegalStateException("encrypted keys not supported");
            }
            cfinal.m34488try();
            cfinal.m34488try();
            long jM34483case = cfinal.m34483case();
            for (int i = 0; i != jM34483case; i++) {
                Cthis.m34507for(cfinal.m34488try());
            }
            Cfinal cfinal2 = new Cfinal(cfinal.m34487new());
            if (cfinal2.m34483case() != cfinal2.m34483case()) {
                throw new IllegalStateException("private key check values are not the same");
            }
            String strM36359if = Cfor.m36359if(cfinal2.m34488try());
            if (!"ssh-ed25519".equals(strM36359if)) {
                throw new IllegalStateException("can not parse private key of type " + strM36359if);
            }
            cfinal2.m34488try();
            cif = new Cif(cfinal2.m34488try(), 0);
        }
        if (cif != null) {
            return cif;
        }
        throw new IllegalArgumentException("unable to parse key");
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m34493if(a4 a4Var) throws IOException {
        if (a4Var == null) {
            throw new IllegalArgumentException("param is null");
        }
        if (!(a4Var instanceof dk1) && !(a4Var instanceof h50)) {
            if (a4Var instanceof jv) {
                Cimport cimport = new Cimport();
                cimport.m3516do(new org.bouncycastle.asn1.Cgoto(0L));
                jv jvVar = (jv) a4Var;
                cimport.m3516do(new org.bouncycastle.asn1.Cgoto(jvVar.m2025if().m3129if()));
                cimport.m3516do(new org.bouncycastle.asn1.Cgoto(jvVar.m2025if().m3128for()));
                cimport.m3516do(new org.bouncycastle.asn1.Cgoto(jvVar.m2025if().m3127do()));
                cimport.m3516do(new org.bouncycastle.asn1.Cgoto(jvVar.m2025if().m3127do().modPow(jvVar.m4110for(), jvVar.m2025if().m3129if())));
                cimport.m3516do(new org.bouncycastle.asn1.Cgoto(jvVar.m4110for()));
                try {
                    return new n(cimport).getEncoded();
                } catch (Exception e) {
                    throw new IllegalStateException("unable to encode DSAPrivateKeyParameters " + e.getMessage());
                }
            }
            if (!(a4Var instanceof Cif)) {
                throw new IllegalArgumentException("unable to convert " + a4Var.getClass().getName() + " to openssh private key");
            }
            Csuper csuper = new Csuper();
            csuper.m34504new(f30882do);
            csuper.m34505try("none");
            csuper.m34505try("none");
            csuper.m34502for(0L);
            csuper.m34502for(1L);
            Cif cif = (Cif) a4Var;
            csuper.m34503if(Cthis.m34506do(cif.m33849for()));
            Csuper csuper2 = new Csuper();
            csuper2.m34502for(16711935L);
            csuper2.m34502for(16711935L);
            csuper2.m34505try("ssh-ed25519");
            byte[] bArrM33845for = cif.m33849for().m33845for();
            csuper2.m34503if(bArrM33845for);
            csuper2.m34503if(q3.m6367default(cif.m33851new(), bArrM33845for));
            csuper2.m34502for(0L);
            csuper.m34503if(csuper2.m34501do());
            return csuper.m34501do();
        }
        return Cclass.m34470do(a4Var).m33102catch().toASN1Primitive().getEncoded();
    }
}
