package com.google.common.util.concurrent;

import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.v10;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@v10("Create an AbstractIdleService")
@li0
@o8
/* loaded from: classes2.dex */
public interface Service {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @o8
    /* renamed from: com.google.common.util.concurrent.Service$for, reason: invalid class name */
    public static abstract class Cfor {
        public static final Cfor FAILED;
        public static final Cfor NEW;
        public static final Cfor RUNNING;
        public static final Cfor STARTING;
        public static final Cfor STOPPING;
        public static final Cfor TERMINATED;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cfor[] f15660do;

        /* renamed from: com.google.common.util.concurrent.Service$for$case, reason: invalid class name */
        public enum Ccase extends Cfor {
            public Ccase(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.util.concurrent.Service.Cfor
            public boolean isTerminal() {
                return true;
            }
        }

        /* renamed from: com.google.common.util.concurrent.Service$for$do, reason: invalid class name */
        public enum Cdo extends Cfor {
            public Cdo(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.util.concurrent.Service.Cfor
            public boolean isTerminal() {
                return false;
            }
        }

        /* renamed from: com.google.common.util.concurrent.Service$for$for, reason: invalid class name and collision with other inner class name */
        public enum C0144for extends Cfor {
            public C0144for(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.util.concurrent.Service.Cfor
            public boolean isTerminal() {
                return false;
            }
        }

        /* renamed from: com.google.common.util.concurrent.Service$for$if, reason: invalid class name */
        public enum Cif extends Cfor {
            public Cif(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.util.concurrent.Service.Cfor
            public boolean isTerminal() {
                return false;
            }
        }

        /* renamed from: com.google.common.util.concurrent.Service$for$new, reason: invalid class name */
        public enum Cnew extends Cfor {
            public Cnew(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.util.concurrent.Service.Cfor
            public boolean isTerminal() {
                return false;
            }
        }

        /* renamed from: com.google.common.util.concurrent.Service$for$try, reason: invalid class name */
        public enum Ctry extends Cfor {
            public Ctry(String str, int i) {
                super(str, i);
            }

            @Override // com.google.common.util.concurrent.Service.Cfor
            public boolean isTerminal() {
                return true;
            }
        }

        static {
            Cdo cdo = new Cdo("NEW", 0);
            NEW = cdo;
            Cif cif = new Cif("STARTING", 1);
            STARTING = cif;
            C0144for c0144for = new C0144for("RUNNING", 2);
            RUNNING = c0144for;
            Cnew cnew = new Cnew("STOPPING", 3);
            STOPPING = cnew;
            Ctry ctry = new Ctry("TERMINATED", 4);
            TERMINATED = ctry;
            Ccase ccase = new Ccase("FAILED", 5);
            FAILED = ccase;
            f15660do = new Cfor[]{cdo, cif, c0144for, cnew, ctry, ccase};
        }

        private Cfor(String str, int i) {
        }

        public static Cfor valueOf(String str) {
            return (Cfor) Enum.valueOf(Cfor.class, str);
        }

        public static Cfor[] values() {
            return (Cfor[]) f15660do.clone();
        }

        public abstract boolean isTerminal();
    }

    @o8
    /* renamed from: com.google.common.util.concurrent.Service$if, reason: invalid class name */
    public static abstract class Cif {
        /* renamed from: do, reason: not valid java name */
        public void mo18039do(Cfor cfor, Throwable th) {
        }

        /* renamed from: for, reason: not valid java name */
        public void mo18040for() {
        }

        /* renamed from: if, reason: not valid java name */
        public void mo18041if() {
        }

        /* renamed from: new, reason: not valid java name */
        public void mo18042new(Cfor cfor) {
        }

        /* renamed from: try, reason: not valid java name */
        public void mo18043try(Cfor cfor) {
        }
    }

    void addListener(Cif cif, Executor executor);

    void awaitRunning();

    void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException;

    void awaitTerminated();

    void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException;

    Throwable failureCause();

    boolean isRunning();

    @lf
    Service startAsync();

    Cfor state();

    @lf
    Service stopAsync();
}
