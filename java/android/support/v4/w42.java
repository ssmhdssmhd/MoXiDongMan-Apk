package android.support.v4;

import androidx.annotation.NonNull;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Ccase;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class w42 implements LifecycleListener {

    /* renamed from: do, reason: not valid java name */
    private final Set<Target<?>> f7396do = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: do, reason: not valid java name */
    public void m9048do() {
        this.f7396do.clear();
    }

    /* renamed from: for, reason: not valid java name */
    public void m9049for(@NonNull Target<?> target) {
        this.f7396do.add(target);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public List<Target<?>> m9050if() {
        return Ccase.m12040catch(this.f7396do);
    }

    /* renamed from: new, reason: not valid java name */
    public void m9051new(@NonNull Target<?> target) {
        this.f7396do.remove(target);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
        Iterator it = Ccase.m12040catch(this.f7396do).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
        Iterator it = Ccase.m12040catch(this.f7396do).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onStart();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
        Iterator it = Ccase.m12040catch(this.f7396do).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onStop();
        }
    }
}
