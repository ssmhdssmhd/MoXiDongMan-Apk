package com.google.common.cache;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.hy1;
import android.support.v4.l01;
import android.support.v4.li0;
import com.google.common.base.Csuper;
import com.google.common.base.Cthrow;
import com.google.common.base.Splitter;
import com.google.common.cache.LocalCache;
import com.google.common.collect.v0;
import com.google.common.collect.x0;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

@li0
/* loaded from: classes.dex */
public final class CacheBuilderSpec {

    /* renamed from: super, reason: not valid java name */
    private static final Splitter f13750super = Splitter.m14989goto(',').m15003while();

    /* renamed from: throw, reason: not valid java name */
    private static final Splitter f13751throw = Splitter.m14989goto(hy1.f2563new).m15003while();

    /* renamed from: while, reason: not valid java name */
    private static final x0<String, ValueParser> f13752while;

    /* renamed from: break, reason: not valid java name */
    @af2
    public long f13753break;

    /* renamed from: case, reason: not valid java name */
    @af2
    @l01
    public LocalCache.Cpublic f13754case;

    /* renamed from: catch, reason: not valid java name */
    @af2
    @l01
    public TimeUnit f13755catch;

    /* renamed from: class, reason: not valid java name */
    @af2
    public long f13756class;

    /* renamed from: const, reason: not valid java name */
    @af2
    @l01
    public TimeUnit f13757const;

    /* renamed from: do, reason: not valid java name */
    @af2
    @l01
    public Integer f13758do;

    /* renamed from: else, reason: not valid java name */
    @af2
    @l01
    public Boolean f13759else;

    /* renamed from: final, reason: not valid java name */
    private final String f13760final;

    /* renamed from: for, reason: not valid java name */
    @af2
    @l01
    public Long f13761for;

    /* renamed from: goto, reason: not valid java name */
    @af2
    public long f13762goto;

    /* renamed from: if, reason: not valid java name */
    @af2
    @l01
    public Long f13763if;

    /* renamed from: new, reason: not valid java name */
    @af2
    @l01
    public Integer f13764new;

    /* renamed from: this, reason: not valid java name */
    @af2
    @l01
    public TimeUnit f13765this;

    /* renamed from: try, reason: not valid java name */
    @af2
    @l01
    public LocalCache.Cpublic f13766try;

    public interface ValueParser {
        void parse(CacheBuilderSpec cacheBuilderSpec, String str, @b51 String str2);
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$break, reason: invalid class name */
    public static class Cbreak extends Cgoto {
        @Override // com.google.common.cache.CacheBuilderSpec.Cgoto
        /* renamed from: do, reason: not valid java name */
        public void mo15228do(CacheBuilderSpec cacheBuilderSpec, long j) {
            Long l = cacheBuilderSpec.f13761for;
            af1.m225return(l == null, "maximum weight was already set to ", l);
            Long l2 = cacheBuilderSpec.f13763if;
            af1.m225return(l2 == null, "maximum size was already set to ", l2);
            cacheBuilderSpec.f13761for = Long.valueOf(j);
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$case, reason: invalid class name */
    public static abstract class Ccase implements ValueParser {
        /* renamed from: do, reason: not valid java name */
        public abstract void mo15229do(CacheBuilderSpec cacheBuilderSpec, int i);

        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            af1.m225return((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                mo15229do(cacheBuilderSpec, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException(CacheBuilderSpec.m15224new("key %s value set to %s, must be integer", str, str2), e);
            }
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$catch, reason: invalid class name */
    public static class Ccatch implements ValueParser {
        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @b51 String str2) {
            af1.m235try(str2 == null, "recordStats does not take values");
            af1.m235try(cacheBuilderSpec.f13759else == null, "recordStats already set");
            cacheBuilderSpec.f13759else = Boolean.TRUE;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$class, reason: invalid class name */
    public static class Cclass extends Cnew {
        @Override // com.google.common.cache.CacheBuilderSpec.Cnew
        /* renamed from: do, reason: not valid java name */
        public void mo15230do(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            af1.m235try(cacheBuilderSpec.f13757const == null, "refreshAfterWrite already set");
            cacheBuilderSpec.f13756class = j;
            cacheBuilderSpec.f13757const = timeUnit;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$const, reason: invalid class name */
    public static class Cconst implements ValueParser {

        /* renamed from: do, reason: not valid java name */
        private final LocalCache.Cpublic f13767do;

        public Cconst(LocalCache.Cpublic cpublic) {
            this.f13767do = cpublic;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @b51 String str2) {
            af1.m225return(str2 == null, "key %s does not take values", str);
            LocalCache.Cpublic cpublic = cacheBuilderSpec.f13754case;
            af1.m206default(cpublic == null, "%s was already set to %s", str, cpublic);
            cacheBuilderSpec.f13754case = this.f13767do;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f13768do;

        static {
            int[] iArr = new int[LocalCache.Cpublic.values().length];
            f13768do = iArr;
            try {
                iArr[LocalCache.Cpublic.WEAK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13768do[LocalCache.Cpublic.SOFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$else, reason: invalid class name */
    public static class Celse implements ValueParser {

        /* renamed from: do, reason: not valid java name */
        private final LocalCache.Cpublic f13769do;

        public Celse(LocalCache.Cpublic cpublic) {
            this.f13769do = cpublic;
        }

        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, @b51 String str2) {
            af1.m225return(str2 == null, "key %s does not take values", str);
            LocalCache.Cpublic cpublic = cacheBuilderSpec.f13766try;
            af1.m206default(cpublic == null, "%s was already set to %s", str, cpublic);
            cacheBuilderSpec.f13766try = this.f13769do;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$final, reason: invalid class name */
    public static class Cfinal extends Cnew {
        @Override // com.google.common.cache.CacheBuilderSpec.Cnew
        /* renamed from: do */
        public void mo15230do(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            af1.m235try(cacheBuilderSpec.f13765this == null, "expireAfterWrite already set");
            cacheBuilderSpec.f13762goto = j;
            cacheBuilderSpec.f13765this = timeUnit;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$for, reason: invalid class name */
    public static class Cfor extends Ccase {
        @Override // com.google.common.cache.CacheBuilderSpec.Ccase
        /* renamed from: do */
        public void mo15229do(CacheBuilderSpec cacheBuilderSpec, int i) {
            Integer num = cacheBuilderSpec.f13764new;
            af1.m225return(num == null, "concurrency level was already set to ", num);
            cacheBuilderSpec.f13764new = Integer.valueOf(i);
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$goto, reason: invalid class name */
    public static abstract class Cgoto implements ValueParser {
        /* renamed from: do */
        public abstract void mo15228do(CacheBuilderSpec cacheBuilderSpec, long j);

        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            af1.m225return((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                mo15228do(cacheBuilderSpec, Long.parseLong(str2));
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException(CacheBuilderSpec.m15224new("key %s value set to %s, must be integer", str, str2), e);
            }
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$if, reason: invalid class name */
    public static class Cif extends Cnew {
        @Override // com.google.common.cache.CacheBuilderSpec.Cnew
        /* renamed from: do */
        public void mo15230do(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit) {
            af1.m235try(cacheBuilderSpec.f13755catch == null, "expireAfterAccess already set");
            cacheBuilderSpec.f13753break = j;
            cacheBuilderSpec.f13755catch = timeUnit;
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$new, reason: invalid class name */
    public static abstract class Cnew implements ValueParser {
        /* renamed from: do */
        public abstract void mo15230do(CacheBuilderSpec cacheBuilderSpec, long j, TimeUnit timeUnit);

        @Override // com.google.common.cache.CacheBuilderSpec.ValueParser
        public void parse(CacheBuilderSpec cacheBuilderSpec, String str, String str2) {
            TimeUnit timeUnit;
            af1.m225return((str2 == null || str2.isEmpty()) ? false : true, "value of key %s omitted", str);
            try {
                char cCharAt = str2.charAt(str2.length() - 1);
                if (cCharAt == 'd') {
                    timeUnit = TimeUnit.DAYS;
                } else if (cCharAt == 'h') {
                    timeUnit = TimeUnit.HOURS;
                } else if (cCharAt == 'm') {
                    timeUnit = TimeUnit.MINUTES;
                } else {
                    if (cCharAt != 's') {
                        throw new IllegalArgumentException(CacheBuilderSpec.m15224new("key %s invalid format.  was %s, must end with one of [dDhHmMsS]", str, str2));
                    }
                    timeUnit = TimeUnit.SECONDS;
                }
                mo15230do(cacheBuilderSpec, Long.parseLong(str2.substring(0, str2.length() - 1)), timeUnit);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException(CacheBuilderSpec.m15224new("key %s value set to %s, must be integer", str, str2));
            }
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$this, reason: invalid class name */
    public static class Cthis extends Cgoto {
        @Override // com.google.common.cache.CacheBuilderSpec.Cgoto
        /* renamed from: do */
        public void mo15228do(CacheBuilderSpec cacheBuilderSpec, long j) {
            Long l = cacheBuilderSpec.f13763if;
            af1.m225return(l == null, "maximum size was already set to ", l);
            Long l2 = cacheBuilderSpec.f13761for;
            af1.m225return(l2 == null, "maximum weight was already set to ", l2);
            cacheBuilderSpec.f13763if = Long.valueOf(j);
        }
    }

    /* renamed from: com.google.common.cache.CacheBuilderSpec$try, reason: invalid class name */
    public static class Ctry extends Ccase {
        @Override // com.google.common.cache.CacheBuilderSpec.Ccase
        /* renamed from: do */
        public void mo15229do(CacheBuilderSpec cacheBuilderSpec, int i) {
            Integer num = cacheBuilderSpec.f13758do;
            af1.m225return(num == null, "initial capacity was already set to ", num);
            cacheBuilderSpec.f13758do = Integer.valueOf(i);
        }
    }

    static {
        x0.Cif cifMo15869new = x0.builder().mo15869new("initialCapacity", new Ctry()).mo15869new("maximumSize", new Cthis()).mo15869new("maximumWeight", new Cbreak()).mo15869new("concurrencyLevel", new Cfor());
        LocalCache.Cpublic cpublic = LocalCache.Cpublic.WEAK;
        f13752while = cifMo15869new.mo15869new("weakKeys", new Celse(cpublic)).mo15869new("softValues", new Cconst(LocalCache.Cpublic.SOFT)).mo15869new("weakValues", new Cconst(cpublic)).mo15869new("recordStats", new Ccatch()).mo15869new("expireAfterAccess", new Cif()).mo15869new("expireAfterWrite", new Cfinal()).mo15869new("refreshAfterWrite", new Cclass()).mo15869new("refreshInterval", new Cclass()).mo15865do();
    }

    private CacheBuilderSpec(String str) {
        this.f13760final = str;
    }

    @b51
    /* renamed from: for, reason: not valid java name */
    private static Long m15222for(long j, @b51 TimeUnit timeUnit) {
        if (timeUnit == null) {
            return null;
        }
        return Long.valueOf(timeUnit.toNanos(j));
    }

    /* renamed from: if, reason: not valid java name */
    public static CacheBuilderSpec m15223if() {
        return m15225try("maximumSize=0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static String m15224new(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try, reason: not valid java name */
    public static CacheBuilderSpec m15225try(String str) {
        CacheBuilderSpec cacheBuilderSpec = new CacheBuilderSpec(str);
        if (!str.isEmpty()) {
            for (String str2 : f13750super.m14997final(str)) {
                v0 v0VarCopyOf = v0.copyOf(f13751throw.m14997final(str2));
                af1.m235try(!v0VarCopyOf.isEmpty(), "blank key-value pair");
                af1.m225return(v0VarCopyOf.size() <= 2, "key-value pair %s with more than one equals sign", str2);
                String str3 = (String) v0VarCopyOf.get(0);
                ValueParser valueParser = f13752while.get(str3);
                af1.m225return(valueParser != null, "unknown key %s", str3);
                valueParser.parse(cacheBuilderSpec, str3, v0VarCopyOf.size() == 1 ? null : (String) v0VarCopyOf.get(1));
            }
        }
        return cacheBuilderSpec;
    }

    /* renamed from: case, reason: not valid java name */
    public com.google.common.cache.Cif<Object, Object> m15226case() {
        com.google.common.cache.Cif<Object, Object> cifM15296abstract = com.google.common.cache.Cif.m15296abstract();
        Integer num = this.f13758do;
        if (num != null) {
            cifM15296abstract.m15330throws(num.intValue());
        }
        Long l = this.f13763if;
        if (l != null) {
            cifM15296abstract.m15319package(l.longValue());
        }
        Long l2 = this.f13761for;
        if (l2 != null) {
            cifM15296abstract.m15320private(l2.longValue());
        }
        Integer num2 = this.f13764new;
        if (num2 != null) {
            cifM15296abstract.m15332try(num2.intValue());
        }
        LocalCache.Cpublic cpublic = this.f13766try;
        if (cpublic != null) {
            if (Cdo.f13768do[cpublic.ordinal()] != 1) {
                throw new AssertionError();
            }
            cifM15296abstract.m15328synchronized();
        }
        LocalCache.Cpublic cpublic2 = this.f13754case;
        if (cpublic2 != null) {
            int i = Cdo.f13768do[cpublic2.ordinal()];
            if (i == 1) {
                cifM15296abstract.a();
            } else {
                if (i != 2) {
                    throw new AssertionError();
                }
                cifM15296abstract.m15331transient();
            }
        }
        Boolean bool = this.f13759else;
        if (bool != null && bool.booleanValue()) {
            cifM15296abstract.m15306continue();
        }
        TimeUnit timeUnit = this.f13765this;
        if (timeUnit != null) {
            cifM15296abstract.m15309else(this.f13762goto, timeUnit);
        }
        TimeUnit timeUnit2 = this.f13755catch;
        if (timeUnit2 != null) {
            cifM15296abstract.m15302case(this.f13753break, timeUnit2);
        }
        TimeUnit timeUnit3 = this.f13757const;
        if (timeUnit3 != null) {
            cifM15296abstract.m15325strictfp(this.f13756class, timeUnit3);
        }
        return cifM15296abstract;
    }

    /* renamed from: else, reason: not valid java name */
    public String m15227else() {
        return this.f13760final;
    }

    public boolean equals(@b51 Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CacheBuilderSpec)) {
            return false;
        }
        CacheBuilderSpec cacheBuilderSpec = (CacheBuilderSpec) obj;
        return Cthrow.m15205do(this.f13758do, cacheBuilderSpec.f13758do) && Cthrow.m15205do(this.f13763if, cacheBuilderSpec.f13763if) && Cthrow.m15205do(this.f13761for, cacheBuilderSpec.f13761for) && Cthrow.m15205do(this.f13764new, cacheBuilderSpec.f13764new) && Cthrow.m15205do(this.f13766try, cacheBuilderSpec.f13766try) && Cthrow.m15205do(this.f13754case, cacheBuilderSpec.f13754case) && Cthrow.m15205do(this.f13759else, cacheBuilderSpec.f13759else) && Cthrow.m15205do(m15222for(this.f13762goto, this.f13765this), m15222for(cacheBuilderSpec.f13762goto, cacheBuilderSpec.f13765this)) && Cthrow.m15205do(m15222for(this.f13753break, this.f13755catch), m15222for(cacheBuilderSpec.f13753break, cacheBuilderSpec.f13755catch)) && Cthrow.m15205do(m15222for(this.f13756class, this.f13757const), m15222for(cacheBuilderSpec.f13756class, cacheBuilderSpec.f13757const));
    }

    public int hashCode() {
        return Cthrow.m15206if(this.f13758do, this.f13763if, this.f13761for, this.f13764new, this.f13766try, this.f13754case, this.f13759else, m15222for(this.f13762goto, this.f13765this), m15222for(this.f13753break, this.f13755catch), m15222for(this.f13756class, this.f13757const));
    }

    public String toString() {
        return Csuper.m15184for(this).m15202throw(m15227else()).toString();
    }
}
