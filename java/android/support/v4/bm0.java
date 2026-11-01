package android.support.v4;

import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.observable.ObserverListener;
import com.luck.picture.lib.observable.SubjectListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class bm0 implements SubjectListener {

    /* renamed from: try, reason: not valid java name */
    private static bm0 f482try;

    /* renamed from: do, reason: not valid java name */
    private List<ObserverListener> f483do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private List<LocalMediaFolder> f485if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    private List<LocalMedia> f484for = new ArrayList();

    /* renamed from: new, reason: not valid java name */
    private List<LocalMedia> f486new = new ArrayList();

    private bm0() {
    }

    /* renamed from: new, reason: not valid java name */
    public static bm0 m578new() {
        if (f482try == null) {
            synchronized (bm0.class) {
                if (f482try == null) {
                    f482try = new bm0();
                }
            }
        }
        return f482try;
    }

    @Override // com.luck.picture.lib.observable.SubjectListener
    public void add(ObserverListener observerListener) {
        this.f483do.add(observerListener);
    }

    /* renamed from: case, reason: not valid java name */
    public List<LocalMedia> m579case() {
        if (this.f484for == null) {
            this.f484for = new ArrayList();
        }
        return this.f484for;
    }

    /* renamed from: do, reason: not valid java name */
    public void m580do() {
        List<LocalMediaFolder> list = this.f485if;
        if (list != null) {
            list.clear();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public List<LocalMedia> m581else() {
        return this.f486new;
    }

    /* renamed from: for, reason: not valid java name */
    public void m582for() {
        List<LocalMedia> list = this.f486new;
        if (list != null) {
            list.clear();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void m583goto(List<LocalMediaFolder> list) {
        if (list != null) {
            this.f485if = list;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m584if() {
        List<LocalMedia> list = this.f484for;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.luck.picture.lib.observable.SubjectListener
    public void remove(ObserverListener observerListener) {
        if (this.f483do.contains(observerListener)) {
            this.f483do.remove(observerListener);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m585this(List<LocalMedia> list) {
        this.f484for = list;
    }

    /* renamed from: try, reason: not valid java name */
    public List<LocalMediaFolder> m586try() {
        if (this.f485if == null) {
            this.f485if = new ArrayList();
        }
        return this.f485if;
    }
}
