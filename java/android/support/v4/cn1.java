package android.support.v4;

import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collection;
import java.util.Collections;
import org.chromium.net.Cnative;
import org.chromium.net.Cstatic;

/* loaded from: classes3.dex */
public class cn1 extends Cnative {

    /* renamed from: case, reason: not valid java name */
    private final Cnative.Cif f830case;

    /* renamed from: else, reason: not valid java name */
    private final int f831else;

    /* renamed from: goto, reason: not valid java name */
    @Nullable
    private final Cstatic f832goto;

    /* renamed from: new, reason: not valid java name */
    private final String f833new;

    /* renamed from: this, reason: not valid java name */
    @Nullable
    private final rs f834this;

    /* renamed from: try, reason: not valid java name */
    private final Collection<Object> f835try;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.cn1$do, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cdo {
    }

    public cn1(String str, Collection<Object> collection, Cnative.Cif cif, int i, @Nullable Cstatic cstatic, @Nullable rs rsVar) {
        this.f833new = str;
        this.f835try = collection;
        this.f830case = cif;
        this.f831else = i;
        this.f832goto = cstatic;
        this.f834this = rsVar;
    }

    @Override // org.chromium.net.Cnative
    /* renamed from: case, reason: not valid java name */
    public String mo974case() {
        return this.f833new;
    }

    @Override // org.chromium.net.Cnative
    /* renamed from: do, reason: not valid java name */
    public Collection<Object> mo975do() {
        Collection<Object> collection = this.f835try;
        return collection == null ? Collections.emptyList() : collection;
    }

    @Override // org.chromium.net.Cnative
    /* renamed from: for, reason: not valid java name */
    public int mo976for() {
        return this.f831else;
    }

    @Override // org.chromium.net.Cnative
    @Nullable
    /* renamed from: if, reason: not valid java name */
    public rs mo977if() {
        return this.f834this;
    }

    @Override // org.chromium.net.Cnative
    /* renamed from: new, reason: not valid java name */
    public Cnative.Cif mo978new() {
        return this.f830case;
    }

    @Override // org.chromium.net.Cnative
    @Nullable
    /* renamed from: try, reason: not valid java name */
    public Cstatic mo979try() {
        return this.f832goto;
    }
}
