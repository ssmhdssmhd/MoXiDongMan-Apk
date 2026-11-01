package com.wsw.cospa.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.load.model.LazyHeaderFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.wsw.cospa.utils.strictfp, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cstrictfp implements Headers {

    /* renamed from: do, reason: not valid java name */
    private final Map<String, List<LazyHeaderFactory>> f22722do;

    /* renamed from: if, reason: not valid java name */
    private volatile Map<String, String> f22723if;

    /* renamed from: com.wsw.cospa.utils.strictfp$for, reason: invalid class name */
    public static final class Cfor implements LazyHeaderFactory {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final String f22724do;

        public Cfor(@NonNull String str) {
            this.f22724do = str;
        }

        @Override // com.bumptech.glide.load.model.LazyHeaderFactory
        public String buildHeader() {
            return this.f22724do;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cfor) {
                return this.f22724do.equals(((Cfor) obj).f22724do);
            }
            return false;
        }

        public int hashCode() {
            return this.f22724do.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f22724do + '\'' + MessageFormatter.DELIM_STOP;
        }
    }

    /* renamed from: com.wsw.cospa.utils.strictfp$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: new, reason: not valid java name */
        private static final String f22726new = "User-Agent";

        /* renamed from: try, reason: not valid java name */
        private static final String f22727try = m27069else();

        /* renamed from: case, reason: not valid java name */
        private static final Map<String, List<LazyHeaderFactory>> f22725case = Collections.unmodifiableMap(new HashMap(2));

        /* renamed from: do, reason: not valid java name */
        private boolean f22728do = true;

        /* renamed from: if, reason: not valid java name */
        private Map<String, List<LazyHeaderFactory>> f22730if = f22725case;

        /* renamed from: for, reason: not valid java name */
        private boolean f22729for = true;

        /* renamed from: case, reason: not valid java name */
        private List<LazyHeaderFactory> m27068case(String str) {
            List<LazyHeaderFactory> list = this.f22730if.get(str);
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            this.f22730if.put(str, arrayList);
            return arrayList;
        }

        @VisibleForTesting
        /* renamed from: else, reason: not valid java name */
        public static String m27069else() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char cCharAt = property.charAt(i);
                if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                    sb.append(cCharAt);
                } else {
                    sb.append('?');
                }
            }
            return sb.toString();
        }

        /* renamed from: new, reason: not valid java name */
        private Map<String, List<LazyHeaderFactory>> m27070new() {
            HashMap map = new HashMap(this.f22730if.size());
            for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f22730if.entrySet()) {
                map.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return map;
        }

        /* renamed from: try, reason: not valid java name */
        private void m27071try() {
            if (this.f22728do) {
                this.f22728do = false;
                this.f22730if = m27070new();
            }
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m27072do(@NonNull String str, @NonNull LazyHeaderFactory lazyHeaderFactory) {
            if (this.f22729for && "User-Agent".equalsIgnoreCase(str)) {
                return m27074goto(str, lazyHeaderFactory);
            }
            m27071try();
            m27068case(str).add(lazyHeaderFactory);
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cstrictfp m27073for() {
            this.f22728do = true;
            return new Cstrictfp(this.f22730if);
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m27074goto(@NonNull String str, @Nullable LazyHeaderFactory lazyHeaderFactory) {
            m27071try();
            if (lazyHeaderFactory == null) {
                this.f22730if.remove(str);
            } else {
                List<LazyHeaderFactory> listM27068case = m27068case(str);
                listM27068case.clear();
                listM27068case.add(lazyHeaderFactory);
            }
            if (this.f22729for && "User-Agent".equalsIgnoreCase(str)) {
                this.f22729for = false;
            }
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m27075if(@NonNull String str, @NonNull String str2) {
            return m27072do(str, new Cfor(str2));
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m27076this(@NonNull String str, @Nullable String str2) {
            return m27074goto(str, str2 == null ? null : new Cfor(str2));
        }
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    private String m27066do(@NonNull List<LazyHeaderFactory> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            String strBuildHeader = list.get(i).buildHeader();
            if (!TextUtils.isEmpty(strBuildHeader)) {
                sb.append(strBuildHeader);
                if (i != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: if, reason: not valid java name */
    private Map<String, String> m27067if() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f22722do.entrySet()) {
            String strM27066do = m27066do(entry.getValue());
            if (!TextUtils.isEmpty(strM27066do)) {
                map.put(entry.getKey(), strM27066do);
            }
        }
        return map;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cstrictfp) {
            return this.f22722do.equals(((Cstrictfp) obj).f22722do);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.Headers
    public Map<String, String> getHeaders() {
        if (this.f22723if == null) {
            synchronized (this) {
                if (this.f22723if == null) {
                    this.f22723if = Collections.unmodifiableMap(m27067if());
                }
            }
        }
        return this.f22723if;
    }

    public int hashCode() {
        return this.f22722do.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f22722do + MessageFormatter.DELIM_STOP;
    }

    private Cstrictfp(Map<String, List<LazyHeaderFactory>> map) {
        this.f22722do = Collections.unmodifiableMap(map);
    }
}
