package org.chromium.net.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicLong;
import org.chromium.net.Cstatic;

/* renamed from: org.chromium.net.impl.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis extends Cstatic {

    /* renamed from: case, reason: not valid java name */
    private final String f33683case;

    /* renamed from: do, reason: not valid java name */
    private final List<String> f33684do;

    /* renamed from: else, reason: not valid java name */
    private final AtomicLong f33685else;

    /* renamed from: for, reason: not valid java name */
    private final String f33686for;

    /* renamed from: goto, reason: not valid java name */
    private final Cdo f33687goto;

    /* renamed from: if, reason: not valid java name */
    private final int f33688if;

    /* renamed from: new, reason: not valid java name */
    private final boolean f33689new;

    /* renamed from: try, reason: not valid java name */
    private final String f33690try;

    /* renamed from: org.chromium.net.impl.this$do, reason: invalid class name */
    public static final class Cdo extends Cstatic.Cdo {

        /* renamed from: do, reason: not valid java name */
        private final List<Map.Entry<String, String>> f33691do;

        /* renamed from: if, reason: not valid java name */
        private Map<String, List<String>> f33692if;

        public Cdo(List<Map.Entry<String, String>> list) {
            this.f33691do = list;
        }

        @Override // org.chromium.net.Cstatic.Cdo
        /* renamed from: do, reason: not valid java name */
        public List<Map.Entry<String, String>> mo37706do() {
            return this.f33691do;
        }

        @Override // org.chromium.net.Cstatic.Cdo
        /* renamed from: if, reason: not valid java name */
        public Map<String, List<String>> mo37707if() {
            Map<String, List<String>> map = this.f33692if;
            if (map != null) {
                return map;
            }
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (Map.Entry<String, String> entry : this.f33691do) {
                ArrayList arrayList = new ArrayList();
                if (treeMap.containsKey(entry.getKey())) {
                    arrayList.addAll((Collection) treeMap.get(entry.getKey()));
                }
                arrayList.add(entry.getValue());
                treeMap.put(entry.getKey(), Collections.unmodifiableList(arrayList));
            }
            Map<String, List<String>> mapUnmodifiableMap = Collections.unmodifiableMap(treeMap);
            this.f33692if = mapUnmodifiableMap;
            return mapUnmodifiableMap;
        }
    }

    public Cthis(List<String> list, int i, String str, List<Map.Entry<String, String>> list2, boolean z, String str2, String str3, long j) {
        this.f33684do = Collections.unmodifiableList(list);
        this.f33688if = i;
        this.f33686for = str;
        this.f33687goto = new Cdo(Collections.unmodifiableList(list2));
        this.f33689new = z;
        this.f33690try = str2;
        this.f33683case = str3;
        this.f33685else = new AtomicLong(j);
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: break, reason: not valid java name */
    public boolean mo37695break() {
        return this.f33689new;
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: case, reason: not valid java name */
    public String mo37696case() {
        return this.f33683case;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m37697catch(long j) {
        this.f33685else.set(j);
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: do, reason: not valid java name */
    public Map<String, List<String>> mo37698do() {
        return this.f33687goto.mo37707if();
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: else, reason: not valid java name */
    public long mo37699else() {
        return this.f33685else.get();
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: for, reason: not valid java name */
    public int mo37700for() {
        return this.f33688if;
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: goto, reason: not valid java name */
    public String mo37701goto() {
        return this.f33684do.get(r0.size() - 1);
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: if, reason: not valid java name */
    public List<Map.Entry<String, String>> mo37702if() {
        return this.f33687goto.mo37706do();
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: new, reason: not valid java name */
    public String mo37703new() {
        return this.f33686for;
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: this, reason: not valid java name */
    public List<String> mo37704this() {
        return this.f33684do;
    }

    public String toString() {
        return String.format(Locale.ROOT, "UrlResponseInfo@[%s][%s]: urlChain = %s, httpStatus = %d %s, headers = %s, wasCached = %b, negotiatedProtocol = %s, proxyServer= %s, receivedByteCount = %d", Integer.toHexString(System.identityHashCode(this)), mo37701goto(), mo37704this().toString(), Integer.valueOf(mo37700for()), mo37703new(), mo37702if().toString(), Boolean.valueOf(mo37695break()), mo37705try(), mo37696case(), Long.valueOf(mo37699else()));
    }

    @Override // org.chromium.net.Cstatic
    /* renamed from: try, reason: not valid java name */
    public String mo37705try() {
        return this.f33690try;
    }

    @Deprecated
    public Cthis(List<String> list, int i, String str, List<Map.Entry<String, String>> list2, boolean z, String str2, String str3) {
        this(list, i, str, list2, z, str2, str3, 0L);
    }
}
