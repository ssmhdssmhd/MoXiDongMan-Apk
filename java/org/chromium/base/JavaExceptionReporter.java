package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.lo0;
import androidx.annotation.UiThread;
import java.lang.Thread;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
public class JavaExceptionReporter implements Thread.UncaughtExceptionHandler {

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ boolean f33010new = false;

    /* renamed from: do, reason: not valid java name */
    private final Thread.UncaughtExceptionHandler f33011do;

    /* renamed from: for, reason: not valid java name */
    private boolean f33012for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f33013if;

    public interface Natives {
        void reportJavaException(boolean z, Throwable th);

        void reportJavaStackTrace(String str);
    }

    private JavaExceptionReporter(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, boolean z) {
        this.f33011do = uncaughtExceptionHandler;
        this.f33013if = z;
    }

    @UiThread
    /* renamed from: do, reason: not valid java name */
    public static void m36825do(Throwable th) {
        Cconst.m37061if().reportJavaException(false, th);
    }

    @UiThread
    /* renamed from: if, reason: not valid java name */
    public static void m36826if(String str) {
        Cconst.m37061if().reportJavaStackTrace(PiiElider.sanitizeStacktrace(str));
    }

    @CalledByNative
    private static void installHandler(boolean z) {
        Thread.setDefaultUncaughtExceptionHandler(new JavaExceptionReporter(Thread.getDefaultUncaughtExceptionHandler(), z));
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (!this.f33012for) {
            this.f33012for = true;
            Cconst.m37061if().reportJavaException(this.f33013if, th);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f33011do;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
