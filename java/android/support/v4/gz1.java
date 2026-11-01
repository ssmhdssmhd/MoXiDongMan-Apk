package android.support.v4;

import org.bouncycastle.util.Cfor;
import org.bouncycastle.util.test.Test;
import org.bouncycastle.util.test.TestResult;

/* loaded from: classes3.dex */
public class gz1 implements TestResult {

    /* renamed from: new, reason: not valid java name */
    private static final String f2281new = Cfor.m36360new();

    /* renamed from: do, reason: not valid java name */
    private boolean f2282do;

    /* renamed from: for, reason: not valid java name */
    private Throwable f2283for;

    /* renamed from: if, reason: not valid java name */
    private String f2284if;

    public gz1(boolean z, String str) {
        this.f2282do = z;
        this.f2284if = str;
    }

    public gz1(boolean z, String str, Throwable th) {
        this.f2282do = z;
        this.f2284if = str;
        this.f2283for = th;
    }

    /* renamed from: do, reason: not valid java name */
    public static TestResult m2838do(Test test, String str) {
        return new gz1(false, test.getName() + ": " + str);
    }

    /* renamed from: for, reason: not valid java name */
    public static TestResult m2839for(Test test, String str, Throwable th) {
        return new gz1(false, test.getName() + ": " + str, th);
    }

    /* renamed from: if, reason: not valid java name */
    public static TestResult m2840if(Test test, String str, Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = f2281new;
        sb.append(str2);
        sb.append("Expected: ");
        sb.append(obj);
        sb.append(str2);
        sb.append("Found   : ");
        sb.append(obj2);
        return m2838do(test, sb.toString());
    }

    /* renamed from: new, reason: not valid java name */
    public static String m2841new(String str, String str2, String str3, String str4) {
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.append(" failing ");
        stringBuffer.append(str2);
        String str5 = f2281new;
        stringBuffer.append(str5);
        stringBuffer.append("    expected: ");
        stringBuffer.append(str3);
        stringBuffer.append(str5);
        stringBuffer.append("    got     : ");
        stringBuffer.append(str4);
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public static TestResult m2842try(Test test, String str) {
        return new gz1(true, test.getName() + ": " + str);
    }

    @Override // org.bouncycastle.util.test.TestResult
    public Throwable getException() {
        return this.f2283for;
    }

    @Override // org.bouncycastle.util.test.TestResult
    public boolean isSuccessful() {
        return this.f2282do;
    }

    @Override // org.bouncycastle.util.test.TestResult
    public String toString() {
        return this.f2284if;
    }
}
