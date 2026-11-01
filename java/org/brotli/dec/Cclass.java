package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.brotli.dec.class, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cclass {
    public int a;

    /* renamed from: abstract, reason: not valid java name */
    public int f32810abstract;
    public int b;

    /* renamed from: break, reason: not valid java name */
    public boolean f32811break;
    public int c;

    /* renamed from: continue, reason: not valid java name */
    public int f32816continue;

    /* renamed from: default, reason: not valid java name */
    public int f32817default;

    /* renamed from: else, reason: not valid java name */
    public int f32819else;

    /* renamed from: extends, reason: not valid java name */
    public byte[] f32820extends;

    /* renamed from: finally, reason: not valid java name */
    public byte[] f32822finally;

    /* renamed from: goto, reason: not valid java name */
    public boolean f32824goto;
    public int h;
    public int i;

    /* renamed from: if, reason: not valid java name */
    public int f32825if;

    /* renamed from: implements, reason: not valid java name */
    public int f32826implements;

    /* renamed from: instanceof, reason: not valid java name */
    public int f32828instanceof;

    /* renamed from: interface, reason: not valid java name */
    public byte[] f32829interface;
    public int j;
    public int k;
    public int l;
    public byte[] m;

    /* renamed from: new, reason: not valid java name */
    public byte[] f32831new;

    /* renamed from: package, reason: not valid java name */
    public int f32832package;

    /* renamed from: private, reason: not valid java name */
    public int f32833private;

    /* renamed from: protected, reason: not valid java name */
    public int f32834protected;

    /* renamed from: strictfp, reason: not valid java name */
    public int f32838strictfp;

    /* renamed from: switch, reason: not valid java name */
    public int f32840switch;

    /* renamed from: synchronized, reason: not valid java name */
    public int f32841synchronized;

    /* renamed from: this, reason: not valid java name */
    public boolean f32842this;

    /* renamed from: throws, reason: not valid java name */
    public int f32844throws;

    /* renamed from: transient, reason: not valid java name */
    public int f32845transient;

    /* renamed from: volatile, reason: not valid java name */
    public int f32847volatile;

    /* renamed from: do, reason: not valid java name */
    public int f32818do = 0;

    /* renamed from: for, reason: not valid java name */
    public final Cdo f32823for = new Cdo();

    /* renamed from: try, reason: not valid java name */
    public final int[] f32846try = new int[3240];

    /* renamed from: case, reason: not valid java name */
    public final int[] f32812case = new int[3240];

    /* renamed from: catch, reason: not valid java name */
    public final Cgoto f32813catch = new Cgoto();

    /* renamed from: class, reason: not valid java name */
    public final Cgoto f32814class = new Cgoto();

    /* renamed from: const, reason: not valid java name */
    public final Cgoto f32815const = new Cgoto();

    /* renamed from: final, reason: not valid java name */
    public final int[] f32821final = new int[3];

    /* renamed from: super, reason: not valid java name */
    public final int[] f32839super = new int[3];

    /* renamed from: throw, reason: not valid java name */
    public final int[] f32843throw = new int[6];

    /* renamed from: while, reason: not valid java name */
    public final int[] f32848while = {16, 15, 11, 4};

    /* renamed from: import, reason: not valid java name */
    public int f32827import = 0;

    /* renamed from: native, reason: not valid java name */
    public int f32830native = 0;

    /* renamed from: public, reason: not valid java name */
    public int f32835public = 0;

    /* renamed from: return, reason: not valid java name */
    public boolean f32836return = false;

    /* renamed from: static, reason: not valid java name */
    public int f32837static = 0;
    public int d = 0;
    public long e = 0;
    public byte[] f = new byte[0];
    public int g = 0;

    /* renamed from: do, reason: not valid java name */
    public static void m36650do(Cclass cclass) throws IOException {
        int i = cclass.f32818do;
        if (i == 0) {
            throw new IllegalStateException("State MUST be initialized");
        }
        if (i == 11) {
            return;
        }
        cclass.f32818do = 11;
        Cdo.m36662if(cclass.f32823for);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m36651for(Cclass cclass, InputStream inputStream) throws IOException {
        if (cclass.f32818do != 0) {
            throw new IllegalStateException("State MUST be uninitialized");
        }
        Cdo.m36665try(cclass.f32823for, inputStream);
        int iM36652if = m36652if(cclass.f32823for);
        if (iM36652if == 9) {
            throw new Cfor("Invalid 'windowBits' code");
        }
        int i = 1 << iM36652if;
        cclass.c = i;
        cclass.b = i - 16;
        cclass.f32818do = 1;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m36652if(Cdo cdo) {
        if (Cdo.m36664this(cdo, 1) == 0) {
            return 16;
        }
        int iM36664this = Cdo.m36664this(cdo, 3);
        if (iM36664this != 0) {
            return iM36664this + 17;
        }
        int iM36664this2 = Cdo.m36664this(cdo, 3);
        if (iM36664this2 != 0) {
            return iM36664this2 + 8;
        }
        return 17;
    }
}
