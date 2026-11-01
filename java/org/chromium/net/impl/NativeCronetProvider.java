package org.chromium.net.impl;

import android.content.Context;
import android.support.v4.im0;
import java.util.Arrays;
import org.chromium.base.annotations.UsedByReflection;
import org.chromium.net.Ccase;
import org.chromium.net.Cfor;
import org.chromium.net.Cnew;

/* loaded from: classes3.dex */
public class NativeCronetProvider extends Cnew {
    @UsedByReflection("CronetProvider.java")
    public NativeCronetProvider(Context context) {
        super(context);
    }

    @Override // org.chromium.net.Cnew
    /* renamed from: case, reason: not valid java name */
    public String mo37634case() {
        return im0.m3510if();
    }

    @Override // org.chromium.net.Cnew
    /* renamed from: else, reason: not valid java name */
    public boolean mo37635else() {
        return true;
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof NativeCronetProvider) && this.f33708do.equals(((NativeCronetProvider) obj).f33708do));
    }

    @Override // org.chromium.net.Cnew
    /* renamed from: for, reason: not valid java name */
    public Cfor.Cdo mo37636for() {
        return new Ccase.Cdo(new Cgoto(this.f33708do));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{NativeCronetProvider.class, this.f33708do});
    }

    @Override // org.chromium.net.Cnew
    /* renamed from: try, reason: not valid java name */
    public String mo37637try() {
        return Cnew.f33704if;
    }
}
