package com.google.protobuf;

import android.support.v4.e62;
import com.google.protobuf.Descriptors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class k1 {

    /* renamed from: do, reason: not valid java name */
    private Map<Descriptors.Celse, List<e62>> f17049do;

    /* renamed from: if, reason: not valid java name */
    public Map<Descriptors.Celse, List<k1>> f17050if;

    /* renamed from: com.google.protobuf.k1$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private Map<Descriptors.Celse, List<e62>> f17051do;

        /* renamed from: if, reason: not valid java name */
        private Map<Descriptors.Celse, List<Cif>> f17052if;

        /* renamed from: do, reason: not valid java name */
        public k1 m20776do() {
            return new k1(this.f17051do, this.f17052if);
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m20777for(Descriptors.Celse celse, e62 e62Var) {
            List<e62> arrayList = this.f17051do.get(celse);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f17051do.put(celse, arrayList);
            }
            arrayList.add(e62Var);
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m20778if(Descriptors.Celse celse) {
            List<Cif> arrayList = this.f17052if.get(celse);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f17052if.put(celse, arrayList);
            }
            Cif cif = new Cif();
            arrayList.add(cif);
            return cif;
        }

        private Cif() {
            this.f17051do = new HashMap();
            this.f17052if = new HashMap();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m20770do() {
        return new Cif();
    }

    /* renamed from: if, reason: not valid java name */
    private static <T> T m20771if(List<T> list, int i, Descriptors.Celse celse) {
        if (i < list.size() && i >= 0) {
            return list.get(i);
        }
        Object[] objArr = new Object[2];
        objArr[0] = celse == null ? "<null>" : celse.mo19234for();
        objArr[1] = Integer.valueOf(i);
        throw new IllegalArgumentException(String.format("Illegal index field: %s, index %d", objArr));
    }

    /* renamed from: case, reason: not valid java name */
    public List<k1> m20772case(Descriptors.Celse celse) {
        List<k1> list = this.f17050if.get(celse);
        return list == null ? Collections.emptyList() : list;
    }

    /* renamed from: for, reason: not valid java name */
    public e62 m20773for(Descriptors.Celse celse, int i) {
        return (e62) m20771if(m20774new(celse), i, celse);
    }

    /* renamed from: new, reason: not valid java name */
    public List<e62> m20774new(Descriptors.Celse celse) {
        List<e62> list = this.f17049do.get(celse);
        return list == null ? Collections.emptyList() : list;
    }

    /* renamed from: try, reason: not valid java name */
    public k1 m20775try(Descriptors.Celse celse, int i) {
        return (k1) m20771if(m20772case(celse), i, celse);
    }

    private k1(Map<Descriptors.Celse, List<e62>> map, Map<Descriptors.Celse, List<Cif>> map2) {
        HashMap map3 = new HashMap();
        for (Map.Entry<Descriptors.Celse, List<e62>> entry : map.entrySet()) {
            map3.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
        }
        this.f17049do = Collections.unmodifiableMap(map3);
        HashMap map4 = new HashMap();
        for (Map.Entry<Descriptors.Celse, List<Cif>> entry2 : map2.entrySet()) {
            ArrayList arrayList = new ArrayList();
            Iterator<Cif> it = entry2.getValue().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().m20776do());
            }
            map4.put(entry2.getKey(), Collections.unmodifiableList(arrayList));
        }
        this.f17050if = Collections.unmodifiableMap(map4);
    }
}
