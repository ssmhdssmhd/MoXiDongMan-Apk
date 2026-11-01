package com.uber.autodispose.lifecycle;

import android.support.v4.a51;
import android.support.v4.g91;
import android.support.v4.xs0;
import com.uber.autodispose.lifecycle.Cif;
import io.reactivex.Cnew;
import io.reactivex.CompletableSource;

/* renamed from: com.uber.autodispose.lifecycle.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif implements LifecycleScopeProvider<EnumC0199if> {

    /* renamed from: do, reason: not valid java name */
    private final io.reactivex.subjects.Cif<EnumC0199if> f20780do;

    /* renamed from: com.uber.autodispose.lifecycle.if$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20781do;

        static {
            int[] iArr = new int[EnumC0199if.values().length];
            f20781do = iArr;
            try {
                iArr[EnumC0199if.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20781do[EnumC0199if.STOPPED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.uber.autodispose.lifecycle.if$if, reason: invalid class name and collision with other inner class name */
    public enum EnumC0199if {
        STARTED,
        STOPPED
    }

    private Cif(@a51 EnumC0199if enumC0199if) {
        if (enumC0199if == null) {
            this.f20780do = io.reactivex.subjects.Cif.m29815else();
        } else {
            this.f20780do = io.reactivex.subjects.Cif.m29816goto(enumC0199if);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m24624for(EnumC0199if enumC0199if) {
        return new Cif(enumC0199if);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m24625if() {
        return new Cif(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ EnumC0199if m24626new(EnumC0199if enumC0199if) throws g91 {
        int i = Cdo.f20781do[enumC0199if.ordinal()];
        if (i == 1) {
            return EnumC0199if.STOPPED;
        }
        if (i != 2) {
            throw new IllegalStateException("Unknown lifecycle event.");
        }
        throw new xs0();
    }

    /* renamed from: case, reason: not valid java name */
    public void m24627case() {
        this.f20780do.onNext(EnumC0199if.STARTED);
    }

    @Override // com.uber.autodispose.lifecycle.LifecycleScopeProvider
    public CorrespondingEventsFunction<EnumC0199if> correspondingEvents() {
        return new CorrespondingEventsFunction() { // from class: android.support.v4.v52
            @Override // com.uber.autodispose.lifecycle.CorrespondingEventsFunction, io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Cif.m24626new((Cif.EnumC0199if) obj);
            }
        };
    }

    /* renamed from: else, reason: not valid java name */
    public void m24628else() {
        if (this.f20780do.m29824this() != EnumC0199if.STARTED) {
            throw new IllegalStateException("Attempting to stop lifecycle before starting it.");
        }
        this.f20780do.onNext(EnumC0199if.STOPPED);
    }

    @Override // com.uber.autodispose.lifecycle.LifecycleScopeProvider
    public Cnew<EnumC0199if> lifecycle() {
        return this.f20780do.hide();
    }

    @Override // com.uber.autodispose.lifecycle.LifecycleScopeProvider, com.uber.autodispose.ScopeProvider
    public CompletableSource requestScope() {
        return com.uber.autodispose.lifecycle.Cdo.m24622try(this);
    }

    @Override // com.uber.autodispose.lifecycle.LifecycleScopeProvider
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public EnumC0199if peekLifecycle() {
        return this.f20780do.m29824this();
    }
}
