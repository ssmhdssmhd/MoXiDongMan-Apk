package cc.shinichi.library.view;

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

/* renamed from: cc.shinichi.library.view.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo implements Headers {

    /* renamed from: do, reason: not valid java name */
    private final Map<String, List<LazyHeaderFactory>> f8830do;

    /* renamed from: if, reason: not valid java name */
    private volatile Map<String, String> f8831if;

    /* renamed from: cc.shinichi.library.view.do$for, reason: invalid class name */
    public static final class Cfor implements LazyHeaderFactory {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final String f8832do;

        public Cfor(@NonNull String str) {
            this.f8832do = str;
        }

        @Override // com.bumptech.glide.load.model.LazyHeaderFactory
        public String buildHeader() {
            return this.f8832do;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cfor) {
                return this.f8832do.equals(((Cfor) obj).f8832do);
            }
            return false;
        }

        public int hashCode() {
            return this.f8832do.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f8832do + '\'' + MessageFormatter.DELIM_STOP;
        }
    }

    /* renamed from: cc.shinichi.library.view.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: new, reason: not valid java name */
        private static final String f8834new = "User-Agent";

        /* renamed from: try, reason: not valid java name */
        private static final String f8835try = m10544else();

        /* renamed from: case, reason: not valid java name */
        private static final Map<String, List<LazyHeaderFactory>> f8833case = Collections.unmodifiableMap(new HashMap(2));

        /* renamed from: do, reason: not valid java name */
        private boolean f8836do = true;

        /* renamed from: if, reason: not valid java name */
        private Map<String, List<LazyHeaderFactory>> f8838if = f8833case;

        /* renamed from: for, reason: not valid java name */
        private boolean f8837for = true;

        /* renamed from: case, reason: not valid java name */
        private List<LazyHeaderFactory> m10543case(String str) {
            List<LazyHeaderFactory> list = this.f8838if.get(str);
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            this.f8838if.put(str, arrayList);
            return arrayList;
        }

        @VisibleForTesting
        /* renamed from: else, reason: not valid java name */
        public static String m10544else() {
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
        private Map<String, List<LazyHeaderFactory>> m10545new() {
            HashMap map = new HashMap(this.f8838if.size());
            for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f8838if.entrySet()) {
                map.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return map;
        }

        /* renamed from: try, reason: not valid java name */
        private void m10546try() {
            if (this.f8836do) {
                this.f8836do = false;
                this.f8838if = m10545new();
            }
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m10547do(@NonNull String str, @NonNull LazyHeaderFactory lazyHeaderFactory) {
            if (this.f8837for && "User-Agent".equalsIgnoreCase(str)) {
                return m10549goto(str, lazyHeaderFactory);
            }
            m10546try();
            m10543case(str).add(lazyHeaderFactory);
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cdo m10548for() {
            this.f8836do = true;
            return new Cdo(this.f8838if);
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m10549goto(@NonNull String str, @Nullable LazyHeaderFactory lazyHeaderFactory) {
            m10546try();
            if (lazyHeaderFactory == null) {
                this.f8838if.remove(str);
            } else {
                List<LazyHeaderFactory> listM10543case = m10543case(str);
                listM10543case.clear();
                listM10543case.add(lazyHeaderFactory);
            }
            if (this.f8837for && "User-Agent".equalsIgnoreCase(str)) {
                this.f8837for = false;
            }
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m10550if(@NonNull String str, @NonNull String str2) {
            return m10547do(str, new Cfor(str2));
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m10551this(@NonNull String str, @Nullable String str2) {
            return m10549goto(str, str2 == null ? null : new Cfor(str2));
        }
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    private String m10541do(@NonNull List<LazyHeaderFactory> list) {
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
    private Map<String, String> m10542if() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f8830do.entrySet()) {
            String strM10541do = m10541do(entry.getValue());
            if (!TextUtils.isEmpty(strM10541do)) {
                map.put(entry.getKey(), strM10541do);
            }
        }
        return map;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cdo) {
            return this.f8830do.equals(((Cdo) obj).f8830do);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.Headers
    public Map<String, String> getHeaders() {
        if (this.f8831if == null) {
            synchronized (this) {
                if (this.f8831if == null) {
                    this.f8831if = Collections.unmodifiableMap(m10542if());
                }
            }
        }
        return this.f8831if;
    }

    public int hashCode() {
        return this.f8830do.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f8830do + MessageFormatter.DELIM_STOP;
    }

    private Cdo(Map<String, List<LazyHeaderFactory>> map) {
        this.f8830do = Collections.unmodifiableMap(map);
    }
}
