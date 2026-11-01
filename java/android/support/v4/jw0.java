package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class jw0<T, Y> {

    /* renamed from: do, reason: not valid java name */
    private final Map<T, Y> f3231do = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: for, reason: not valid java name */
    private long f3232for;

    /* renamed from: if, reason: not valid java name */
    private final long f3233if;

    /* renamed from: new, reason: not valid java name */
    private long f3234new;

    public jw0(long j) {
        this.f3233if = j;
        this.f3232for = j;
    }

    /* renamed from: if, reason: not valid java name */
    private void m4116if() {
        m4123this(this.f3232for);
    }

    /* renamed from: case, reason: not valid java name */
    public void mo4117case(@NonNull T t, @Nullable Y y) {
    }

    public void clearMemory() {
        m4123this(0L);
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized boolean m4118do(@NonNull T t) {
        return this.f3231do.containsKey(t);
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    public synchronized Y m4119else(@NonNull T t, @Nullable Y y) {
        long jMo4124try = mo4124try(y);
        if (jMo4124try >= this.f3232for) {
            mo4117case(t, y);
            return null;
        }
        if (y != null) {
            this.f3234new += jMo4124try;
        }
        Y yPut = this.f3231do.put(t, y);
        if (yPut != null) {
            this.f3234new -= mo4124try(yPut);
            if (!yPut.equals(y)) {
                mo4117case(t, yPut);
            }
        }
        m4116if();
        return yPut;
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    public synchronized Y m4120for(@NonNull T t) {
        return this.f3231do.get(t);
    }

    public synchronized long getCurrentSize() {
        return this.f3234new;
    }

    public synchronized long getMaxSize() {
        return this.f3232for;
    }

    @Nullable
    /* renamed from: goto, reason: not valid java name */
    public synchronized Y m4121goto(@NonNull T t) {
        Y yRemove;
        yRemove = this.f3231do.remove(t);
        if (yRemove != null) {
            this.f3234new -= mo4124try(yRemove);
        }
        return yRemove;
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized int m4122new() {
        return this.f3231do.size();
    }

    public synchronized void setSizeMultiplier(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
        this.f3232for = Math.round(this.f3233if * f);
        m4116if();
    }

    /* renamed from: this, reason: not valid java name */
    public synchronized void m4123this(long j) {
        while (this.f3234new > j) {
            Iterator<Map.Entry<T, Y>> it = this.f3231do.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.f3234new -= mo4124try(value);
            T key = next.getKey();
            it.remove();
            mo4117case(key, value);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int mo4124try(@Nullable Y y) {
        return 1;
    }
}
