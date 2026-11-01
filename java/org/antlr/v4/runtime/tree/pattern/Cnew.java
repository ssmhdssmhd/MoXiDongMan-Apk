package org.antlr.v4.runtime.tree.pattern;

/* renamed from: org.antlr.v4.runtime.tree.pattern.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew extends Cdo {

    /* renamed from: do, reason: not valid java name */
    private final String f28588do;

    public Cnew(String str) {
        if (str == null) {
            throw new IllegalArgumentException("text cannot be null");
        }
        this.f28588do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m32099do() {
        return this.f28588do;
    }

    public String toString() {
        return "'" + this.f28588do + "'";
    }
}
