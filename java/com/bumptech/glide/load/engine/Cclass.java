package com.bumptech.glide.load.engine;

import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.engine.class, reason: invalid class name */
/* loaded from: classes.dex */
final class Cclass {

    /* renamed from: do, reason: not valid java name */
    private final Map<Key, Cgoto<?>> f9744do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    private final Map<Key, Cgoto<?>> f9745if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    private Map<Key, Cgoto<?>> m11465for(boolean z) {
        return z ? this.f9745if : this.f9744do;
    }

    /* renamed from: do, reason: not valid java name */
    public Cgoto<?> m11466do(Key key, boolean z) {
        return m11465for(z).get(key);
    }

    @VisibleForTesting
    /* renamed from: if, reason: not valid java name */
    public Map<Key, Cgoto<?>> m11467if() {
        return Collections.unmodifiableMap(this.f9744do);
    }

    /* renamed from: new, reason: not valid java name */
    public void m11468new(Key key, Cgoto<?> cgoto) {
        m11465for(cgoto.m11521const()).put(key, cgoto);
    }

    /* renamed from: try, reason: not valid java name */
    public void m11469try(Key key, Cgoto<?> cgoto) {
        Map<Key, Cgoto<?>> mapM11465for = m11465for(cgoto.m11521const());
        if (cgoto.equals(mapM11465for.get(key))) {
            mapM11465for.remove(key);
        }
    }
}
