package net.minidev.json;

import android.support.v4.fa0;
import android.support.v4.ic1;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import net.minidev.json.parser.Cdo;
import net.minidev.json.reader.Ctry;
import net.minidev.json.reader.JsonWriterI;
import net.minidev.json.writer.Ccase;
import net.minidev.json.writer.Cgoto;

/* renamed from: net.minidev.json.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {

    /* renamed from: do, reason: not valid java name */
    public static Cfor f28213do = Cfor.f28201const;

    /* renamed from: if, reason: not valid java name */
    public static final Ctry f28215if = new Ctry();

    /* renamed from: for, reason: not valid java name */
    public static final net.minidev.json.writer.Ctry f28214for = new net.minidev.json.writer.Ctry();

    public static void a(Object obj, Appendable appendable) throws IOException {
        b(obj, appendable, f28213do);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static Object m31594abstract(Reader reader) throws ic1, IOException {
        return new Cdo(Cdo.f28228return).m31642break(reader, f28214for.f28355if);
    }

    public static void b(Object obj, Appendable appendable, Cfor cfor) throws IOException {
        if (obj == null) {
            appendable.append("null");
            return;
        }
        Class<?> cls = obj.getClass();
        Ctry ctry = f28215if;
        JsonWriterI<Object> jsonWriterIM31690for = ctry.m31690for(cls);
        if (jsonWriterIM31690for == null) {
            if (cls.isArray()) {
                jsonWriterIM31690for = Ctry.f28272class;
            } else {
                jsonWriterIM31690for = ctry.m31693new(obj.getClass());
                if (jsonWriterIM31690for == null) {
                    jsonWriterIM31690for = Ctry.f28269break;
                }
            }
            ctry.m31687case(jsonWriterIM31690for, cls);
        }
        jsonWriterIM31690for.writeJSONString(obj, appendable, cfor);
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m31595break(String str) {
        try {
            new Cdo(Cdo.f28225import).m31646const(str, fa0.f1744do);
            return true;
        } catch (ic1 unused) {
            return false;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m31596case(String str, Appendable appendable, Cfor cfor) {
        if (str == null) {
            return;
        }
        cfor.m31573case(str, appendable);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Object m31597catch(InputStream inputStream) {
        try {
            return new Cdo(Cdo.f28228return).m31653try(inputStream);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static <T> T m31598class(InputStream inputStream, Class<T> cls) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31647else(inputStream, f28214for.m31740do(cls));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> T m31599const(InputStream inputStream, T t) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31647else(inputStream, new Cgoto(f28214for, t));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static Object m31600continue(String str) throws ic1 {
        return new Cdo(Cdo.f28228return).m31646const(str, f28214for.f28355if);
    }

    /* renamed from: default, reason: not valid java name */
    public static Object m31601default(Reader reader) {
        try {
            return new Cdo(Cdo.f28228return).m31642break(reader, f28214for.f28354for);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m31602do(String str) {
        return m31609if(str, Cfor.f28202final);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m31603else(Reader reader) throws IOException {
        try {
            new Cdo(Cdo.f28228return).m31642break(reader, fa0.f1744do);
            return true;
        } catch (ic1 unused) {
            return false;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static Object m31604extends(String str) {
        try {
            return new Cdo(Cdo.f28228return).m31646const(str, f28214for.f28354for);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static Object m31605final(Reader reader) {
        try {
            return new Cdo(Cdo.f28228return).m31649goto(reader);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static Object m31606finally(Reader reader) throws ic1, IOException {
        return new Cdo(Cdo.f28225import).m31642break(reader, f28214for.f28355if);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m31607for(String str) {
        return m31615new(str, f28213do);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m31608goto(String str) {
        try {
            new Cdo(Cdo.f28228return).m31646const(str, fa0.f1744do);
            return true;
        } catch (ic1 unused) {
            return false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m31609if(String str, Cfor cfor) {
        try {
            StringBuilder sb = new StringBuilder();
            new Cdo(Cdo.f28228return).m31646const(str, new net.minidev.json.writer.Cnew(f28214for, sb, cfor));
            return sb.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public static String m31610implements(Object obj) {
        return m31612instanceof(obj, f28213do);
    }

    /* renamed from: import, reason: not valid java name */
    public static Object m31611import(String str) {
        try {
            return new Cdo(Cdo.f28228return).m31644catch(str);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static String m31612instanceof(Object obj, Cfor cfor) {
        StringBuilder sb = new StringBuilder();
        try {
            b(obj, sb, cfor);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T> void m31613interface(Class<T> cls, Ccase<T> ccase) {
        f28214for.m31743new(cls, ccase);
    }

    /* renamed from: native, reason: not valid java name */
    public static <T> T m31614native(String str, Class<T> cls) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31646const(str, f28214for.m31740do(cls));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m31615new(String str, Cfor cfor) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        cfor.m31573case(str, sb);
        return sb.toString();
    }

    /* renamed from: package, reason: not valid java name */
    public static Object m31616package(String str) throws ic1 {
        return new Cdo(Cdo.f28225import).m31646const(str, f28214for.f28355if);
    }

    /* renamed from: private, reason: not valid java name */
    public static Object m31617private(InputStream inputStream) throws ic1, IOException {
        return new Cdo(Cdo.f28228return).m31647else(inputStream, f28214for.f28355if);
    }

    /* renamed from: protected, reason: not valid java name */
    public static <T> void m31618protected(Class<?> cls, JsonWriterI<T> jsonWriterI) {
        f28215if.m31687case(jsonWriterI, cls);
    }

    /* renamed from: public, reason: not valid java name */
    public static <T> T m31619public(String str, T t) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31646const(str, new Cgoto(f28214for, t));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static <T> T m31620return(String str, Ccase<T> ccase) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31646const(str, ccase);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static Object m31621static(byte[] bArr) {
        try {
            return new Cdo(Cdo.f28228return).m31648final(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <T> T m31622strictfp(String str, Class<T> cls) throws ic1 {
        return (T) new Cdo(Cdo.f28228return).m31646const(str, f28214for.m31740do(cls));
    }

    /* renamed from: super, reason: not valid java name */
    public static <T> T m31623super(Reader reader, Class<T> cls) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31642break(reader, f28214for.m31740do(cls));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static <T> T m31624switch(byte[] bArr, Class<T> cls) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31652throw(bArr, f28214for.m31740do(cls));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static String m31625synchronized(String str) {
        return m31609if(str, Cfor.f28201const);
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m31626this(Reader reader) throws IOException {
        try {
            new Cdo(Cdo.f28225import).m31642break(reader, fa0.f1744do);
            return true;
        } catch (ic1 unused) {
            return false;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static <T> T m31627throw(Reader reader, T t) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31642break(reader, new Cgoto(f28214for, t));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T> T m31628throws(byte[] bArr, Ccase<T> ccase) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31652throw(bArr, ccase);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public static <T> void m31629transient(Class<T> cls, String str, String str2) {
        f28214for.m31744try(cls, str, str2);
        f28215if.m31686break(cls, str2, str);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m31630try(String str, Appendable appendable) {
        m31596case(str, appendable, f28213do);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static Object m31631volatile(byte[] bArr) throws ic1, IOException {
        return new Cdo(Cdo.f28228return).m31652throw(bArr, f28214for.f28355if);
    }

    /* renamed from: while, reason: not valid java name */
    public static <T> T m31632while(Reader reader, Ccase<T> ccase) {
        try {
            return (T) new Cdo(Cdo.f28228return).m31642break(reader, ccase);
        } catch (Exception unused) {
            return null;
        }
    }
}
