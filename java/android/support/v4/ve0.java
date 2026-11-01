package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECPointMap;
import org.bouncycastle.math.ec.endo.GLVEndomorphism;

/* loaded from: classes3.dex */
public class ve0 extends Cvolatile {

    /* renamed from: do, reason: not valid java name */
    public final Cif f7162do;

    /* renamed from: if, reason: not valid java name */
    public final GLVEndomorphism f7163if;

    public ve0(Cif cif, GLVEndomorphism gLVEndomorphism) {
        if (cif == null || cif.m35426extends() == null) {
            throw new IllegalArgumentException("Need curve with known group order");
        }
        this.f7162do = cif;
        this.f7163if = gLVEndomorphism;
    }

    @Override // android.support.v4.Cvolatile
    /* renamed from: if */
    public Cnew mo972if(Cnew cnew, BigInteger bigInteger) {
        if (!this.f7162do.m35427final(cnew.m35477this())) {
            throw new IllegalStateException();
        }
        BigInteger[] bigIntegerArrDecomposeScalar = this.f7163if.decomposeScalar(bigInteger.mod(cnew.m35477this().m35426extends()));
        BigInteger bigInteger2 = bigIntegerArrDecomposeScalar[0];
        BigInteger bigInteger3 = bigIntegerArrDecomposeScalar[1];
        ECPointMap pointMap = this.f7163if.getPointMap();
        return this.f7163if.hasEfficientPointMap() ? Cdo.m35373try(cnew, bigInteger2, pointMap, bigInteger3) : Cdo.m35366new(cnew, bigInteger2, pointMap.map(cnew), bigInteger3);
    }
}
