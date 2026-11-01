package org.chromium.base.task;

import android.os.AsyncTask;
import android.os.Process;
import android.support.v4.ed;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.task.Cdo;
import org.chromium.base.task.Cnew;

/* renamed from: org.chromium.base.task.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew extends ThreadPoolExecutor {

    /* renamed from: case, reason: not valid java name */
    private static final BlockingQueue<Runnable> f33271case;

    /* renamed from: do, reason: not valid java name */
    private static final int f33272do;

    /* renamed from: else, reason: not valid java name */
    private static final int f33273else = 32;

    /* renamed from: for, reason: not valid java name */
    private static final int f33274for;

    /* renamed from: if, reason: not valid java name */
    private static final int f33275if;

    /* renamed from: new, reason: not valid java name */
    private static final int f33276new = 30;

    /* renamed from: try, reason: not valid java name */
    private static final ThreadFactory f33277try;

    /* renamed from: org.chromium.base.task.new$do, reason: invalid class name */
    public class Cdo implements ThreadFactory {

        /* renamed from: do, reason: not valid java name */
        private final AtomicInteger f33278do = new AtomicInteger(1);

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public static /* synthetic */ void m37262if(Runnable runnable) throws SecurityException, IllegalArgumentException {
            Process.setThreadPriority(10);
            runnable.run();
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(final Runnable runnable) {
            return new Thread(new Runnable() { // from class: org.chromium.base.task.for
                @Override // java.lang.Runnable
                public final void run() throws SecurityException, IllegalArgumentException {
                    Cnew.Cdo.m37262if(runnable);
                }
            }, "CrAsyncTask #" + this.f33278do.getAndIncrement());
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f33272do = iAvailableProcessors;
        f33275if = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        f33274for = (iAvailableProcessors * 2) + 1;
        f33277try = new Cdo();
        f33271case = new ArrayBlockingQueue(128);
    }

    public Cnew() {
        this(f33275if, f33274for, 30L, TimeUnit.SECONDS, f33271case, f33277try);
    }

    /* renamed from: do, reason: not valid java name */
    private String m37258do(Map<String, Integer> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            if (entry.getValue().intValue() > 32) {
                sb.append(entry.getKey());
                sb.append(' ');
            }
        }
        return sb.length() == 0 ? "NO CLASSES FOUND" : sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    private Map<String, Integer> m37259for() throws NoSuchFieldException {
        HashMap map = new HashMap();
        for (Runnable runnable : (Runnable[]) getQueue().toArray(new Runnable[0])) {
            String strM37260if = m37260if(runnable);
            map.put(strM37260if, Integer.valueOf((map.containsKey(strM37260if) ? ((Integer) map.get(strM37260if)).intValue() : 0) + 1));
        }
        return map;
    }

    /* renamed from: if, reason: not valid java name */
    private static String m37260if(Runnable runnable) throws NoSuchFieldException {
        Class clsM37253do;
        Class cls = runnable.getClass();
        try {
        } catch (IllegalAccessException e) {
            if (ed.f1398if) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchFieldException e2) {
            if (ed.f1398if) {
                throw new RuntimeException(e2);
            }
        }
        if (cls != Cdo.Cif.class) {
            if (cls.getEnclosingClass() == AsyncTask.class) {
                Field declaredField = cls.getDeclaredField("this$0");
                declaredField.setAccessible(true);
                clsM37253do = declaredField.get(runnable).getClass();
            }
            return cls.getName();
        }
        clsM37253do = ((Cdo.Cif) runnable).m37253do();
        cls = clsM37253do;
        return cls.getName();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) throws NoSuchFieldException {
        try {
            super.execute(runnable);
        } catch (RejectedExecutionException e) {
            throw new RejectedExecutionException("Prominent classes in AsyncTask: " + m37258do(m37259for()), e);
        }
    }

    @VisibleForTesting
    public Cnew(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory);
        allowCoreThreadTimeOut(true);
    }
}
