package com.google.protobuf;

import android.support.v4.on0;
import com.google.protobuf.Descriptors;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class p1 {

    /* renamed from: if, reason: not valid java name */
    private static final Logger f17144if = Logger.getLogger(p1.class.getName());

    /* renamed from: do, reason: not valid java name */
    private final Map<String, Descriptors.Cif> f17145do;

    /* renamed from: com.google.protobuf.p1$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        private static final p1 f17146do = new p1(Collections.emptyMap());

        private Cfor() {
        }
    }

    /* renamed from: com.google.protobuf.p1$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Set<String> f17147do;

        /* renamed from: if, reason: not valid java name */
        private Map<String, Descriptors.Cif> f17148if;

        /* renamed from: for, reason: not valid java name */
        private void m20948for(Descriptors.FileDescriptor fileDescriptor) {
            if (this.f17147do.add(fileDescriptor.mo19235if())) {
                Iterator<Descriptors.FileDescriptor> it = fileDescriptor.m19233final().iterator();
                while (it.hasNext()) {
                    m20948for(it.next());
                }
                Iterator<Descriptors.Cif> it2 = fileDescriptor.m19244while().iterator();
                while (it2.hasNext()) {
                    m20949new(it2.next());
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        private void m20949new(Descriptors.Cif cif) {
            Iterator<Descriptors.Cif> it = cif.m19337while().iterator();
            while (it.hasNext()) {
                m20949new(it.next());
            }
            if (!this.f17148if.containsKey(cif.mo19235if())) {
                this.f17148if.put(cif.mo19235if(), cif);
                return;
            }
            Logger logger = p1.f17144if;
            String strMo19235if = cif.mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 30);
            sb.append("Type ");
            sb.append(strMo19235if);
            sb.append(" is added multiple times.");
            logger.warning(sb.toString());
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m20950do(Descriptors.Cif cif) {
            if (this.f17148if == null) {
                throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
            }
            m20948for(cif.mo19232do());
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m20951if(Iterable<Descriptors.Cif> iterable) {
            if (this.f17148if == null) {
                throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
            }
            Iterator<Descriptors.Cif> it = iterable.iterator();
            while (it.hasNext()) {
                m20948for(it.next().mo19232do());
            }
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public p1 m20952try() {
            p1 p1Var = new p1(this.f17148if);
            this.f17148if = null;
            return p1Var;
        }

        private Cif() {
            this.f17147do = new HashSet();
            this.f17148if = new HashMap();
        }
    }

    public p1(Map<String, Descriptors.Cif> map) {
        this.f17145do = map;
    }

    /* renamed from: case, reason: not valid java name */
    public static Cif m20941case() {
        return new Cif();
    }

    /* renamed from: new, reason: not valid java name */
    public static p1 m20943new() {
        return Cfor.f17146do;
    }

    /* renamed from: try, reason: not valid java name */
    private static String m20944try(String str) throws n {
        String[] strArrSplit = str.split(on0.f4694final);
        if (strArrSplit.length == 1) {
            throw new n(str.length() != 0 ? "Invalid type url found: ".concat(str) : new String("Invalid type url found: "));
        }
        return strArrSplit[strArrSplit.length - 1];
    }

    /* renamed from: for, reason: not valid java name */
    public final Descriptors.Cif m20945for(String str) throws n {
        return m20946if(m20944try(str));
    }

    /* renamed from: if, reason: not valid java name */
    public Descriptors.Cif m20946if(String str) {
        return this.f17145do.get(str);
    }
}
