package org.antlr.v4.runtime.dfa;

import android.support.v4.Cthrows;
import android.support.v4.au;
import android.support.v4.cf2;
import android.support.v4.j12;
import android.support.v4.jx;
import android.support.v4.ns0;
import android.support.v4.zt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.antlr.v4.runtime.Vocabulary;

/* renamed from: org.antlr.v4.runtime.dfa.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public final Map<au, au> f28535do;

    /* renamed from: for, reason: not valid java name */
    public final int f28536for;

    /* renamed from: if, reason: not valid java name */
    public volatile au f28537if;

    /* renamed from: new, reason: not valid java name */
    public final jx f28538new;

    /* renamed from: try, reason: not valid java name */
    private final boolean f28539try;

    /* renamed from: org.antlr.v4.runtime.dfa.do$do, reason: invalid class name and collision with other inner class name */
    public class C0384do implements Comparator<au> {
        public C0384do() {
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(au auVar, au auVar2) {
            return auVar.f236do - auVar2.f236do;
        }
    }

    public Cdo(jx jxVar) {
        this(jxVar, 0);
    }

    /* renamed from: case, reason: not valid java name */
    public String m31968case() {
        return this.f28537if == null ? "" : new ns0(this).toString();
    }

    /* renamed from: do, reason: not valid java name */
    public final au m31969do(int i) {
        if (!m31971for()) {
            throw new IllegalStateException("Only precedence DFAs may contain a precedence start state.");
        }
        if (i < 0 || i >= this.f28537if.f238for.length) {
            return null;
        }
        return this.f28537if.f238for[i];
    }

    /* renamed from: else, reason: not valid java name */
    public String m31970else(Vocabulary vocabulary) {
        return this.f28537if == null ? "" : new zt(this, vocabulary).toString();
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m31971for() {
        return this.f28539try;
    }

    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    public String m31972goto(String[] strArr) {
        return this.f28537if == null ? "" : new zt(this, strArr).toString();
    }

    /* renamed from: if, reason: not valid java name */
    public List<au> m31973if() {
        ArrayList arrayList = new ArrayList(this.f28535do.keySet());
        Collections.sort(arrayList, new C0384do());
        return arrayList;
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public final void m31974new(boolean z) {
        if (z != m31971for()) {
            throw new UnsupportedOperationException("The precedenceDfa field cannot change after a DFA is constructed.");
        }
    }

    public String toString() {
        return m31970else(cf2.f763case);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m31975try(int i, au auVar) {
        if (!m31971for()) {
            throw new IllegalStateException("Only precedence DFAs may contain a precedence start state.");
        }
        if (i < 0) {
            return;
        }
        synchronized (this.f28537if) {
            if (i >= this.f28537if.f238for.length) {
                this.f28537if.f238for = (au[]) Arrays.copyOf(this.f28537if.f238for, i + 1);
            }
            this.f28537if.f238for[i] = auVar;
        }
    }

    public Cdo(jx jxVar, int i) {
        this.f28535do = new HashMap();
        this.f28538new = jxVar;
        this.f28536for = i;
        boolean z = false;
        if ((jxVar instanceof j12) && ((j12) jxVar).f2956extends) {
            au auVar = new au(new Cthrows());
            auVar.f238for = new au[0];
            auVar.f241new = false;
            auVar.f237else = false;
            this.f28537if = auVar;
            z = true;
        }
        this.f28539try = z;
    }
}
