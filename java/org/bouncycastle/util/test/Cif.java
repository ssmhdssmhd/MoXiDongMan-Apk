package org.bouncycastle.util.test;

import android.support.v4.gz1;
import android.support.v4.q3;
import android.support.v4.u52;
import java.io.PrintStream;

/* renamed from: org.bouncycastle.util.test.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif implements Test {
    /* renamed from: super, reason: not valid java name */
    public static void m36384super(Test test) {
        m36385throw(test, System.out);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m36385throw(Test test, PrintStream printStream) {
        TestResult testResultPerform = test.perform();
        printStream.println(testResultPerform.toString());
        if (testResultPerform.getException() != null) {
            testResultPerform.getException().printStackTrace(printStream);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private TestResult m36386while() {
        return gz1.m2842try(this, "Okay");
    }

    /* renamed from: break, reason: not valid java name */
    public void m36387break(String str, Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return;
        }
        if (obj == null) {
            throw new u52(gz1.m2838do(this, str));
        }
        if (obj2 == null) {
            throw new u52(gz1.m2838do(this, str));
        }
        if (!obj.equals(obj2)) {
            throw new u52(gz1.m2838do(this, str));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m36388case(int i, int i2) {
        if (i != i2) {
            throw new u52(gz1.m2838do(this, "no message"));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m36389catch(String str, boolean z, boolean z2) {
        if (z != z2) {
            throw new u52(gz1.m2838do(this, str));
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m36390class(String str, boolean z) {
        if (!z) {
            throw new u52(gz1.m2838do(this, str));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m36391const(boolean z) {
        if (!z) {
            throw new u52(gz1.m2838do(this, "no message"));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m36392do(byte[] bArr, byte[] bArr2) {
        return q3.m6362case(bArr, bArr2);
    }

    /* renamed from: else, reason: not valid java name */
    public void m36393else(long j, long j2) {
        if (j != j2) {
            throw new u52(gz1.m2838do(this, "no message"));
        }
    }

    /* renamed from: final, reason: not valid java name */
    public abstract void m36394final() throws Exception;

    /* renamed from: for, reason: not valid java name */
    public void m36395for(String str) {
        throw new u52(gz1.m2838do(this, str));
    }

    @Override // org.bouncycastle.util.test.Test
    public abstract String getName();

    /* renamed from: goto, reason: not valid java name */
    public void m36396goto(Object obj, Object obj2) {
        if (!obj.equals(obj2)) {
            throw new u52(gz1.m2838do(this, "no message"));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m36397if(byte[][] bArr, byte[][] bArr2) {
        if (bArr == null && bArr2 == null) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (!m36392do(bArr[i], bArr2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public void m36398new(String str, Object obj, Object obj2) {
        throw new u52(gz1.m2840if(this, str, obj, obj2));
    }

    @Override // org.bouncycastle.util.test.Test
    public TestResult perform() {
        try {
            m36394final();
            return m36386while();
        } catch (u52 e) {
            return e.getResult();
        } catch (Exception e2) {
            return gz1.m2839for(this, "Exception: " + e2, e2);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m36399this(String str, long j, long j2) {
        if (j != j2) {
            throw new u52(gz1.m2838do(this, str));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m36400try(String str, Throwable th) {
        throw new u52(gz1.m2839for(this, str, th));
    }
}
