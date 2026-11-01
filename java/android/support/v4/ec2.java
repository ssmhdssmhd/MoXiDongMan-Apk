package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import org.chromium.base.Cstatic;
import org.chromium.base.UnownedUserData;

/* loaded from: classes3.dex */
public final class ec2<T extends UnownedUserData> {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f1389for = false;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Class<T> f1390do;

    /* renamed from: if, reason: not valid java name */
    private final Set<Cstatic> f1391if = Collections.newSetFromMap(new WeakHashMap());

    public ec2(@NonNull Class<T> cls) {
        this.f1390do = cls;
    }

    /* renamed from: do, reason: not valid java name */
    private void m1788do() {
        if (ed.f1398if) {
            Iterator<Cstatic> it = this.f1391if.iterator();
            while (it.hasNext()) {
                if (it.next().m37195try()) {
                    throw new IllegalStateException();
                }
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m1789this(Cstatic cstatic) {
        cstatic.m37190else(this);
        this.f1391if.remove(cstatic);
    }

    @Nullable
    /* renamed from: break, reason: not valid java name */
    public final T m1790break(@NonNull Cstatic cstatic) {
        m1788do();
        Iterator<Cstatic> it = this.f1391if.iterator();
        while (it.hasNext()) {
            if (cstatic.equals(it.next())) {
                return (T) cstatic.m37191for(this);
            }
        }
        return null;
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public final Class<T> m1791case() {
        return this.f1390do;
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m1792else(@NonNull T t) {
        return m1797try(t) > 0;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1793for(@NonNull T t) {
        m1788do();
        Iterator it = new ArrayList(this.f1391if).iterator();
        while (it.hasNext()) {
            Cstatic cstatic = (Cstatic) it.next();
            if (t.equals(cstatic.m37191for(this))) {
                m1789this(cstatic);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m1794goto(@NonNull Cstatic cstatic) {
        return m1790break(cstatic) != null;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1795if(@NonNull Cstatic cstatic, @NonNull T t) {
        Objects.requireNonNull(t);
        cstatic.m37194this(this, t);
        if (m1794goto(cstatic)) {
            return;
        }
        this.f1391if.add(cstatic);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1796new(@NonNull Cstatic cstatic) {
        m1788do();
        Iterator it = new ArrayList(this.f1391if).iterator();
        while (it.hasNext()) {
            Cstatic cstatic2 = (Cstatic) it.next();
            if (cstatic.equals(cstatic2)) {
                m1789this(cstatic2);
            }
        }
    }

    @VisibleForTesting(otherwise = 2)
    /* renamed from: try, reason: not valid java name */
    public int m1797try(@NonNull T t) {
        m1788do();
        Iterator<Cstatic> it = this.f1391if.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (t.equals(it.next().m37191for(this))) {
                i++;
            }
        }
        return i;
    }
}
