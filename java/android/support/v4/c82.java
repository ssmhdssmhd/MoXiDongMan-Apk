package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.TreeSet;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.crypto.ec.Cdo;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;

/* loaded from: classes3.dex */
public class c82 {

    /* renamed from: do, reason: not valid java name */
    private static final BigInteger f636do = BigInteger.valueOf(1);

    /* renamed from: if, reason: not valid java name */
    private static final SecureRandom f637if = new SecureRandom();

    /* renamed from: do, reason: not valid java name */
    private static int m792do(Cfor cfor) {
        int iMo332else = cfor.mo332else();
        Cfor cforMo342throw = cfor;
        for (int i = 1; i < iMo332else; i++) {
            cforMo342throw = cforMo342throw.mo342throw();
            cfor = cfor.mo331do(cforMo342throw);
        }
        BigInteger bigIntegerMo339static = cfor.mo339static();
        if (bigIntegerMo339static.bitLength() <= 1) {
            return bigIntegerMo339static.intValue();
        }
        throw new IllegalStateException();
    }

    /* renamed from: for, reason: not valid java name */
    public static void m793for(th2 th2Var) {
        Cif cifM7909try = th2Var.m7909try();
        int iMo35334switch = cifM7909try.mo35334switch();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iMo35334switch; i++) {
            if (m792do(cifM7909try.mo35333super(f636do.shiftLeft(i))) != 0) {
                arrayList.add(hn0.m3072for(i));
                System.out.print(Cclass.f28652do + i);
            }
        }
        System.out.println();
        for (int i2 = 0; i2 < 1000; i2++) {
            BigInteger bigInteger = new BigInteger(iMo35334switch, f637if);
            int iM792do = m792do(cifM7909try.mo35333super(bigInteger));
            int i3 = 0;
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                if (bigInteger.testBit(((Integer) arrayList.get(i4)).intValue())) {
                    i3 ^= 1;
                }
            }
            if (iM792do != i3) {
                throw new IllegalStateException("Optimized-trace sanity check failed");
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static ArrayList m794if(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m795new(String[] strArr) {
        TreeSet<String> treeSet = new TreeSet(m794if(a50.m42case()));
        treeSet.addAll(m794if(Cdo.m33358catch()));
        for (String str : treeSet) {
            th2 th2VarM33363goto = Cdo.m33363goto(str);
            if (th2VarM33363goto == null) {
                th2VarM33363goto = a50.m45for(str);
            }
            if (th2VarM33363goto != null && org.bouncycastle.math.ec.Cdo.m35356class(th2VarM33363goto.m7909try())) {
                System.out.print(str + ":");
                m793for(th2VarM33363goto);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m796try(th2 th2Var) {
        if (!org.bouncycastle.math.ec.Cdo.m35356class(th2Var.m7909try())) {
            throw new IllegalArgumentException("Trace only defined over characteristic-2 fields");
        }
        m793for(th2Var);
    }
}
