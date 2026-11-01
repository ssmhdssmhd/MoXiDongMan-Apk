package android.support.v4;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.TreeSet;
import org.bouncycastle.crypto.ec.Cdo;
import org.bouncycastle.math.ec.Cfor;

/* loaded from: classes3.dex */
public class da0 {
    /* renamed from: do, reason: not valid java name */
    private static ArrayList m1176do(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1177for(String[] strArr) {
        TreeSet<String> treeSet = new TreeSet(m1176do(a50.m42case()));
        treeSet.addAll(m1176do(Cdo.m33358catch()));
        for (String str : treeSet) {
            th2 th2VarM33363goto = Cdo.m33363goto(str);
            if (th2VarM33363goto == null) {
                th2VarM33363goto = a50.m45for(str);
            }
            if (th2VarM33363goto != null && org.bouncycastle.math.ec.Cdo.m35356class(th2VarM33363goto.m7909try())) {
                System.out.print(str + ":");
                m1178if(th2VarM33363goto);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static void m1178if(th2 th2Var) {
        Cfor cforMo35333super = th2Var.m7909try().mo35333super(BigInteger.valueOf(2L));
        Cfor cforMo340super = cforMo35333super.mo340super();
        System.out.println(cforMo340super.mo339static().toString(16).toUpperCase());
        if (!cforMo340super.mo342throw().equals(cforMo35333super)) {
            throw new IllegalStateException("Optimized-sqrt sanity check failed");
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m1179new(th2 th2Var) {
        if (!org.bouncycastle.math.ec.Cdo.m35356class(th2Var.m7909try())) {
            throw new IllegalArgumentException("Sqrt optimization only defined over characteristic-2 fields");
        }
        m1178if(th2Var);
    }
}
