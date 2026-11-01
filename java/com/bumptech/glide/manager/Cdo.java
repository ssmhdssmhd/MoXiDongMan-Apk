package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import com.bumptech.glide.util.Ccase;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: com.bumptech.glide.manager.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo implements Lifecycle {

    /* renamed from: do, reason: not valid java name */
    private final Set<LifecycleListener> f10276do = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: for, reason: not valid java name */
    private boolean f10277for;

    /* renamed from: if, reason: not valid java name */
    private boolean f10278if;

    @Override // com.bumptech.glide.manager.Lifecycle
    public void addListener(@NonNull LifecycleListener lifecycleListener) {
        this.f10276do.add(lifecycleListener);
        if (this.f10277for) {
            lifecycleListener.onDestroy();
        } else if (this.f10278if) {
            lifecycleListener.onStart();
        } else {
            lifecycleListener.onStop();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m11883do() {
        this.f10277for = true;
        Iterator it = Ccase.m12040catch(this.f10276do).iterator();
        while (it.hasNext()) {
            ((LifecycleListener) it.next()).onDestroy();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m11884for() {
        this.f10278if = false;
        Iterator it = Ccase.m12040catch(this.f10276do).iterator();
        while (it.hasNext()) {
            ((LifecycleListener) it.next()).onStop();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m11885if() {
        this.f10278if = true;
        Iterator it = Ccase.m12040catch(this.f10276do).iterator();
        while (it.hasNext()) {
            ((LifecycleListener) it.next()).onStart();
        }
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void removeListener(@NonNull LifecycleListener lifecycleListener) {
        this.f10276do.remove(lifecycleListener);
    }
}
