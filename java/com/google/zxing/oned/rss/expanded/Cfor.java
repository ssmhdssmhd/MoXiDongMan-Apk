package com.google.zxing.oned.rss.expanded;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.zxing.oned.rss.expanded.for, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final List<Cif> f17716do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f17717for;

    /* renamed from: if, reason: not valid java name */
    private final int f17718if;

    public Cfor(List<Cif> list, int i, boolean z) {
        this.f17716do = new ArrayList(list);
        this.f17718if = i;
        this.f17717for = z;
    }

    /* renamed from: do, reason: not valid java name */
    public List<Cif> m22096do() {
        return this.f17716do;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        return this.f17716do.equals(cfor.m22096do()) && this.f17717for == cfor.f17717for;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m22097for(List<Cif> list) {
        return this.f17716do.equals(list);
    }

    public int hashCode() {
        return this.f17716do.hashCode() ^ Boolean.valueOf(this.f17717for).hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public int m22098if() {
        return this.f17718if;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m22099new() {
        return this.f17717for;
    }

    public String toString() {
        return "{ " + this.f17716do + " }";
    }
}
