package com.bumptech.glide.load.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.model.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements Headers {

    /* renamed from: do, reason: not valid java name */
    private final Map<String, List<LazyHeaderFactory>> f10004do;

    /* renamed from: if, reason: not valid java name */
    private volatile Map<String, String> f10005if;

    /* renamed from: com.bumptech.glide.load.model.for$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: case, reason: not valid java name */
        private static final Map<String, List<LazyHeaderFactory>> f10006case;

        /* renamed from: new, reason: not valid java name */
        private static final String f10007new = "User-Agent";

        /* renamed from: try, reason: not valid java name */
        private static final String f10008try;

        /* renamed from: do, reason: not valid java name */
        private boolean f10009do = true;

        /* renamed from: if, reason: not valid java name */
        private Map<String, List<LazyHeaderFactory>> f10011if = f10006case;

        /* renamed from: for, reason: not valid java name */
        private boolean f10010for = true;

        static {
            String strM11635else = m11635else();
            f10008try = strM11635else;
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(strM11635else)) {
                map.put("User-Agent", Collections.singletonList(new Cif(strM11635else)));
            }
            f10006case = Collections.unmodifiableMap(map);
        }

        /* renamed from: case, reason: not valid java name */
        private List<LazyHeaderFactory> m11634case(String str) {
            List<LazyHeaderFactory> list = this.f10011if.get(str);
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            this.f10011if.put(str, arrayList);
            return arrayList;
        }

        @VisibleForTesting
        /* renamed from: else, reason: not valid java name */
        public static String m11635else() {
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
        private Map<String, List<LazyHeaderFactory>> m11636new() {
            HashMap map = new HashMap(this.f10011if.size());
            for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f10011if.entrySet()) {
                map.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return map;
        }

        /* renamed from: try, reason: not valid java name */
        private void m11637try() {
            if (this.f10009do) {
                this.f10009do = false;
                this.f10011if = m11636new();
            }
        }

        /* renamed from: do, reason: not valid java name */
        public Cdo m11638do(@NonNull String str, @NonNull LazyHeaderFactory lazyHeaderFactory) {
            if (this.f10010for && "User-Agent".equalsIgnoreCase(str)) {
                return m11640goto(str, lazyHeaderFactory);
            }
            m11637try();
            m11634case(str).add(lazyHeaderFactory);
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cfor m11639for() {
            this.f10009do = true;
            return new Cfor(this.f10011if);
        }

        /* renamed from: goto, reason: not valid java name */
        public Cdo m11640goto(@NonNull String str, @Nullable LazyHeaderFactory lazyHeaderFactory) {
            m11637try();
            if (lazyHeaderFactory == null) {
                this.f10011if.remove(str);
            } else {
                List<LazyHeaderFactory> listM11634case = m11634case(str);
                listM11634case.clear();
                listM11634case.add(lazyHeaderFactory);
            }
            if (this.f10010for && "User-Agent".equalsIgnoreCase(str)) {
                this.f10010for = false;
            }
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cdo m11641if(@NonNull String str, @NonNull String str2) {
            return m11638do(str, new Cif(str2));
        }

        /* renamed from: this, reason: not valid java name */
        public Cdo m11642this(@NonNull String str, @Nullable String str2) {
            return m11640goto(str, str2 == null ? null : new Cif(str2));
        }
    }

    /* renamed from: com.bumptech.glide.load.model.for$if, reason: invalid class name */
    public static final class Cif implements LazyHeaderFactory {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final String f10012do;

        public Cif(@NonNull String str) {
            this.f10012do = str;
        }

        @Override // com.bumptech.glide.load.model.LazyHeaderFactory
        public String buildHeader() {
            return this.f10012do;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cif) {
                return this.f10012do.equals(((Cif) obj).f10012do);
            }
            return false;
        }

        public int hashCode() {
            return this.f10012do.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f10012do + '\'' + MessageFormatter.DELIM_STOP;
        }
    }

    public Cfor(Map<String, List<LazyHeaderFactory>> map) {
        this.f10004do = Collections.unmodifiableMap(map);
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    private String m11632do(@NonNull List<LazyHeaderFactory> list) {
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
    private Map<String, String> m11633if() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f10004do.entrySet()) {
            String strM11632do = m11632do(entry.getValue());
            if (!TextUtils.isEmpty(strM11632do)) {
                map.put(entry.getKey(), strM11632do);
            }
        }
        return map;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cfor) {
            return this.f10004do.equals(((Cfor) obj).f10004do);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.Headers
    public Map<String, String> getHeaders() {
        if (this.f10005if == null) {
            synchronized (this) {
                if (this.f10005if == null) {
                    this.f10005if = Collections.unmodifiableMap(m11633if());
                }
            }
        }
        return this.f10005if;
    }

    public int hashCode() {
        return this.f10004do.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f10004do + MessageFormatter.DELIM_STOP;
    }
}
