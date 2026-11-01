package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;

@wp0(name = "ThreadsKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aJ\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u001a5\u0010\u0012\u001a\u00028\u0000\"\b\b\u0000\u0010\u000f*\u00020\u000e*\b\u0012\u0004\u0012\u00028\u00000\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0014"}, d2 = {"", "start", "isDaemon", "Ljava/lang/ClassLoader;", "contextClassLoader", "", "name", "", "priority", "Lkotlin/Function0;", "Landroid/support/v4/ub2;", "block", "Ljava/lang/Thread;", "if", "", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/ThreadLocal;", "default", "do", "(Ljava/lang/ThreadLocal;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class n62 {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"android/support/v4/n62$do", "Ljava/lang/Thread;", "Landroid/support/v4/ub2;", "run", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.n62$do, reason: invalid class name */
    public static final class Cdo extends Thread {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function0 f4129do;

        public Cdo(Function0 function0) {
            this.f4129do = function0;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f4129do.invoke();
        }
    }

    @um0
    /* renamed from: do, reason: not valid java name */
    private static final <T> T m5111do(ThreadLocal<T> threadLocal, Function0<? extends T> function0) {
        T t = threadLocal.get();
        if (t != null) {
            return t;
        }
        T tInvoke = function0.invoke();
        threadLocal.set(tInvoke);
        return tInvoke;
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public static final Thread m5113if(boolean z, boolean z2, @z41 ClassLoader classLoader, @z41 String str, int i, @m41 Function0<ub2> block) {
        Csuper.m30700throw(block, "block");
        Cdo cdo = new Cdo(block);
        if (z2) {
            cdo.setDaemon(true);
        }
        if (i > 0) {
            cdo.setPriority(i);
        }
        if (str != null) {
            cdo.setName(str);
        }
        if (classLoader != null) {
            cdo.setContextClassLoader(classLoader);
        }
        if (z) {
            cdo.start();
        }
        return cdo;
    }
}
