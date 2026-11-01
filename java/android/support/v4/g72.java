package android.support.v4;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;

@wp0(name = "TimersKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\u001a3\u0010\b\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001a3\u0010\u000b\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001a;\u0010\r\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001a;\u0010\u000e\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001a;\u0010\u000f\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001a;\u0010\u0010\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001a\u001a\u0010\u0015\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0001\u001aO\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001aM\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001aO\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001aM\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00012\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u001a'\u0010\u001c\u001a\u00020\u00042\u0019\b\u0004\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001d"}, d2 = {"Ljava/util/Timer;", "", "delay", "Lkotlin/Function1;", "Ljava/util/TimerTask;", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "action", "case", "Ljava/util/Date;", "time", "goto", "period", "try", "else", "this", "break", "", "name", "", "daemon", "catch", "initialDelay", "class", "startAt", "const", "do", "if", "throw", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class g72 {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"android/support/v4/g72$do", "Ljava/util/TimerTask;", "Landroid/support/v4/ub2;", "run", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.g72$do, reason: invalid class name */
    public static final class Cdo extends TimerTask {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function1 f2077do;

        public Cdo(Function1 function1) {
            this.f2077do = function1;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.f2077do.invoke(this);
        }
    }

    @um0
    /* renamed from: break, reason: not valid java name */
    private static final TimerTask m2595break(Timer timer, Date date, long j, Function1<? super TimerTask, ub2> function1) {
        Cdo cdo = new Cdo(function1);
        timer.scheduleAtFixedRate(cdo, date, j);
        return cdo;
    }

    @um0
    /* renamed from: case, reason: not valid java name */
    private static final TimerTask m2596case(Timer timer, long j, Function1<? super TimerTask, ub2> function1) {
        Cdo cdo = new Cdo(function1);
        timer.schedule(cdo, j);
        return cdo;
    }

    @m41
    @wg1
    /* renamed from: catch, reason: not valid java name */
    public static final Timer m2597catch(@z41 String str, boolean z) {
        return str == null ? new Timer(z) : new Timer(str, z);
    }

    @um0
    /* renamed from: class, reason: not valid java name */
    private static final Timer m2598class(String str, boolean z, long j, long j2, Function1<? super TimerTask, ub2> function1) {
        Timer timerM2597catch = m2597catch(str, z);
        timerM2597catch.schedule(new Cdo(function1), j, j2);
        return timerM2597catch;
    }

    @um0
    /* renamed from: const, reason: not valid java name */
    private static final Timer m2599const(String str, boolean z, Date date, long j, Function1<? super TimerTask, ub2> function1) {
        Timer timerM2597catch = m2597catch(str, z);
        timerM2597catch.schedule(new Cdo(function1), date, j);
        return timerM2597catch;
    }

    @um0
    /* renamed from: do, reason: not valid java name */
    private static final Timer m2600do(String str, boolean z, long j, long j2, Function1<? super TimerTask, ub2> function1) {
        Timer timerM2597catch = m2597catch(str, z);
        timerM2597catch.scheduleAtFixedRate(new Cdo(function1), j, j2);
        return timerM2597catch;
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final TimerTask m2601else(Timer timer, Date date, long j, Function1<? super TimerTask, ub2> function1) {
        Cdo cdo = new Cdo(function1);
        timer.schedule(cdo, date, j);
        return cdo;
    }

    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ Timer m2602final(String str, boolean z, long j, long j2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            j = 0;
        }
        Timer timerM2597catch = m2597catch(str, z);
        timerM2597catch.schedule(new Cdo(function1), j, j2);
        return timerM2597catch;
    }

    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ Timer m2603for(String str, boolean z, long j, long j2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            j = 0;
        }
        Timer timerM2597catch = m2597catch(str, z);
        timerM2597catch.scheduleAtFixedRate(new Cdo(function1), j, j2);
        return timerM2597catch;
    }

    @um0
    /* renamed from: goto, reason: not valid java name */
    private static final TimerTask m2604goto(Timer timer, Date date, Function1<? super TimerTask, ub2> function1) {
        Cdo cdo = new Cdo(function1);
        timer.schedule(cdo, date);
        return cdo;
    }

    @um0
    /* renamed from: if, reason: not valid java name */
    private static final Timer m2605if(String str, boolean z, Date date, long j, Function1<? super TimerTask, ub2> function1) {
        Timer timerM2597catch = m2597catch(str, z);
        timerM2597catch.scheduleAtFixedRate(new Cdo(function1), date, j);
        return timerM2597catch;
    }

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ Timer m2606new(String str, boolean z, Date date, long j, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        Timer timerM2597catch = m2597catch(str, z);
        timerM2597catch.scheduleAtFixedRate(new Cdo(function1), date, j);
        return timerM2597catch;
    }

    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ Timer m2607super(String str, boolean z, Date date, long j, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        Timer timerM2597catch = m2597catch(str, z);
        timerM2597catch.schedule(new Cdo(function1), date, j);
        return timerM2597catch;
    }

    @um0
    /* renamed from: this, reason: not valid java name */
    private static final TimerTask m2608this(Timer timer, long j, long j2, Function1<? super TimerTask, ub2> function1) {
        Cdo cdo = new Cdo(function1);
        timer.scheduleAtFixedRate(cdo, j, j2);
        return cdo;
    }

    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final TimerTask m2609throw(Function1<? super TimerTask, ub2> function1) {
        return new Cdo(function1);
    }

    @um0
    /* renamed from: try, reason: not valid java name */
    private static final TimerTask m2610try(Timer timer, long j, long j2, Function1<? super TimerTask, ub2> function1) {
        Cdo cdo = new Cdo(function1);
        timer.schedule(cdo, j, j2);
        return cdo;
    }
}
