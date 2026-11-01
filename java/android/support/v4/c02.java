package android.support.v4;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
import org.chromium.base.task.SingleThreadTaskRunner;
import org.chromium.base.task.TaskRunnerImpl;

@lo0("base")
/* loaded from: classes3.dex */
public class c02 extends TaskRunnerImpl implements SingleThreadTaskRunner {

    /* renamed from: super, reason: not valid java name */
    public static final /* synthetic */ boolean f571super = false;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private final Handler f572const;

    /* renamed from: final, reason: not valid java name */
    private final boolean f573final;

    public c02(Handler handler, b52 b52Var, boolean z) {
        super(b52Var, "SingleThreadTaskRunnerImpl", 2);
        this.f572const = handler;
        this.f573final = z;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: this, reason: not valid java name */
    private void m710this() {
        if (Build.VERSION.SDK_INT < 21) {
            this.f572const.postAtFrontOfQueue(this.f33245try);
            return;
        }
        Message messageObtain = Message.obtain(this.f572const, this.f33245try);
        messageObtain.setAsynchronous(true);
        this.f572const.sendMessageAtFrontOfQueue(messageObtain);
    }

    @Override // org.chromium.base.task.SingleThreadTaskRunner
    public boolean belongsToCurrentThread() {
        Boolean boolM37223for = m37223for();
        return boolM37223for != null ? boolM37223for.booleanValue() : this.f572const.getLooper().getThread() == Thread.currentThread();
    }

    @Override // org.chromium.base.task.TaskRunnerImpl
    /* renamed from: goto, reason: not valid java name */
    public void mo711goto() {
        Handler handler = this.f572const;
        if (handler == null) {
            return;
        }
        if (this.f573final) {
            m710this();
        } else {
            handler.post(this.f33245try);
        }
    }

    public c02(Handler handler, b52 b52Var) {
        this(handler, b52Var, false);
    }
}
