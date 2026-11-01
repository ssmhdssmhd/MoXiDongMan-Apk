package com.google.zxing.pdf417.decoder;

import android.support.v4.j41;
import android.support.v4.yn1;
import android.support.v4.z8;

/* renamed from: com.google.zxing.pdf417.decoder.for, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfor {

    /* renamed from: case, reason: not valid java name */
    private final int f17796case;

    /* renamed from: do, reason: not valid java name */
    private final z8 f17797do;

    /* renamed from: else, reason: not valid java name */
    private final int f17798else;

    /* renamed from: for, reason: not valid java name */
    private final yn1 f17799for;

    /* renamed from: goto, reason: not valid java name */
    private final int f17800goto;

    /* renamed from: if, reason: not valid java name */
    private final yn1 f17801if;

    /* renamed from: new, reason: not valid java name */
    private final yn1 f17802new;

    /* renamed from: this, reason: not valid java name */
    private final int f17803this;

    /* renamed from: try, reason: not valid java name */
    private final yn1 f17804try;

    public Cfor(z8 z8Var, yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, yn1 yn1Var4) throws j41 {
        boolean z = yn1Var == null || yn1Var2 == null;
        boolean z2 = yn1Var3 == null || yn1Var4 == null;
        if (z && z2) {
            throw j41.getNotFoundInstance();
        }
        if (z) {
            yn1Var = new yn1(0.0f, yn1Var3.m9912new());
            yn1Var2 = new yn1(0.0f, yn1Var4.m9912new());
        } else if (z2) {
            yn1Var3 = new yn1(z8Var.m10091class() - 1, yn1Var.m9912new());
            yn1Var4 = new yn1(z8Var.m10091class() - 1, yn1Var2.m9912new());
        }
        this.f17797do = z8Var;
        this.f17801if = yn1Var;
        this.f17799for = yn1Var2;
        this.f17802new = yn1Var3;
        this.f17804try = yn1Var4;
        this.f17796case = (int) Math.min(yn1Var.m9911for(), yn1Var2.m9911for());
        this.f17798else = (int) Math.max(yn1Var3.m9911for(), yn1Var4.m9911for());
        this.f17800goto = (int) Math.min(yn1Var.m9912new(), yn1Var3.m9912new());
        this.f17803this = (int) Math.max(yn1Var2.m9912new(), yn1Var4.m9912new());
    }

    /* renamed from: break, reason: not valid java name */
    public static Cfor m22232break(Cfor cfor, Cfor cfor2) throws j41 {
        return cfor == null ? cfor2 : cfor2 == null ? cfor : new Cfor(cfor.f17797do, cfor.f17801if, cfor.f17799for, cfor2.f17802new, cfor2.f17804try);
    }

    /* renamed from: case, reason: not valid java name */
    public int m22233case() {
        return this.f17796case;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Cfor m22234do(int i, int i2, boolean z) throws j41 {
        yn1 yn1Var;
        yn1 yn1Var2;
        yn1 yn1Var3;
        yn1 yn1Var4;
        yn1 yn1Var5 = this.f17801if;
        yn1 yn1Var6 = this.f17799for;
        yn1 yn1Var7 = this.f17802new;
        yn1 yn1Var8 = this.f17804try;
        if (i > 0) {
            yn1 yn1Var9 = z ? yn1Var5 : yn1Var7;
            int iM9912new = ((int) yn1Var9.m9912new()) - i;
            if (iM9912new < 0) {
                iM9912new = 0;
            }
            yn1 yn1Var10 = new yn1(yn1Var9.m9911for(), iM9912new);
            if (!z) {
                yn1Var2 = yn1Var10;
                yn1Var = yn1Var5;
                if (i2 <= 0) {
                    yn1 yn1Var11 = z ? this.f17799for : this.f17804try;
                    int iM9912new2 = ((int) yn1Var11.m9912new()) + i2;
                    if (iM9912new2 >= this.f17797do.m10094goto()) {
                        iM9912new2 = this.f17797do.m10094goto() - 1;
                    }
                    yn1 yn1Var12 = new yn1(yn1Var11.m9911for(), iM9912new2);
                    if (!z) {
                        yn1Var4 = yn1Var12;
                        yn1Var3 = yn1Var6;
                        return new Cfor(this.f17797do, yn1Var, yn1Var3, yn1Var2, yn1Var4);
                    }
                    yn1Var3 = yn1Var12;
                } else {
                    yn1Var3 = yn1Var6;
                }
                yn1Var4 = yn1Var8;
                return new Cfor(this.f17797do, yn1Var, yn1Var3, yn1Var2, yn1Var4);
            }
            yn1Var = yn1Var10;
        } else {
            yn1Var = yn1Var5;
        }
        yn1Var2 = yn1Var7;
        if (i2 <= 0) {
        }
        yn1Var4 = yn1Var8;
        return new Cfor(this.f17797do, yn1Var, yn1Var3, yn1Var2, yn1Var4);
    }

    /* renamed from: else, reason: not valid java name */
    public int m22235else() {
        return this.f17800goto;
    }

    /* renamed from: for, reason: not valid java name */
    public yn1 m22236for() {
        return this.f17804try;
    }

    /* renamed from: goto, reason: not valid java name */
    public yn1 m22237goto() {
        return this.f17801if;
    }

    /* renamed from: if, reason: not valid java name */
    public yn1 m22238if() {
        return this.f17799for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m22239new() {
        return this.f17798else;
    }

    /* renamed from: this, reason: not valid java name */
    public yn1 m22240this() {
        return this.f17802new;
    }

    /* renamed from: try, reason: not valid java name */
    public int m22241try() {
        return this.f17803this;
    }

    public Cfor(Cfor cfor) {
        this.f17797do = cfor.f17797do;
        this.f17801if = cfor.m22237goto();
        this.f17799for = cfor.m22238if();
        this.f17802new = cfor.m22240this();
        this.f17804try = cfor.m22236for();
        this.f17796case = cfor.m22233case();
        this.f17798else = cfor.m22239new();
        this.f17800goto = cfor.m22235else();
        this.f17803this = cfor.m22241try();
    }
}
