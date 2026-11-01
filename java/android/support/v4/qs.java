package android.support.v4;

import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.chromium.net.Ccase;
import org.chromium.net.Celse;
import org.chromium.net.Cif;
import org.chromium.net.Cnative;
import org.chromium.net.Creturn;
import org.chromium.net.Ctry;

/* loaded from: classes3.dex */
public abstract class qs extends Ccase {

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.qs$do, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cdo {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.qs$for, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cfor {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.qs$if, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cif {
    }

    /* renamed from: default, reason: not valid java name */
    public abstract Ctry mo6660default(String str, Cif.AbstractC0480if abstractC0480if, Executor executor, String str2, List<Map.Entry<String, String>> list, int i, boolean z, Collection<Object> collection, boolean z2, int i2, boolean z3, int i3);

    /* renamed from: extends, reason: not valid java name */
    public abstract cd2 mo6661extends(String str, Creturn.Cif cif, Executor executor, int i, Collection<Object> collection, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, @Nullable Cnative.Cdo cdo, int i4);

    @Override // org.chromium.net.Ccase, org.chromium.net.Cfor
    /* renamed from: native, reason: not valid java name */
    public Celse.Cdo mo6663try(String str, Creturn.Cif cif, Executor executor) {
        return new dd2(str, cif, executor, this);
    }
}
