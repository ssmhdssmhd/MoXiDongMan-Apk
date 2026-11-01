package org.bouncycastle.util.io.pem;

import android.support.v4.zc1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: org.bouncycastle.util.io.pem.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements PemObjectGenerator {

    /* renamed from: new, reason: not valid java name */
    private static final List f32660new = Collections.unmodifiableList(new ArrayList());

    /* renamed from: do, reason: not valid java name */
    private String f32661do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f32662for;

    /* renamed from: if, reason: not valid java name */
    private List f32663if;

    public Cdo(String str, List list, byte[] bArr) {
        this.f32661do = str;
        this.f32663if = Collections.unmodifiableList(list);
        this.f32662for = bArr;
    }

    public Cdo(String str, byte[] bArr) {
        this(str, f32660new, bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m36371do() {
        return this.f32662for;
    }

    /* renamed from: for, reason: not valid java name */
    public String m36372for() {
        return this.f32661do;
    }

    @Override // org.bouncycastle.util.io.pem.PemObjectGenerator
    public Cdo generate() throws zc1 {
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public List m36373if() {
        return this.f32663if;
    }
}
