package android.support.v4;

import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.tls.TlsDHVerifier;

/* loaded from: classes3.dex */
public class wy implements TlsDHVerifier {

    /* renamed from: for, reason: not valid java name */
    public static final int f7716for = 2048;

    /* renamed from: new, reason: not valid java name */
    public static final Vector f7717new = new Vector();

    /* renamed from: do, reason: not valid java name */
    public Vector f7718do;

    /* renamed from: if, reason: not valid java name */
    public int f7719if;

    static {
        m9301do(su.d);
        m9301do(su.f);
        m9301do(su.h);
        m9301do(su.j);
        m9301do(su.l);
        m9301do(su.f6269break);
        m9301do(su.f6273const);
        m9301do(su.f6301throw);
        m9301do(su.f6288native);
        m9301do(su.f6295static);
        m9301do(su.f6275default);
    }

    public wy() {
        this(2048);
    }

    public wy(int i) {
        this(f7717new, i);
    }

    public wy(Vector vector, int i) {
        this.f7718do = vector;
        this.f7719if = i;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m9301do(ou ouVar) {
        f7717new.addElement(ouVar);
    }

    @Override // org.bouncycastle.crypto.tls.TlsDHVerifier
    public boolean accept(ou ouVar) {
        return m9306try(ouVar) && m9305new(ouVar);
    }

    /* renamed from: case, reason: not valid java name */
    public int m9302case() {
        return this.f7719if;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m9303for(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger == bigInteger2 || bigInteger.equals(bigInteger2);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m9304if(ou ouVar, ou ouVar2) {
        return ouVar == ouVar2 || (m9303for(ouVar.m5757case(), ouVar2.m5757case()) && m9303for(ouVar.m5761if(), ouVar2.m5761if()));
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m9305new(ou ouVar) {
        for (int i = 0; i < this.f7718do.size(); i++) {
            if (m9304if(ouVar, (ou) this.f7718do.elementAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m9306try(ou ouVar) {
        return ouVar.m5757case().bitLength() >= m9302case();
    }
}
