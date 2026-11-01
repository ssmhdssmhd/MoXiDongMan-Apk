package com.uber.autodispose.android.lifecycle;

import android.support.v4.g91;
import android.support.v4.xs0;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.uber.autodispose.android.lifecycle.Cdo;
import com.uber.autodispose.lifecycle.CorrespondingEventsFunction;
import com.uber.autodispose.lifecycle.LifecycleScopeProvider;
import io.reactivex.Cnew;
import io.reactivex.CompletableSource;

/* renamed from: com.uber.autodispose.android.lifecycle.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo implements LifecycleScopeProvider<Lifecycle.Event> {

    /* renamed from: for, reason: not valid java name */
    private static final CorrespondingEventsFunction<Lifecycle.Event> f20755for = new CorrespondingEventsFunction() { // from class: android.support.v4.t1
        @Override // com.uber.autodispose.lifecycle.CorrespondingEventsFunction, io.reactivex.functions.Function
        public final Object apply(Object obj) {
            return Cdo.m24574goto((Lifecycle.Event) obj);
        }
    };

    /* renamed from: do, reason: not valid java name */
    private final CorrespondingEventsFunction<Lifecycle.Event> f20756do;

    /* renamed from: if, reason: not valid java name */
    private final LifecycleEventsObservable f20757if;

    /* renamed from: com.uber.autodispose.android.lifecycle.do$do, reason: invalid class name and collision with other inner class name */
    public static /* synthetic */ class C0198do {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20758do;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            f20758do = iArr;
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20758do[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20758do[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20758do[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20758do[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20758do[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.uber.autodispose.android.lifecycle.do$if, reason: invalid class name */
    public static class Cif implements CorrespondingEventsFunction<Lifecycle.Event> {

        /* renamed from: do, reason: not valid java name */
        private final Lifecycle.Event f20759do;

        public Cif(Lifecycle.Event event) {
            this.f20759do = event;
        }

        @Override // com.uber.autodispose.lifecycle.CorrespondingEventsFunction, io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Lifecycle.Event apply(Lifecycle.Event event) throws g91 {
            return this.f20759do;
        }
    }

    private Cdo(Lifecycle lifecycle, CorrespondingEventsFunction<Lifecycle.Event> correspondingEventsFunction) {
        this.f20757if = new LifecycleEventsObservable(lifecycle);
        this.f20756do = correspondingEventsFunction;
    }

    /* renamed from: case, reason: not valid java name */
    public static Cdo m24570case(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        return m24573for(lifecycleOwner.getLifecycle(), event);
    }

    /* renamed from: else, reason: not valid java name */
    public static Cdo m24572else(LifecycleOwner lifecycleOwner, CorrespondingEventsFunction<Lifecycle.Event> correspondingEventsFunction) {
        return m24576new(lifecycleOwner.getLifecycle(), correspondingEventsFunction);
    }

    /* renamed from: for, reason: not valid java name */
    public static Cdo m24573for(Lifecycle lifecycle, Lifecycle.Event event) {
        return m24576new(lifecycle, new Cif(event));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ Lifecycle.Event m24574goto(Lifecycle.Event event) throws g91 {
        int i = C0198do.f20758do[event.ordinal()];
        if (i == 1) {
            return Lifecycle.Event.ON_DESTROY;
        }
        if (i == 2) {
            return Lifecycle.Event.ON_STOP;
        }
        if (i == 3) {
            return Lifecycle.Event.ON_PAUSE;
        }
        if (i == 4) {
            return Lifecycle.Event.ON_STOP;
        }
        throw new xs0("Lifecycle has ended! Last event was " + event);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m24575if(Lifecycle lifecycle) {
        return m24576new(lifecycle, f20755for);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cdo m24576new(Lifecycle lifecycle, CorrespondingEventsFunction<Lifecycle.Event> correspondingEventsFunction) {
        return new Cdo(lifecycle, correspondingEventsFunction);
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m24577try(LifecycleOwner lifecycleOwner) {
        return m24575if(lifecycleOwner.getLifecycle());
    }

    @Override // com.uber.autodispose.lifecycle.LifecycleScopeProvider
    public CorrespondingEventsFunction<Lifecycle.Event> correspondingEvents() {
        return this.f20756do;
    }

    @Override // com.uber.autodispose.lifecycle.LifecycleScopeProvider
    public Cnew<Lifecycle.Event> lifecycle() {
        return this.f20757if;
    }

    @Override // com.uber.autodispose.lifecycle.LifecycleScopeProvider, com.uber.autodispose.ScopeProvider
    public CompletableSource requestScope() {
        return com.uber.autodispose.lifecycle.Cdo.m24622try(this);
    }

    @Override // com.uber.autodispose.lifecycle.LifecycleScopeProvider
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Lifecycle.Event peekLifecycle() {
        this.f20757if.m24568do();
        return this.f20757if.m24569if();
    }
}
