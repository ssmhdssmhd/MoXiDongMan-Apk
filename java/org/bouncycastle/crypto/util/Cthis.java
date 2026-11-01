package org.bouncycastle.crypto.util;

import android.support.v4.a4;
import android.support.v4.a50;
import android.support.v4.ck1;
import android.support.v4.e40;
import android.support.v4.hv;
import android.support.v4.k50;
import android.support.v4.kv;
import android.support.v4.th2;
import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.crypto.params.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.custom.sec.Cbreak;

/* renamed from: org.bouncycastle.crypto.util.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis {

    /* renamed from: do, reason: not valid java name */
    private static final String f30894do = "ssh-rsa";

    /* renamed from: for, reason: not valid java name */
    private static final String f30895for = "ssh-ed25519";

    /* renamed from: if, reason: not valid java name */
    private static final String f30896if = "ecdsa";

    /* renamed from: new, reason: not valid java name */
    private static final String f30897new = "ssh-dss";

    private Cthis() {
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m34506do(a4 a4Var) throws IOException {
        if (a4Var == null) {
            throw new IllegalArgumentException("cipherParameters was null.");
        }
        if (a4Var instanceof ck1) {
            if (a4Var.m33do()) {
                throw new IllegalArgumentException("RSAKeyParamaters was for encryption");
            }
            ck1 ck1Var = (ck1) a4Var;
            BigInteger bigIntegerM955if = ck1Var.m955if();
            BigInteger bigIntegerM954for = ck1Var.m954for();
            Csuper csuper = new Csuper();
            csuper.m34505try(f30894do);
            csuper.m34503if(bigIntegerM955if.toByteArray());
            csuper.m34503if(bigIntegerM954for.toByteArray());
            return csuper.m34501do();
        }
        if (a4Var instanceof k50) {
            Csuper csuper2 = new Csuper();
            k50 k50Var = (k50) a4Var;
            if (!(k50Var.m7258if().m1646do() instanceof Cbreak)) {
                throw new IllegalArgumentException("unable to derive ssh curve name for " + k50Var.m7258if().m1646do().getClass().getName());
            }
            csuper2.m34505try("ecdsa-sha2-nistp256");
            csuper2.m34505try("nistp256");
            csuper2.m34503if(k50Var.m4252for().m35459const(false));
            return csuper2.m34501do();
        }
        if (a4Var instanceof kv) {
            Csuper csuper3 = new Csuper();
            csuper3.m34505try(f30897new);
            kv kvVar = (kv) a4Var;
            csuper3.m34503if(kvVar.m2025if().m3129if().toByteArray());
            csuper3.m34503if(kvVar.m2025if().m3128for().toByteArray());
            csuper3.m34503if(kvVar.m2025if().m3127do().toByteArray());
            csuper3.m34503if(kvVar.m4514for().toByteArray());
            return csuper3.m34501do();
        }
        if (a4Var instanceof Cfor) {
            Csuper csuper4 = new Csuper();
            csuper4.m34505try(f30895for);
            csuper4.m34503if(((Cfor) a4Var).m33845for());
            return csuper4.m34501do();
        }
        throw new IllegalArgumentException("unable to convert " + a4Var.getClass().getName() + " to private key");
    }

    /* renamed from: for, reason: not valid java name */
    public static a4 m34507for(byte[] bArr) {
        return m34508if(new Cfinal(bArr));
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m34508if(Cfinal cfinal) {
        a4 cfor;
        String strM36359if = org.bouncycastle.util.Cfor.m36359if(cfinal.m34488try());
        if (f30894do.equals(strM36359if)) {
            cfor = new ck1(false, cfinal.m34485for(), cfinal.m34485for());
        } else if (f30897new.equals(strM36359if)) {
            cfor = new kv(cfinal.m34485for(), new hv(cfinal.m34485for(), cfinal.m34485for(), cfinal.m34485for()));
        } else if (strM36359if.startsWith(f30896if)) {
            String strM36359if2 = org.bouncycastle.util.Cfor.m36359if(cfinal.m34488try());
            if (strM36359if2.startsWith("nist")) {
                String strSubstring = strM36359if2.substring(4);
                strM36359if2 = strSubstring.substring(0, 1) + "-" + strSubstring.substring(1);
            }
            th2 th2VarM45for = a50.m45for(strM36359if2);
            if (th2VarM45for == null) {
                throw new IllegalStateException("unable to find curve for " + strM36359if + " using curve name " + strM36359if2);
            }
            Cif cifM7909try = th2VarM45for.m7909try();
            cfor = new k50(cifM7909try.m35421class(cfinal.m34488try()), new e40(cifM7909try, th2VarM45for.m7906goto(), th2VarM45for.m7903catch(), th2VarM45for.m7908this(), th2VarM45for.m7904class()));
        } else {
            cfor = strM36359if.startsWith(f30895for) ? new Cfor(cfinal.m34488try(), 0) : null;
        }
        if (cfor == null) {
            throw new IllegalArgumentException("unable to parse key");
        }
        if (cfinal.m34486if()) {
            throw new IllegalArgumentException("uncoded key has trailing data");
        }
        return cfor;
    }
}
