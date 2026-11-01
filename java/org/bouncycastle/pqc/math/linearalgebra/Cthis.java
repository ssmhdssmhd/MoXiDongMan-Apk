package org.bouncycastle.pqc.math.linearalgebra;

import android.support.v4.oa1;
import java.math.BigInteger;
import java.util.Random;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends Cnew {

    /* renamed from: new, reason: not valid java name */
    private static final int[] f32637new = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, oa1.f4492abstract, 1073741824, Integer.MIN_VALUE, 0};

    /* renamed from: for, reason: not valid java name */
    private Cfor f32638for;

    public Cthis(Cbreak cbreak, Random random) {
        this.f32635do = cbreak;
        this.f32636if = cbreak.m36306new();
        this.f32638for = new Cfor(this.f32636if);
        m36290switch(random);
    }

    public Cthis(Cbreak cbreak, Cfor cfor) {
        this.f32635do = cbreak;
        this.f32636if = cbreak.m36306new();
        Cfor cfor2 = new Cfor(cfor);
        this.f32638for = cfor2;
        cfor2.m36241this(this.f32636if);
    }

    public Cthis(Cbreak cbreak, byte[] bArr) {
        this.f32635do = cbreak;
        this.f32636if = cbreak.m36306new();
        Cfor cfor = new Cfor(this.f32636if, bArr);
        this.f32638for = cfor;
        cfor.m36241this(this.f32636if);
    }

    public Cthis(Cbreak cbreak, int[] iArr) {
        this.f32635do = cbreak;
        this.f32636if = cbreak.m36306new();
        Cfor cfor = new Cfor(this.f32636if, iArr);
        this.f32638for = cfor;
        cfor.m36241this(cbreak.f32641if);
    }

    public Cthis(Cthis cthis) {
        this.f32635do = cthis.f32635do;
        this.f32636if = cthis.f32636if;
        this.f32638for = new Cfor(cthis.f32638for);
    }

    /* renamed from: default, reason: not valid java name */
    private void m36286default() throws RuntimeException {
        if (this.f32638for.m36220class() <= this.f32636if) {
            int iM36220class = this.f32638for.m36220class();
            int i = this.f32636if;
            if (iM36220class < i) {
                this.f32638for.m36241this(i);
                return;
            }
            return;
        }
        if (((Cbreak) this.f32635do).m36126final()) {
            try {
                int iM36123class = ((Cbreak) this.f32635do).m36123class();
                if (this.f32636if - iM36123class > 32) {
                    int iM36220class2 = this.f32638for.m36220class();
                    int i2 = this.f32636if;
                    if (iM36220class2 <= (i2 << 1)) {
                        this.f32638for.m36238strictfp(i2, iM36123class);
                        return;
                    }
                }
                m36287extends(iM36123class);
                return;
            } catch (RuntimeException unused) {
                throw new RuntimeException("GF2nPolynomialElement.reduce: the field polynomial is not a trinomial");
            }
        }
        if (!((Cbreak) this.f32635do).m36124const()) {
            Cfor cforM36245volatile = this.f32638for.m36245volatile(this.f32635do.m36307try());
            this.f32638for = cforM36245volatile;
            cforM36245volatile.m36241this(this.f32636if);
            return;
        }
        try {
            int[] iArrM36120break = ((Cbreak) this.f32635do).m36120break();
            if (this.f32636if - iArrM36120break[2] > 32) {
                int iM36220class3 = this.f32638for.m36220class();
                int i3 = this.f32636if;
                if (iM36220class3 <= (i3 << 1)) {
                    this.f32638for.m36222continue(i3, iArrM36120break);
                    return;
                }
            }
            m36292throws(iArrM36120break);
        } catch (RuntimeException unused2) {
            throw new RuntimeException("GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial");
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private void m36287extends(int i) throws RuntimeException {
        int i2 = this.f32636if - i;
        int iM36220class = this.f32638for.m36220class();
        while (true) {
            iM36220class--;
            if (iM36220class < this.f32636if) {
                this.f32638for.m36216abstract();
                this.f32638for.m36241this(this.f32636if);
                return;
            } else if (this.f32638for.h(iM36220class)) {
                this.f32638for.p(iM36220class);
                this.f32638for.p(iM36220class - i2);
                this.f32638for.p(iM36220class - this.f32636if);
            }
        }
    }

    /* renamed from: import, reason: not valid java name */
    private Cthis m36288import() throws RuntimeException {
        if ((this.f32636if & 1) == 0) {
            throw new RuntimeException();
        }
        Cthis cthis = new Cthis(this);
        for (int i = 1; i <= ((this.f32636if - 1) >> 1); i++) {
            cthis.mo36138catch();
            cthis.mo36138catch();
            cthis.addToThis(this);
        }
        return cthis;
    }

    /* renamed from: super, reason: not valid java name */
    public static Cthis m36289super(Cbreak cbreak) {
        return new Cthis(cbreak, new Cfor(cbreak.m36306new(), new int[]{1}));
    }

    /* renamed from: switch, reason: not valid java name */
    private void m36290switch(Random random) {
        this.f32638for.m36241this(this.f32636if);
        this.f32638for.m36236private(random);
    }

    /* renamed from: throw, reason: not valid java name */
    public static Cthis m36291throw(Cbreak cbreak) {
        return new Cthis(cbreak, new Cfor(cbreak.m36306new()));
    }

    /* renamed from: throws, reason: not valid java name */
    private void m36292throws(int[] iArr) throws RuntimeException {
        int i = this.f32636if;
        int i2 = i - iArr[2];
        int i3 = i - iArr[1];
        int i4 = i - iArr[0];
        for (int iM36220class = this.f32638for.m36220class() - 1; iM36220class >= this.f32636if; iM36220class--) {
            if (this.f32638for.h(iM36220class)) {
                this.f32638for.p(iM36220class);
                this.f32638for.p(iM36220class - i2);
                this.f32638for.p(iM36220class - i3);
                this.f32638for.p(iM36220class - i4);
                this.f32638for.p(iM36220class - this.f32636if);
            }
        }
        this.f32638for.m36216abstract();
        this.f32638for.m36241this(this.f32636if);
    }

    /* renamed from: while, reason: not valid java name */
    private Cfor m36293while() {
        return new Cfor(this.f32638for);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m36294abstract() throws RuntimeException {
        this.f32638for.d();
        m36286default();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement add(GFElement gFElement) throws RuntimeException {
        Cthis cthis = new Cthis(this);
        cthis.addToThis(gFElement);
        return cthis;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public void addToThis(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof Cthis)) {
            throw new RuntimeException();
        }
        Cthis cthis = (Cthis) gFElement;
        if (!this.f32635do.equals(cthis.f32635do)) {
            throw new RuntimeException();
        }
        this.f32638for.m36230if(cthis.f32638for);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: break */
    public void mo36136break() throws RuntimeException {
        this.f32638for.m36241this((this.f32636if << 1) + 32);
        this.f32638for.m36216abstract();
        for (int i = 0; i < this.f32635do.m36306new() - 1; i++) {
            mo36138catch();
        }
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: case */
    public void mo36137case() throws RuntimeException {
        this.f32638for.m36227final();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: catch */
    public void mo36138catch() throws RuntimeException {
        m36303strictfp();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: class */
    public boolean mo36139class(int i) {
        return this.f32638for.h(i);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew, org.bouncycastle.pqc.math.linearalgebra.GFElement
    public Object clone() {
        return new Cthis(this);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: const */
    public boolean mo36140const() {
        return this.f32638for.h(0);
    }

    /* renamed from: continue, reason: not valid java name */
    public void m36295continue() throws RuntimeException {
        Cfor cfor = new Cfor(this.f32636if);
        int i = 0;
        while (true) {
            if (i >= this.f32636if) {
                this.f32638for = cfor;
                return;
            } else {
                if (this.f32638for.n(((Cbreak) this.f32635do).f32600case[(r2 - i) - 1])) {
                    cfor.m36237protected(i);
                }
                i++;
            }
        }
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: do */
    public void mo36141do() {
        this.f32638for.m36234new();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: else */
    public Cnew mo36142else() throws RuntimeException {
        Cthis cthisM36291throw;
        Cthis cthis;
        if (isZero()) {
            return m36291throw((Cbreak) this.f32635do);
        }
        if ((this.f32636if & 1) == 1) {
            return m36288import();
        }
        do {
            Cthis cthis2 = new Cthis((Cbreak) this.f32635do, new Random());
            cthisM36291throw = m36291throw((Cbreak) this.f32635do);
            cthis = (Cthis) cthis2.clone();
            for (int i = 1; i < this.f32636if; i++) {
                cthisM36291throw.mo36138catch();
                cthis.mo36138catch();
                cthisM36291throw.addToThis(cthis.multiply(this));
                cthis.addToThis(cthis2);
            }
        } while (cthis.isZero());
        if (equals(cthisM36291throw.mo36144goto().add(cthisM36291throw))) {
            return cthisM36291throw;
        }
        throw new RuntimeException();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Cthis)) {
            return false;
        }
        Cthis cthis = (Cthis) obj;
        Ctry ctry = this.f32635do;
        if (ctry == cthis.f32635do || ctry.m36307try().equals(cthis.f32635do.m36307try())) {
            return this.f32638for.equals(cthis.f32638for);
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: final */
    public int mo36143final() throws RuntimeException {
        Cthis cthis = new Cthis(this);
        for (int i = 1; i < this.f32636if; i++) {
            cthis.mo36138catch();
            cthis.addToThis(this);
        }
        return cthis.isOne() ? 1 : 0;
    }

    /* renamed from: finally, reason: not valid java name */
    public Cthis m36296finally() throws RuntimeException {
        Cthis cthis = new Cthis(this);
        cthis.m36294abstract();
        cthis.m36286default();
        return cthis;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: goto */
    public Cnew mo36144goto() {
        return m36299private();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public int hashCode() {
        return this.f32635do.hashCode() + this.f32638for.hashCode();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: if */
    public void mo36145if() {
        this.f32638for.m36218case();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement invert() throws ArithmeticException {
        return m36300public();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean isOne() {
        return this.f32638for.m36242throw();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean isZero() {
        return this.f32638for.m36246while();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement multiply(GFElement gFElement) throws RuntimeException {
        Cthis cthis = new Cthis(this);
        cthis.multiplyThisBy(gFElement);
        return cthis;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public void multiplyThisBy(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof Cthis)) {
            throw new RuntimeException();
        }
        Cthis cthis = (Cthis) gFElement;
        if (!this.f32635do.equals(cthis.f32635do)) {
            throw new RuntimeException();
        }
        if (equals(gFElement)) {
            mo36138catch();
        } else {
            this.f32638for = this.f32638for.m36223default(cthis.f32638for);
            m36286default();
        }
    }

    /* renamed from: native, reason: not valid java name */
    public Cthis m36297native() throws ArithmeticException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        Cfor cfor = new Cfor(this.f32636if + 32, "ONE");
        cfor.m36216abstract();
        Cfor cfor2 = new Cfor(this.f32636if + 32);
        cfor2.m36216abstract();
        Cfor cforM36293while = m36293while();
        Cfor cforM36307try = this.f32635do.m36307try();
        cforM36293while.m36216abstract();
        while (!cforM36293while.m36242throw()) {
            cforM36293while.m36216abstract();
            cforM36307try.m36216abstract();
            int iM36220class = cforM36293while.m36220class() - cforM36307try.m36220class();
            if (iM36220class < 0) {
                iM36220class = -iM36220class;
                cfor.m36216abstract();
                Cfor cfor3 = cfor2;
                cfor2 = cfor;
                cfor = cfor3;
                Cfor cfor4 = cforM36307try;
                cforM36307try = cforM36293while;
                cforM36293while = cfor4;
            }
            cforM36293while.m36240synchronized(cforM36307try, iM36220class);
            cfor.m36240synchronized(cfor2, iM36220class);
        }
        cfor.m36216abstract();
        return new Cthis((Cbreak) this.f32635do, cfor);
    }

    /* renamed from: package, reason: not valid java name */
    public Cthis m36298package() throws RuntimeException {
        Cthis cthis = new Cthis(this);
        cthis.m36295continue();
        cthis.m36286default();
        return cthis;
    }

    /* renamed from: private, reason: not valid java name */
    public Cthis m36299private() throws RuntimeException {
        Cthis cthis = new Cthis(this);
        cthis.m36303strictfp();
        cthis.m36286default();
        return cthis;
    }

    /* renamed from: public, reason: not valid java name */
    public Cthis m36300public() throws ArithmeticException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        Cfor cfor = new Cfor(this.f32636if, "ONE");
        Cfor cfor2 = new Cfor(this.f32636if);
        Cfor cforM36293while = m36293while();
        Cfor cforM36307try = this.f32635do.m36307try();
        while (true) {
            if (!cforM36293while.h(0)) {
                cforM36293while.c();
                if (cfor.h(0)) {
                    cfor.m36230if(this.f32635do.m36307try());
                }
                cfor.c();
            } else {
                if (cforM36293while.m36242throw()) {
                    return new Cthis((Cbreak) this.f32635do, cfor);
                }
                cforM36293while.m36216abstract();
                cforM36307try.m36216abstract();
                if (cforM36293while.m36220class() < cforM36307try.m36220class()) {
                    Cfor cfor3 = cfor2;
                    cfor2 = cfor;
                    cfor = cfor3;
                    Cfor cfor4 = cforM36307try;
                    cforM36307try = cforM36293while;
                    cforM36293while = cfor4;
                }
                cforM36293while.m36230if(cforM36307try);
                cfor.m36230if(cfor2);
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    public Cthis m36301return() throws RuntimeException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        int iM36306new = this.f32635do.m36306new() - 1;
        Cthis cthis = new Cthis(this);
        cthis.f32638for.m36241this((this.f32636if << 1) + 32);
        cthis.f32638for.m36216abstract();
        int i = 1;
        for (int iM36154class = Ccatch.m36154class(iM36306new) - 1; iM36154class >= 0; iM36154class--) {
            Cthis cthis2 = new Cthis(cthis);
            for (int i2 = 1; i2 <= i; i2++) {
                cthis2.m36303strictfp();
            }
            cthis.multiplyThisBy(cthis2);
            i <<= 1;
            if ((f32637new[iM36154class] & iM36306new) != 0) {
                cthis.m36303strictfp();
                cthis.multiplyThisBy(this);
                i++;
            }
        }
        cthis.m36303strictfp();
        return cthis;
    }

    /* renamed from: static, reason: not valid java name */
    public Cthis m36302static(int i) throws RuntimeException {
        if (i == 1) {
            return new Cthis(this);
        }
        Cthis cthisM36289super = m36289super((Cbreak) this.f32635do);
        if (i == 0) {
            return cthisM36289super;
        }
        Cthis cthis = new Cthis(this);
        cthis.f32638for.m36241this((cthis.f32636if << 1) + 32);
        cthis.f32638for.m36216abstract();
        for (int i2 = 0; i2 < this.f32636if; i2++) {
            if (((1 << i2) & i) != 0) {
                cthisM36289super.multiplyThisBy(cthis);
            }
            cthis.mo36144goto();
        }
        return cthisM36289super;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m36303strictfp() throws RuntimeException {
        this.f32638for.e();
        m36286default();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: this */
    public Cnew mo36148this() throws RuntimeException {
        Cthis cthis = new Cthis(this);
        cthis.mo36136break();
        return cthis;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public byte[] toByteArray() {
        return this.f32638for.i();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public BigInteger toFlexiBigInt() {
        return this.f32638for.j();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public String toString() {
        return this.f32638for.l(16);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public String toString(int i) {
        return this.f32638for.l(i);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: try */
    public Cnew mo36149try() throws RuntimeException {
        Cthis cthis = new Cthis(this);
        cthis.mo36137case();
        return cthis;
    }
}
