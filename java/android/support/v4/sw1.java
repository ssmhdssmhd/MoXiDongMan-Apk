package android.support.v4;

import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.task.SequencedTaskRunner;
import org.chromium.base.task.TaskRunnerImpl;

/* loaded from: classes3.dex */
public class sw1 extends TaskRunnerImpl implements SequencedTaskRunner {

    /* renamed from: const, reason: not valid java name */
    private AtomicInteger f6320const;

    /* renamed from: final, reason: not valid java name */
    private volatile boolean f6321final;

    public sw1(b52 b52Var) {
        super(b52Var, "SequencedTaskRunnerImpl", 1);
        this.f6320const = new AtomicInteger();
    }

    @Override // org.chromium.base.task.TaskRunnerImpl
    /* renamed from: else, reason: not valid java name */
    public void mo7626else() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.mo7626else();
        if (this.f6320const.decrementAndGet() > 0) {
            if (this.f6321final) {
                super.mo7627try();
            } else {
                super.mo711goto();
            }
        }
    }

    @Override // org.chromium.base.task.TaskRunnerImpl
    /* renamed from: goto */
    public void mo711goto() {
        if (this.f6320const.getAndIncrement() == 0) {
            super.mo711goto();
        }
    }

    @Override // org.chromium.base.task.TaskRunnerImpl
    /* renamed from: try, reason: not valid java name */
    public void mo7627try() {
        this.f6321final = true;
        if (this.f6320const.getAndIncrement() == 0) {
            super.mo7627try();
        }
    }
}
