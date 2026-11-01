package android.support.v4;

import com.wsw.cospa.base.BaseView;
import io.reactivex.disposables.Disposable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public abstract class m7<V extends BaseView> {

    /* renamed from: do, reason: not valid java name */
    public Reference<V> f3850do;

    /* renamed from: if, reason: not valid java name */
    public cq f3851if = new cq();

    /* renamed from: case, reason: not valid java name */
    public void m4858case() {
        cq cqVar = this.f3851if;
        if (cqVar == null || cqVar.isDisposed()) {
            return;
        }
        this.f3851if.dispose();
        this.f3851if.m995if();
    }

    /* renamed from: do, reason: not valid java name */
    public void m4859do(Disposable disposable) {
        if (this.f3851if == null) {
            this.f3851if = new cq();
        }
        this.f3851if.add(disposable);
    }

    /* renamed from: for, reason: not valid java name */
    public V m4860for() {
        Reference<V> reference = this.f3850do;
        if (reference != null) {
            return reference.get();
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public void m4861if(V v) {
        this.f3850do = new WeakReference(v);
        mo4862new();
    }

    /* renamed from: new, reason: not valid java name */
    public abstract void mo4862new();

    /* renamed from: try, reason: not valid java name */
    public void m4863try() {
        m4858case();
        Reference<V> reference = this.f3850do;
        if (reference != null) {
            reference.clear();
            this.f3850do = null;
        }
    }
}
