package com.google.common.net;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bl;
import android.support.v4.ca2;
import android.support.v4.fm0;
import android.support.v4.fs0;
import android.support.v4.hy1;
import android.support.v4.ki0;
import android.support.v4.o8;
import android.support.v4.t3;
import com.google.common.base.Cfinal;
import com.google.common.base.Cnew;
import com.google.common.base.Csuper;
import com.google.common.base.Cthrow;
import com.google.common.base.Cwhile;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.b2;
import com.google.common.collect.c1;
import com.google.common.collect.g1;
import com.google.common.collect.w0;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.jsoup.nodes.Attributes;

@fm0
@ki0
@o8
/* renamed from: com.google.common.net.for, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfor {

    /* renamed from: final, reason: not valid java name */
    private static final String f15442final = "image";

    /* renamed from: super, reason: not valid java name */
    private static final String f15457super = "text";

    /* renamed from: throw, reason: not valid java name */
    private static final String f15461throw = "video";

    /* renamed from: while, reason: not valid java name */
    private static final String f15465while = "*";

    /* renamed from: case, reason: not valid java name */
    @fs0
    private Cwhile<Charset> f15466case;

    /* renamed from: do, reason: not valid java name */
    private final String f15467do;

    /* renamed from: for, reason: not valid java name */
    private final w0<String, String> f15468for;

    /* renamed from: if, reason: not valid java name */
    private final String f15469if;

    /* renamed from: new, reason: not valid java name */
    @fs0
    private String f15470new;

    /* renamed from: try, reason: not valid java name */
    @fs0
    private int f15471try;

    /* renamed from: else, reason: not valid java name */
    private static final String f15440else = "charset";

    /* renamed from: goto, reason: not valid java name */
    private static final w0<String, String> f15444goto = w0.of(f15440else, t3.m7689else(bl.f470for.name()));

    /* renamed from: this, reason: not valid java name */
    private static final Cnew f15460this = Cnew.m15122case().mo15149if(Cnew.m15138static().mo15154strictfp()).mo15149if(Cnew.m15134native(' ')).mo15149if(Cnew.m15133interface("()<>@,;:\\\"/[]?="));

    /* renamed from: break, reason: not valid java name */
    private static final Cnew f15434break = Cnew.m15122case().mo15149if(Cnew.m15133interface("\"\\\r"));

    /* renamed from: catch, reason: not valid java name */
    private static final Cnew f15435catch = Cnew.m15135new(" \t\r\n");

    /* renamed from: import, reason: not valid java name */
    private static final Map<Cfor, Cfor> f15446import = Maps.l();

    /* renamed from: native, reason: not valid java name */
    public static final Cfor f15449native = m17386break("*", "*");

    /* renamed from: public, reason: not valid java name */
    public static final Cfor f15453public = m17386break("text", "*");

    /* renamed from: return, reason: not valid java name */
    public static final Cfor f15454return = m17386break("image", "*");

    /* renamed from: const, reason: not valid java name */
    private static final String f15437const = "audio";

    /* renamed from: static, reason: not valid java name */
    public static final Cfor f15455static = m17386break(f15437const, "*");

    /* renamed from: switch, reason: not valid java name */
    public static final Cfor f15458switch = m17386break("video", "*");

    /* renamed from: class, reason: not valid java name */
    private static final String f15436class = "application";

    /* renamed from: throws, reason: not valid java name */
    public static final Cfor f15462throws = m17386break(f15436class, "*");

    /* renamed from: default, reason: not valid java name */
    public static final Cfor f15439default = m17388catch("text", "cache-manifest");

    /* renamed from: extends, reason: not valid java name */
    public static final Cfor f15441extends = m17388catch("text", "css");

    /* renamed from: finally, reason: not valid java name */
    public static final Cfor f15443finally = m17388catch("text", "csv");

    /* renamed from: package, reason: not valid java name */
    public static final Cfor f15450package = m17388catch("text", "html");

    /* renamed from: private, reason: not valid java name */
    public static final Cfor f15451private = m17388catch("text", "calendar");

    /* renamed from: abstract, reason: not valid java name */
    public static final Cfor f15433abstract = m17388catch("text", "plain");

    /* renamed from: continue, reason: not valid java name */
    public static final Cfor f15438continue = m17388catch("text", "javascript");

    /* renamed from: strictfp, reason: not valid java name */
    public static final Cfor f15456strictfp = m17388catch("text", "tab-separated-values");

    /* renamed from: volatile, reason: not valid java name */
    public static final Cfor f15464volatile = m17388catch("text", "vcard");

    /* renamed from: interface, reason: not valid java name */
    public static final Cfor f15448interface = m17388catch("text", "vnd.wap.wml");

    /* renamed from: protected, reason: not valid java name */
    public static final Cfor f15452protected = m17388catch("text", "xml");

    /* renamed from: transient, reason: not valid java name */
    public static final Cfor f15463transient = m17388catch("text", "vtt");

    /* renamed from: implements, reason: not valid java name */
    public static final Cfor f15445implements = m17386break("image", "bmp");

    /* renamed from: instanceof, reason: not valid java name */
    public static final Cfor f15447instanceof = m17386break("image", "x-canon-crw");

    /* renamed from: synchronized, reason: not valid java name */
    public static final Cfor f15459synchronized = m17386break("image", "gif");
    public static final Cfor a = m17386break("image", "vnd.microsoft.icon");
    public static final Cfor b = m17386break("image", "jpeg");
    public static final Cfor c = m17386break("image", "png");
    public static final Cfor d = m17386break("image", "vnd.adobe.photoshop");
    public static final Cfor e = m17388catch("image", "svg+xml");
    public static final Cfor f = m17386break("image", "tiff");
    public static final Cfor g = m17386break("image", "webp");
    public static final Cfor h = m17386break("image", "heif");
    public static final Cfor i = m17386break("image", "jp2");
    public static final Cfor j = m17386break(f15437const, "mp4");
    public static final Cfor k = m17386break(f15437const, "mpeg");
    public static final Cfor l = m17386break(f15437const, "ogg");
    public static final Cfor m = m17386break(f15437const, "webm");
    public static final Cfor n = m17386break(f15437const, "l16");
    public static final Cfor o = m17386break(f15437const, "l24");
    public static final Cfor p = m17386break(f15437const, "basic");
    public static final Cfor q = m17386break(f15437const, "aac");
    public static final Cfor r = m17386break(f15437const, "vorbis");
    public static final Cfor s = m17386break(f15437const, "x-ms-wma");
    public static final Cfor t = m17386break(f15437const, "x-ms-wax");
    public static final Cfor u = m17386break(f15437const, "vnd.rn-realaudio");
    public static final Cfor v = m17386break(f15437const, "vnd.wave");
    public static final Cfor w = m17386break("video", "mp4");
    public static final Cfor x = m17386break("video", "mpeg");
    public static final Cfor y = m17386break("video", "ogg");
    public static final Cfor z = m17386break("video", "quicktime");
    public static final Cfor A = m17386break("video", "webm");
    public static final Cfor B = m17386break("video", "x-ms-wmv");
    public static final Cfor C = m17386break("video", "x-flv");
    public static final Cfor D = m17386break("video", "3gpp");
    public static final Cfor E = m17386break("video", "3gpp2");
    public static final Cfor F = m17388catch(f15436class, "xml");
    public static final Cfor G = m17388catch(f15436class, "atom+xml");
    public static final Cfor H = m17386break(f15436class, "x-bzip2");
    public static final Cfor I = m17388catch(f15436class, "dart");

    /* renamed from: J, reason: collision with root package name */
    public static final Cfor f36257J = m17386break(f15436class, "vnd.apple.pkpass");
    public static final Cfor K = m17386break(f15436class, "vnd.ms-fontobject");
    public static final Cfor L = m17386break(f15436class, "epub+zip");
    public static final Cfor M = m17386break(f15436class, "x-www-form-urlencoded");
    public static final Cfor N = m17386break(f15436class, "pkcs12");
    public static final Cfor O = m17386break(f15436class, "binary");
    public static final Cfor P = m17386break(f15436class, "geo+json");
    public static final Cfor Q = m17386break(f15436class, "x-gzip");
    public static final Cfor R = m17386break(f15436class, "hal+json");
    public static final Cfor S = m17388catch(f15436class, "javascript");
    public static final Cfor T = m17386break(f15436class, "jose");
    public static final Cfor U = m17386break(f15436class, "jose+json");
    public static final Cfor V = m17388catch(f15436class, "json");
    public static final Cfor W = m17388catch(f15436class, "manifest+json");
    public static final Cfor X = m17386break(f15436class, "vnd.google-earth.kml+xml");
    public static final Cfor Y = m17386break(f15436class, "vnd.google-earth.kmz");
    public static final Cfor Z = m17386break(f15436class, "mbox");
    public static final Cfor a0 = m17386break(f15436class, "x-apple-aspen-config");
    public static final Cfor b0 = m17386break(f15436class, "vnd.ms-excel");
    public static final Cfor c0 = m17386break(f15436class, "vnd.ms-outlook");
    public static final Cfor d0 = m17386break(f15436class, "vnd.ms-powerpoint");
    public static final Cfor e0 = m17386break(f15436class, "msword");
    public static final Cfor f0 = m17386break(f15436class, "dash+xml");
    public static final Cfor g0 = m17386break(f15436class, "wasm");
    public static final Cfor h0 = m17386break(f15436class, "x-nacl");
    public static final Cfor i0 = m17386break(f15436class, "x-pnacl");
    public static final Cfor j0 = m17386break(f15436class, "octet-stream");
    public static final Cfor k0 = m17386break(f15436class, "ogg");
    public static final Cfor l0 = m17386break(f15436class, "vnd.openxmlformats-officedocument.wordprocessingml.document");
    public static final Cfor m0 = m17386break(f15436class, "vnd.openxmlformats-officedocument.presentationml.presentation");
    public static final Cfor n0 = m17386break(f15436class, "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    public static final Cfor o0 = m17386break(f15436class, "vnd.oasis.opendocument.graphics");
    public static final Cfor p0 = m17386break(f15436class, "vnd.oasis.opendocument.presentation");
    public static final Cfor q0 = m17386break(f15436class, "vnd.oasis.opendocument.spreadsheet");
    public static final Cfor r0 = m17386break(f15436class, "vnd.oasis.opendocument.text");
    public static final Cfor s0 = m17388catch(f15436class, "opensearchdescription+xml");
    public static final Cfor t0 = m17386break(f15436class, "pdf");
    public static final Cfor u0 = m17386break(f15436class, "postscript");
    public static final Cfor v0 = m17386break(f15436class, "protobuf");
    public static final Cfor w0 = m17388catch(f15436class, "rdf+xml");
    public static final Cfor x0 = m17388catch(f15436class, "rtf");
    public static final Cfor y0 = m17386break(f15436class, "font-sfnt");
    public static final Cfor z0 = m17386break(f15436class, "x-shockwave-flash");
    public static final Cfor A0 = m17386break(f15436class, "vnd.sketchup.skp");
    public static final Cfor B0 = m17388catch(f15436class, "soap+xml");
    public static final Cfor C0 = m17386break(f15436class, "x-tar");
    public static final Cfor D0 = m17386break(f15436class, "font-woff");
    public static final Cfor E0 = m17386break(f15436class, "font-woff2");
    public static final Cfor F0 = m17388catch(f15436class, "xhtml+xml");
    public static final Cfor G0 = m17388catch(f15436class, "xrd+xml");
    public static final Cfor H0 = m17386break(f15436class, "zip");
    private static final Cfinal.Cnew I0 = Cfinal.m15071throw("; ").mo15085return("=");

    /* renamed from: com.google.common.net.for$do, reason: invalid class name */
    public class Cdo implements Function<Collection<String>, c1<String>> {
        public Cdo() {
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public c1<String> apply(Collection<String> collection) {
            return c1.copyOf(collection);
        }
    }

    /* renamed from: com.google.common.net.for$for, reason: invalid class name and collision with other inner class name */
    public static final class C0133for {

        /* renamed from: do, reason: not valid java name */
        public final String f15473do;

        /* renamed from: if, reason: not valid java name */
        public int f15474if = 0;

        public C0133for(String str) {
            this.f15473do = str;
        }

        /* renamed from: case, reason: not valid java name */
        public char m17416case() {
            af1.t(m17421try());
            return this.f15473do.charAt(this.f15474if);
        }

        /* renamed from: do, reason: not valid java name */
        public char m17417do(char c) {
            af1.t(m17421try());
            af1.t(m17416case() == c);
            this.f15474if++;
            return c;
        }

        /* renamed from: for, reason: not valid java name */
        public String m17418for(Cnew cnew) {
            int i = this.f15474if;
            String strM17420new = m17420new(cnew);
            af1.t(this.f15474if != i);
            return strM17420new;
        }

        /* renamed from: if, reason: not valid java name */
        public char m17419if(Cnew cnew) {
            af1.t(m17421try());
            char cM17416case = m17416case();
            af1.t(cnew.mo15151package(cM17416case));
            this.f15474if++;
            return cM17416case;
        }

        /* renamed from: new, reason: not valid java name */
        public String m17420new(Cnew cnew) {
            af1.t(m17421try());
            int i = this.f15474if;
            this.f15474if = cnew.mo15154strictfp().mo15155super(this.f15473do, i);
            return m17421try() ? this.f15473do.substring(i, this.f15474if) : this.f15473do.substring(i);
        }

        /* renamed from: try, reason: not valid java name */
        public boolean m17421try() {
            int i = this.f15474if;
            return i >= 0 && i < this.f15473do.length();
        }
    }

    /* renamed from: com.google.common.net.for$if, reason: invalid class name */
    public class Cif implements Function<String, String> {
        public Cif() {
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String apply(String str) {
            return (!Cfor.f15460this.mo15152private(str) || str.isEmpty()) ? Cfor.m17401super(str) : str;
        }
    }

    private Cfor(String str, String str2, w0<String, String> w0Var) {
        this.f15467do = str;
        this.f15469if = str2;
        this.f15468for = w0Var;
    }

    /* renamed from: break, reason: not valid java name */
    private static Cfor m17386break(String str, String str2) {
        Cfor cforM17394for = m17394for(new Cfor(str, str2, w0.of()));
        cforM17394for.f15466case = Cwhile.absent();
        return cforM17394for;
    }

    /* renamed from: case, reason: not valid java name */
    public static Cfor m17387case(String str, String str2) {
        Cfor cforM17392else = m17392else(str, str2, w0.of());
        cforM17392else.f15466case = Cwhile.absent();
        return cforM17392else;
    }

    /* renamed from: catch, reason: not valid java name */
    private static Cfor m17388catch(String str, String str2) {
        Cfor cforM17394for = m17394for(new Cfor(str, str2, f15444goto));
        cforM17394for.f15466case = Cwhile.of(bl.f470for);
        return cforM17394for;
    }

    /* renamed from: class, reason: not valid java name */
    public static Cfor m17389class(String str) {
        return m17387case("image", str);
    }

    /* renamed from: const, reason: not valid java name */
    public static Cfor m17390const(String str) {
        return m17387case("text", str);
    }

    /* renamed from: else, reason: not valid java name */
    private static Cfor m17392else(String str, String str2, Multimap<String, String> multimap) {
        af1.m205continue(str);
        af1.m205continue(str2);
        af1.m205continue(multimap);
        String strM17398native = m17398native(str);
        String strM17398native2 = m17398native(str2);
        af1.m235try(!"*".equals(strM17398native) || "*".equals(strM17398native2), "A wildcard type cannot be used with a non-wildcard subtype");
        w0.Cdo cdoBuilder = w0.builder();
        for (Map.Entry<String, String> entry : multimap.entries()) {
            String strM17398native3 = m17398native(entry.getKey());
            cdoBuilder.mo15544case(strM17398native3, m17397import(strM17398native3, entry.getValue()));
        }
        Cfor cfor = new Cfor(strM17398native, strM17398native2, cdoBuilder.mo15546do());
        return (Cfor) Csuper.m15183do(f15446import.get(cfor), cfor);
    }

    /* renamed from: final, reason: not valid java name */
    public static Cfor m17393final(String str) {
        return m17387case("video", str);
    }

    /* renamed from: for, reason: not valid java name */
    private static Cfor m17394for(Cfor cfor) {
        f15446import.put(cfor, cfor);
        return cfor;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Cfor m17395goto(String str) {
        return m17387case(f15436class, str);
    }

    /* renamed from: import, reason: not valid java name */
    private static String m17397import(String str, String str2) {
        af1.m205continue(str2);
        af1.m225return(Cnew.m15122case().mo15152private(str2), "parameter values must be ASCII: %s", str2);
        return f15440else.equals(str) ? t3.m7689else(str2) : str2;
    }

    /* renamed from: native, reason: not valid java name */
    private static String m17398native(String str) {
        af1.m220new(f15460this.mo15152private(str));
        af1.m220new(!str.isEmpty());
        return t3.m7689else(str);
    }

    /* renamed from: return, reason: not valid java name */
    private Map<String, c1<String>> m17399return() {
        return Maps.O(this.f15468for.asMap(), new Cdo());
    }

    /* renamed from: static, reason: not valid java name */
    public static Cfor m17400static(String str) {
        String strM17418for;
        af1.m205continue(str);
        C0133for c0133for = new C0133for(str);
        try {
            Cnew cnew = f15460this;
            String strM17418for2 = c0133for.m17418for(cnew);
            c0133for.m17417do(Attributes.InternalPrefix);
            String strM17418for3 = c0133for.m17418for(cnew);
            w0.Cdo cdoBuilder = w0.builder();
            while (c0133for.m17421try()) {
                Cnew cnew2 = f15435catch;
                c0133for.m17420new(cnew2);
                c0133for.m17417do(';');
                c0133for.m17420new(cnew2);
                Cnew cnew3 = f15460this;
                String strM17418for4 = c0133for.m17418for(cnew3);
                c0133for.m17417do(hy1.f2563new);
                if ('\"' == c0133for.m17416case()) {
                    c0133for.m17417do(ca2.f674do);
                    StringBuilder sb = new StringBuilder();
                    while ('\"' != c0133for.m17416case()) {
                        if ('\\' == c0133for.m17416case()) {
                            c0133for.m17417do('\\');
                            sb.append(c0133for.m17419if(Cnew.m15122case()));
                        } else {
                            sb.append(c0133for.m17418for(f15434break));
                        }
                    }
                    strM17418for = sb.toString();
                    c0133for.m17417do(ca2.f674do);
                } else {
                    strM17418for = c0133for.m17418for(cnew3);
                }
                cdoBuilder.mo15544case(strM17418for4, strM17418for);
            }
            return m17392else(strM17418for2, strM17418for3, cdoBuilder.mo15546do());
        } catch (IllegalStateException e2) {
            throw new IllegalArgumentException("Could not parse '" + str + "'", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public static String m17401super(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append(ca2.f674do);
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\r' || cCharAt == '\\' || cCharAt == '\"') {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        sb.append(ca2.f674do);
        return sb.toString();
    }

    /* renamed from: this, reason: not valid java name */
    public static Cfor m17402this(String str) {
        return m17387case(f15437const, str);
    }

    /* renamed from: try, reason: not valid java name */
    private String m17403try() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15467do);
        sb.append(Attributes.InternalPrefix);
        sb.append(this.f15469if);
        if (!this.f15468for.isEmpty()) {
            sb.append("; ");
            I0.m15096new(sb, b2.m15560continue(this.f15468for, new Cif()).entries());
        }
        return sb.toString();
    }

    /* renamed from: default, reason: not valid java name */
    public Cfor m17404default(Charset charset) {
        af1.m205continue(charset);
        Cfor cforM17405extends = m17405extends(f15440else, charset.name());
        cforM17405extends.f15466case = Cwhile.of(charset);
        return cforM17405extends;
    }

    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        return this.f15467do.equals(cfor.f15467do) && this.f15469if.equals(cfor.f15469if) && m17399return().equals(cfor.m17399return());
    }

    /* renamed from: extends, reason: not valid java name */
    public Cfor m17405extends(String str, String str2) {
        return m17408package(str, g1.of(str2));
    }

    /* renamed from: finally, reason: not valid java name */
    public Cfor m17406finally(Multimap<String, String> multimap) {
        return m17392else(this.f15467do, this.f15469if, multimap);
    }

    public int hashCode() {
        int i2 = this.f15471try;
        if (i2 != 0) {
            return i2;
        }
        int iM15206if = Cthrow.m15206if(this.f15467do, this.f15469if, m17399return());
        this.f15471try = iM15206if;
        return iM15206if;
    }

    /* renamed from: new, reason: not valid java name */
    public Cwhile<Charset> m17407new() {
        Cwhile<Charset> cwhileOf = this.f15466case;
        if (cwhileOf == null) {
            Cwhile<Charset> cwhileAbsent = Cwhile.absent();
            ac2<String> it = this.f15468for.get((w0<String, String>) f15440else).iterator();
            String str = null;
            cwhileOf = cwhileAbsent;
            while (it.hasNext()) {
                String next = it.next();
                if (str == null) {
                    cwhileOf = Cwhile.of(Charset.forName(next));
                    str = next;
                } else if (!str.equals(next)) {
                    throw new IllegalStateException("Multiple charset values defined: " + str + ", " + next);
                }
            }
            this.f15466case = cwhileOf;
        }
        return cwhileOf;
    }

    /* renamed from: package, reason: not valid java name */
    public Cfor m17408package(String str, Iterable<String> iterable) {
        af1.m205continue(str);
        af1.m205continue(iterable);
        String strM17398native = m17398native(str);
        w0.Cdo cdoBuilder = w0.builder();
        ac2<Map.Entry<String, String>> it = this.f15468for.entries().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            if (!strM17398native.equals(key)) {
                cdoBuilder.mo15544case(key, next.getValue());
            }
        }
        Iterator<String> it2 = iterable.iterator();
        while (it2.hasNext()) {
            cdoBuilder.mo15544case(strM17398native, m17397import(strM17398native, it2.next()));
        }
        Cfor cfor = new Cfor(this.f15467do, this.f15469if, cdoBuilder.mo15546do());
        if (!strM17398native.equals(f15440else)) {
            cfor.f15466case = this.f15466case;
        }
        return (Cfor) Csuper.m15183do(f15446import.get(cfor), cfor);
    }

    /* renamed from: private, reason: not valid java name */
    public Cfor m17409private() {
        return this.f15468for.isEmpty() ? this : m17387case(this.f15467do, this.f15469if);
    }

    /* renamed from: public, reason: not valid java name */
    public w0<String, String> m17410public() {
        return this.f15468for;
    }

    /* renamed from: switch, reason: not valid java name */
    public String m17411switch() {
        return this.f15469if;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m17412throw() {
        return "*".equals(this.f15467do) || "*".equals(this.f15469if);
    }

    /* renamed from: throws, reason: not valid java name */
    public String m17413throws() {
        return this.f15467do;
    }

    public String toString() {
        String str = this.f15470new;
        if (str != null) {
            return str;
        }
        String strM17403try = m17403try();
        this.f15470new = strM17403try;
        return strM17403try;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m17414while(Cfor cfor) {
        return (cfor.f15467do.equals("*") || cfor.f15467do.equals(this.f15467do)) && (cfor.f15469if.equals("*") || cfor.f15469if.equals(this.f15469if)) && this.f15468for.entries().containsAll(cfor.f15468for.entries());
    }
}
