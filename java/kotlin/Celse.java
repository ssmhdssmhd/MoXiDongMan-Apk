package kotlin;

import android.support.v4.ae1;
import android.support.v4.iz1;
import android.support.v4.lj0;
import android.support.v4.m41;
import android.support.v4.um0;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\b\u001a\u0015\u0010\b\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0087\b\u001a\f\u0010\n\u001a\u00020\t*\u00020\u0000H\u0007\u001a\u0014\u0010\f\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0007\"#\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\r*\u00020\u00008F@\u0006¢\u0006\f\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010\"&\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00000\u0014*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"", "Landroid/support/v4/ub2;", "case", "Ljava/io/PrintWriter;", "writer", "goto", "Ljava/io/PrintStream;", "stream", "else", "", "this", "exception", "do", "", "Ljava/lang/StackTraceElement;", "if", "(Ljava/lang/Throwable;)[Ljava/lang/StackTraceElement;", "getStackTrace$annotations", "(Ljava/lang/Throwable;)V", "stackTrace", "", "new", "(Ljava/lang/Throwable;)Ljava/util/List;", "getSuppressedExceptions$annotations", "suppressedExceptions", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/ExceptionsKt")
/* renamed from: kotlin.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {
    @um0
    /* renamed from: case, reason: not valid java name */
    private static final void m30427case(Throwable th) {
        Objects.requireNonNull(th, "null cannot be cast to non-null type java.lang.Throwable");
        th.printStackTrace();
    }

    @lj0
    @iz1(version = "1.1")
    /* renamed from: do, reason: not valid java name */
    public static void m30428do(@m41 Throwable addSuppressed, @m41 Throwable exception) {
        Csuper.m30700throw(addSuppressed, "$this$addSuppressed");
        Csuper.m30700throw(exception, "exception");
        if (addSuppressed != exception) {
            ae1.f113do.mo3074do(addSuppressed, exception);
        }
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final void m30429else(Throwable th, PrintStream printStream) {
        Objects.requireNonNull(th, "null cannot be cast to non-null type java.lang.Throwable");
        th.printStackTrace(printStream);
    }

    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ void m30430for(Throwable th) {
    }

    @um0
    /* renamed from: goto, reason: not valid java name */
    private static final void m30431goto(Throwable th, PrintWriter printWriter) {
        Objects.requireNonNull(th, "null cannot be cast to non-null type java.lang.Throwable");
        th.printStackTrace(printWriter);
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public static final StackTraceElement[] m30432if(@m41 Throwable stackTrace) {
        Csuper.m30700throw(stackTrace, "$this$stackTrace");
        StackTraceElement[] stackTrace2 = stackTrace.getStackTrace();
        Csuper.m30672const(stackTrace2);
        return stackTrace2;
    }

    @m41
    /* renamed from: new, reason: not valid java name */
    public static final List<Throwable> m30433new(@m41 Throwable suppressedExceptions) {
        Csuper.m30700throw(suppressedExceptions, "$this$suppressedExceptions");
        return ae1.f113do.mo3075new(suppressedExceptions);
    }

    @m41
    @iz1(version = "1.4")
    /* renamed from: this, reason: not valid java name */
    public static final String m30434this(@m41 Throwable stackTraceToString) {
        Csuper.m30700throw(stackTraceToString, "$this$stackTraceToString");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        stackTraceToString.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        Csuper.m30696super(string, "sw.toString()");
        return string;
    }

    @iz1(version = "1.4")
    /* renamed from: try, reason: not valid java name */
    public static /* synthetic */ void m30435try(Throwable th) {
    }
}
