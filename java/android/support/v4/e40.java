package android.support.v4;

import java.math.BigInteger;
import java.util.Objects;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public class e40 implements ECConstants {

    /* renamed from: case, reason: not valid java name */
    private BigInteger f1247case;

    /* renamed from: do, reason: not valid java name */
    private Cif f1248do;

    /* renamed from: for, reason: not valid java name */
    private Cnew f1249for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f1250if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f1251new;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f1252try;

    public e40(Cif cif, Cnew cnew, BigInteger bigInteger) {
        this(cif, cnew, bigInteger, ECConstants.ONE, null);
    }

    public e40(Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2) {
        this(cif, cnew, bigInteger, bigInteger2, null);
    }

    public e40(Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f1247case = null;
        Objects.requireNonNull(cif, "curve");
        Objects.requireNonNull(bigInteger, "n");
        this.f1248do = cif;
        this.f1249for = m1644else(cif, cnew);
        this.f1251new = bigInteger;
        this.f1252try = bigInteger2;
        this.f1250if = q3.m6371final(bArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static Cnew m1644else(Cif cif, Cnew cnew) {
        if (cnew == null) {
            throw new IllegalArgumentException("Point has null value");
        }
        Cnew cnewM35454abstract = Cdo.m35355catch(cif, cnew).m35454abstract();
        if (cnewM35454abstract.m35479throws()) {
            throw new IllegalArgumentException("Point at infinity");
        }
        if (cnewM35454abstract.m35463extends()) {
            return cnewM35454abstract;
        }
        throw new IllegalArgumentException("Point not on curve");
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m1645case() {
        return q3.m6371final(this.f1250if);
    }

    /* renamed from: do, reason: not valid java name */
    public Cif m1646do() {
        return this.f1248do;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e40)) {
            return false;
        }
        e40 e40Var = (e40) obj;
        return this.f1248do.m35427final(e40Var.f1248do) && this.f1249for.m35481try(e40Var.f1249for) && this.f1251new.equals(e40Var.f1251new) && this.f1252try.equals(e40Var.f1252try);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m1647for() {
        return this.f1252try;
    }

    public int hashCode() {
        return (((((this.f1248do.hashCode() * 37) ^ this.f1249for.hashCode()) * 37) ^ this.f1251new.hashCode()) * 37) ^ this.f1252try.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m1648if() {
        return this.f1249for;
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized BigInteger m1649new() {
        if (this.f1247case == null) {
            this.f1247case = this.f1252try.modInverse(this.f1251new);
        }
        return this.f1247case;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m1650try() {
        return this.f1251new;
    }
}
