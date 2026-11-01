package org.bouncycastle.pqc.crypto.util;

import android.support.v4.a4;
import android.support.v4.b1;
import android.support.v4.br1;
import android.support.v4.gi2;
import android.support.v4.ji2;
import android.support.v4.mi2;
import android.support.v4.pi2;
import android.support.v4.qi1;
import android.support.v4.s11;
import android.support.v4.yq1;
import java.io.IOException;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.xmss.Cprivate;
import org.bouncycastle.pqc.crypto.xmss.Cstatic;

/* renamed from: org.bouncycastle.pqc.crypto.util.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {
    private Cnew() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Ctry m35816do(a4 a4Var) throws IOException {
        if (a4Var instanceof qi1) {
            qi1 qi1Var = (qi1) a4Var;
            return new Ctry(Ctry.m35820if(qi1Var.m6603for()), qi1Var.m6604if());
        }
        if (a4Var instanceof br1) {
            br1 br1Var = (br1) a4Var;
            return new Ctry(new b1(PQCObjectIdentifiers.sphincs256, new yq1(Ctry.m35821new(br1Var.m10264if()))), br1Var.m616for());
        }
        if (a4Var instanceof s11) {
            return new Ctry(new b1(PQCObjectIdentifiers.newHope), ((s11) a4Var).m7234if());
        }
        if (a4Var instanceof Cprivate) {
            Cprivate cprivate = (Cprivate) a4Var;
            return new Ctry(new b1(PQCObjectIdentifiers.xmss, new gi2(cprivate.m35940for().m35884new(), Ctry.m35817case(cprivate.m2303if()))), new pi2(cprivate.m35941new(), cprivate.m35942try()));
        }
        if (!(a4Var instanceof Cstatic)) {
            throw new IOException("key parameters not recognized");
        }
        Cstatic cstatic = (Cstatic) a4Var;
        return new Ctry(new b1(PQCObjectIdentifiers.xmss_mt, new ji2(cstatic.m35986for().m35955for(), cstatic.m35986for().m35958new(), Ctry.m35817case(cstatic.m3470if()))), new mi2(cstatic.m35987new(), cstatic.m35988try()));
    }
}
