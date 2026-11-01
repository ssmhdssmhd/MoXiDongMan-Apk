package android.support.v4;

import java.math.BigInteger;
import java.util.Random;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public abstract class vv {
    /* renamed from: do, reason: not valid java name */
    public static Cnew m8959do(Cif cif, byte[] bArr) {
        Cfor cforMo35333super = cif.mo35333super(BigInteger.valueOf(bArr[bArr.length - 1] & 1));
        Cfor cforMo35333super2 = cif.mo35333super(new BigInteger(1, bArr));
        if (!m8962new(cforMo35333super2).equals(cif.m35443throw())) {
            cforMo35333super2 = cforMo35333super2.mo335if();
        }
        Cfor cforMo330catch = null;
        if (cforMo35333super2.mo328break()) {
            cforMo330catch = cif.m35432import().mo340super();
        } else {
            Cfor cforM8960for = m8960for(cif, cforMo35333super2.mo342throw().mo334goto().mo330catch(cif.m35432import()).mo331do(cif.m35443throw()).mo331do(cforMo35333super2));
            if (cforM8960for != null) {
                if (!m8962new(cforM8960for).equals(cforMo35333super)) {
                    cforM8960for = cforM8960for.mo335if();
                }
                cforMo330catch = cforMo35333super2.mo330catch(cforM8960for);
            }
        }
        if (cforMo330catch != null) {
            return cif.m35433interface(cforMo35333super2.mo339static(), cforMo330catch.mo339static());
        }
        throw new IllegalArgumentException("Invalid point compression");
    }

    /* renamed from: for, reason: not valid java name */
    private static Cfor m8960for(Cif cif, Cfor cfor) {
        Cfor cforMo331do;
        if (cfor.mo328break()) {
            return cfor;
        }
        Cfor cforMo35333super = cif.mo35333super(ECConstants.ZERO);
        Random random = new Random();
        int iMo332else = cfor.mo332else();
        do {
            Cfor cforMo35333super2 = cif.mo35333super(new BigInteger(iMo332else, random));
            Cfor cforMo331do2 = cfor;
            cforMo331do = cforMo35333super;
            for (int i = 1; i <= iMo332else - 1; i++) {
                Cfor cforMo342throw = cforMo331do2.mo342throw();
                cforMo331do = cforMo331do.mo342throw().mo331do(cforMo342throw.mo330catch(cforMo35333super2));
                cforMo331do2 = cforMo342throw.mo331do(cfor);
            }
            if (!cforMo331do2.mo328break()) {
                return null;
            }
        } while (cforMo331do.mo342throw().mo331do(cforMo331do).mo328break());
        return cforMo331do;
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m8961if(Cnew cnew) {
        Cnew cnewM35454abstract = cnew.m35454abstract();
        Cfor cforM35456case = cnewM35454abstract.m35456case();
        byte[] bArrM35379try = cforM35456case.m35379try();
        if (!cforM35456case.mo328break()) {
            if (m8962new(cnewM35454abstract.m35462else().mo336new(cforM35456case)).mo341this()) {
                int length = bArrM35379try.length - 1;
                bArrM35379try[length] = (byte) (bArrM35379try[length] | 1);
            } else {
                int length2 = bArrM35379try.length - 1;
                bArrM35379try[length2] = (byte) (bArrM35379try[length2] & 254);
            }
        }
        return bArrM35379try;
    }

    /* renamed from: new, reason: not valid java name */
    private static Cfor m8962new(Cfor cfor) {
        Cfor cforMo331do = cfor;
        for (int i = 1; i < cfor.mo332else(); i++) {
            cforMo331do = cforMo331do.mo342throw().mo331do(cfor);
        }
        return cforMo331do;
    }
}
