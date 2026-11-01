package org.antlr.v4.runtime;

import java.io.IOException;
import org.antlr.v4.runtime.misc.Cfor;

/* renamed from: org.antlr.v4.runtime.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cif {

    /* renamed from: goto, reason: not valid java name */
    public String f28541goto;

    public Cdo(String str) throws IOException {
        this(str, null);
    }

    @Override // org.antlr.v4.runtime.Cif, org.antlr.v4.runtime.IntStream
    public String getSourceName() {
        return this.f28541goto;
    }

    /* renamed from: new, reason: not valid java name */
    public void m31977new(String str, String str2) throws IOException {
        char[] cArrM32045this = Cfor.m32045this(str, str2);
        this.f28560do = cArrM32045this;
        this.f28562if = cArrM32045this.length;
    }

    public Cdo(String str, String str2) throws IOException {
        this.f28541goto = str;
        m31977new(str, str2);
    }
}
