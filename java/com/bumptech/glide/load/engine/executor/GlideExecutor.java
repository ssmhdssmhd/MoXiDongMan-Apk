package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class GlideExecutor implements ExecutorService {

    /* renamed from: break, reason: not valid java name */
    private static volatile int f9778break = 0;

    /* renamed from: case, reason: not valid java name */
    private static final String f9779case = "source-unlimited";

    /* renamed from: else, reason: not valid java name */
    private static final String f9780else = "animation";

    /* renamed from: for, reason: not valid java name */
    private static final String f9781for = "disk-cache";

    /* renamed from: goto, reason: not valid java name */
    private static final long f9782goto = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: if, reason: not valid java name */
    private static final String f9783if = "source";

    /* renamed from: new, reason: not valid java name */
    private static final int f9784new = 1;

    /* renamed from: this, reason: not valid java name */
    private static final int f9785this = 4;

    /* renamed from: try, reason: not valid java name */
    private static final String f9786try = "GlideExecutor";

    /* renamed from: do, reason: not valid java name */
    private final ExecutorService f9787do;

    public interface UncaughtThrowableStrategy {
        public static final UncaughtThrowableStrategy DEFAULT;
        public static final UncaughtThrowableStrategy IGNORE = new Cdo();
        public static final UncaughtThrowableStrategy LOG;
        public static final UncaughtThrowableStrategy THROW;

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$do, reason: invalid class name */
        public class Cdo implements UncaughtThrowableStrategy {
            @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
            public void handle(Throwable th) {
            }
        }

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$for, reason: invalid class name */
        public class Cfor implements UncaughtThrowableStrategy {
            @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
            public void handle(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        }

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$if, reason: invalid class name */
        public class Cif implements UncaughtThrowableStrategy {
            @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
            public void handle(Throwable th) {
                if (th != null) {
                    Log.isLoggable(GlideExecutor.f9786try, 6);
                }
            }
        }

        static {
            Cif cif = new Cif();
            LOG = cif;
            THROW = new Cfor();
            DEFAULT = cif;
        }

        void handle(Throwable th);
    }

    /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: else, reason: not valid java name */
        public static final long f9788else = 0;

        /* renamed from: case, reason: not valid java name */
        private long f9789case;

        /* renamed from: do, reason: not valid java name */
        private final boolean f9790do;

        /* renamed from: for, reason: not valid java name */
        private int f9791for;

        /* renamed from: if, reason: not valid java name */
        private int f9792if;

        /* renamed from: new, reason: not valid java name */
        @NonNull
        private UncaughtThrowableStrategy f9793new = UncaughtThrowableStrategy.DEFAULT;

        /* renamed from: try, reason: not valid java name */
        private String f9794try;

        public Cdo(boolean z) {
            this.f9790do = z;
        }

        /* renamed from: do, reason: not valid java name */
        public GlideExecutor m11503do() {
            if (TextUtils.isEmpty(this.f9794try)) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f9794try);
            }
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f9792if, this.f9791for, this.f9789case, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new Cif(this.f9794try, this.f9793new, this.f9790do));
            if (this.f9789case != 0) {
                threadPoolExecutor.allowCoreThreadTimeOut(true);
            }
            return new GlideExecutor(threadPoolExecutor);
        }

        /* renamed from: for, reason: not valid java name */
        public Cdo m11504for(@IntRange(from = 1) int i) {
            this.f9792if = i;
            this.f9791for = i;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cdo m11505if(String str) {
            this.f9794try = str;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cdo m11506new(long j) {
            this.f9789case = j;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cdo m11507try(@NonNull UncaughtThrowableStrategy uncaughtThrowableStrategy) {
            this.f9793new = uncaughtThrowableStrategy;
            return this;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$if, reason: invalid class name */
    public static final class Cif implements ThreadFactory {

        /* renamed from: try, reason: not valid java name */
        private static final int f9795try = 9;

        /* renamed from: do, reason: not valid java name */
        private final String f9796do;

        /* renamed from: for, reason: not valid java name */
        public final boolean f9797for;

        /* renamed from: if, reason: not valid java name */
        public final UncaughtThrowableStrategy f9798if;

        /* renamed from: new, reason: not valid java name */
        private int f9799new;

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$if$do, reason: invalid class name */
        public class Cdo extends Thread {
            public Cdo(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws SecurityException, IllegalArgumentException {
                Process.setThreadPriority(9);
                if (Cif.this.f9797for) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    Cif.this.f9798if.handle(th);
                }
            }
        }

        public Cif(String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z) {
            this.f9796do = str;
            this.f9798if = uncaughtThrowableStrategy;
            this.f9797for = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(@NonNull Runnable runnable) {
            Cdo cdo;
            cdo = new Cdo(runnable, "glide-" + this.f9796do + "-thread-" + this.f9799new);
            this.f9799new = this.f9799new + 1;
            return cdo;
        }
    }

    @VisibleForTesting
    public GlideExecutor(ExecutorService executorService) {
        this.f9787do = executorService;
    }

    /* renamed from: break, reason: not valid java name */
    public static GlideExecutor m11490break() {
        return m11501this().m11503do();
    }

    /* renamed from: case, reason: not valid java name */
    public static GlideExecutor m11491case() {
        return m11502try().m11503do();
    }

    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public static GlideExecutor m11492catch(int i, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return m11501this().m11504for(i).m11505if(str).m11507try(uncaughtThrowableStrategy).m11503do();
    }

    @Deprecated
    /* renamed from: class, reason: not valid java name */
    public static GlideExecutor m11493class(UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return m11501this().m11507try(uncaughtThrowableStrategy).m11503do();
    }

    /* renamed from: const, reason: not valid java name */
    public static GlideExecutor m11494const() {
        return new GlideExecutor(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f9782goto, TimeUnit.MILLISECONDS, new SynchronousQueue(), new Cif(f9779case, UncaughtThrowableStrategy.DEFAULT, false)));
    }

    /* renamed from: do, reason: not valid java name */
    public static int m11495do() {
        if (f9778break == 0) {
            f9778break = Math.min(4, com.bumptech.glide.load.engine.executor.Cdo.m11508do());
        }
        return f9778break;
    }

    @Deprecated
    /* renamed from: else, reason: not valid java name */
    public static GlideExecutor m11496else(int i, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return m11502try().m11504for(i).m11505if(str).m11507try(uncaughtThrowableStrategy).m11503do();
    }

    /* renamed from: for, reason: not valid java name */
    public static GlideExecutor m11497for() {
        return m11499if().m11503do();
    }

    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    public static GlideExecutor m11498goto(UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return m11502try().m11507try(uncaughtThrowableStrategy).m11503do();
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m11499if() {
        return new Cdo(true).m11504for(m11495do() >= 4 ? 2 : 1).m11505if(f9780else);
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public static GlideExecutor m11500new(int i, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return m11499if().m11504for(i).m11507try(uncaughtThrowableStrategy).m11503do();
    }

    /* renamed from: this, reason: not valid java name */
    public static Cdo m11501this() {
        return new Cdo(false).m11504for(m11495do()).m11505if(f9783if);
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m11502try() {
        return new Cdo(true).m11504for(1).m11505if(f9781for);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f9787do.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f9787do.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f9787do.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.f9787do.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f9787do.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f9787do.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f9787do.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.f9787do.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.f9787do.submit(runnable);
    }

    public String toString() {
        return this.f9787do.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f9787do.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.f9787do.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t) {
        return this.f9787do.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f9787do.submit(callable);
    }
}
