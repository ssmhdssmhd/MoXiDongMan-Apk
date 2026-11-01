package com.google.common.escape;

import android.support.v4.ki0;
import android.support.v4.v10;
import com.google.common.base.Function;

@v10("Use Escapers.nullEscaper() or another methods from the *Escapers classes")
@ki0
/* renamed from: com.google.common.escape.for, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final Function<String, String> f14914do = new Cdo();

    /* renamed from: com.google.common.escape.for$do, reason: invalid class name */
    public class Cdo implements Function<String, String> {
        public Cdo() {
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String apply(String str) {
            return Cfor.this.mo852if(str);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final Function<String, String> m16597do() {
        return this.f14914do;
    }

    /* renamed from: if */
    public abstract String mo852if(String str);
}
