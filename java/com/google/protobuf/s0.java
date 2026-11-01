package com.google.protobuf;

import com.google.protobuf.Internal;

/* loaded from: classes2.dex */
final class s0 {
    private s0() {
    }

    /* renamed from: break, reason: not valid java name */
    public static Internal.FloatList m21121break() {
        return new h();
    }

    /* renamed from: case, reason: not valid java name */
    public static <E> Internal.ProtobufList<E> m21122case() {
        return r0.m21045for();
    }

    /* renamed from: catch, reason: not valid java name */
    public static Internal.IntList m21123catch() {
        return new m();
    }

    /* renamed from: class, reason: not valid java name */
    public static Internal.LongList m21124class() {
        return new v();
    }

    /* renamed from: do, reason: not valid java name */
    public static Internal.BooleanList m21125do() {
        return Cconst.m20167try();
    }

    /* renamed from: else, reason: not valid java name */
    public static <E> Internal.ProtobufList<E> m21126else(Internal.ProtobufList<E> protobufList) {
        int size = protobufList.size();
        return protobufList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    /* renamed from: for, reason: not valid java name */
    public static Internal.FloatList m21127for() {
        return h.m20546try();
    }

    /* renamed from: goto, reason: not valid java name */
    public static Internal.BooleanList m21128goto() {
        return new Cconst();
    }

    /* renamed from: if, reason: not valid java name */
    public static Internal.DoubleList m21129if() {
        return Cswitch.m21167try();
    }

    /* renamed from: new, reason: not valid java name */
    public static Internal.IntList m21130new() {
        return m.m20821try();
    }

    /* renamed from: this, reason: not valid java name */
    public static Internal.DoubleList m21131this() {
        return new Cswitch();
    }

    /* renamed from: try, reason: not valid java name */
    public static Internal.LongList m21132try() {
        return v.m21442try();
    }
}
