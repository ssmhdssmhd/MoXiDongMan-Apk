package net.minidev.json.parser;

import android.support.v4.ic1;
import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import net.minidev.json.Cnew;
import net.minidev.json.writer.Ccase;

/* renamed from: net.minidev.json.parser.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: break, reason: not valid java name */
    public static final int f28217break = 16;

    /* renamed from: case, reason: not valid java name */
    public static final int f28218case = 1;

    /* renamed from: catch, reason: not valid java name */
    public static final int f28219catch = 32;

    /* renamed from: class, reason: not valid java name */
    public static final int f28220class = 64;

    /* renamed from: const, reason: not valid java name */
    public static final int f28221const = 128;

    /* renamed from: else, reason: not valid java name */
    public static final int f28222else = 2;

    /* renamed from: final, reason: not valid java name */
    public static final int f28223final = 256;

    /* renamed from: goto, reason: not valid java name */
    public static final int f28224goto = 4;

    /* renamed from: import, reason: not valid java name */
    public static final int f28225import = 656;

    /* renamed from: native, reason: not valid java name */
    public static final int f28226native = 1984;

    /* renamed from: public, reason: not valid java name */
    public static final int f28227public = 1168;

    /* renamed from: return, reason: not valid java name */
    public static int f28228return = 0;

    /* renamed from: super, reason: not valid java name */
    public static final int f28229super = 512;

    /* renamed from: this, reason: not valid java name */
    public static final int f28230this = 8;

    /* renamed from: throw, reason: not valid java name */
    public static final int f28231throw = 1024;

    /* renamed from: while, reason: not valid java name */
    public static final int f28232while = -1;

    /* renamed from: do, reason: not valid java name */
    private int f28233do;

    /* renamed from: for, reason: not valid java name */
    private Cfor f28234for;

    /* renamed from: if, reason: not valid java name */
    private Cnew f28235if;

    /* renamed from: new, reason: not valid java name */
    private Ccase f28236new;

    /* renamed from: try, reason: not valid java name */
    private Cgoto f28237try;

    static {
        f28228return = System.getProperty("JSON_SMART_SIMPLE") != null ? f28226native : -1;
    }

    public Cdo() {
        this.f28233do = f28228return;
    }

    /* renamed from: do, reason: not valid java name */
    private Cnew m31638do() {
        if (this.f28235if == null) {
            this.f28235if = new Cnew(this.f28233do);
        }
        return this.f28235if;
    }

    /* renamed from: for, reason: not valid java name */
    private Ccase m31639for() {
        if (this.f28236new == null) {
            this.f28236new = new Ccase(this.f28233do);
        }
        return this.f28236new;
    }

    /* renamed from: if, reason: not valid java name */
    private Cfor m31640if() {
        if (this.f28234for == null) {
            this.f28234for = new Cfor(this.f28233do);
        }
        return this.f28234for;
    }

    /* renamed from: new, reason: not valid java name */
    private Cgoto m31641new() {
        if (this.f28237try == null) {
            this.f28237try = new Cgoto(this.f28233do);
        }
        return this.f28237try;
    }

    /* renamed from: break, reason: not valid java name */
    public <T> T m31642break(Reader reader, Ccase<T> ccase) throws ic1 {
        return (T) m31639for().m31637static(reader, ccase);
    }

    /* renamed from: case, reason: not valid java name */
    public <T> T m31643case(InputStream inputStream, Class<T> cls) throws ic1, UnsupportedEncodingException {
        return (T) m31638do().m31682throws(inputStream, Cnew.f28214for.m31740do(cls));
    }

    /* renamed from: catch, reason: not valid java name */
    public Object m31644catch(String str) throws ic1 {
        return m31641new().m31663throws(str);
    }

    /* renamed from: class, reason: not valid java name */
    public <T> T m31645class(String str, Class<T> cls) throws ic1 {
        return (T) m31641new().m31662default(str, Cnew.f28214for.m31740do(cls));
    }

    /* renamed from: const, reason: not valid java name */
    public <T> T m31646const(String str, Ccase<T> ccase) throws ic1 {
        return (T) m31641new().m31662default(str, ccase);
    }

    /* renamed from: else, reason: not valid java name */
    public <T> T m31647else(InputStream inputStream, Ccase<T> ccase) throws ic1, UnsupportedEncodingException {
        return (T) m31638do().m31682throws(inputStream, ccase);
    }

    /* renamed from: final, reason: not valid java name */
    public Object m31648final(byte[] bArr) throws ic1 {
        return m31640if().m31661throws(bArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public Object m31649goto(Reader reader) throws ic1 {
        return m31639for().m31636return(reader);
    }

    /* renamed from: super, reason: not valid java name */
    public <T> T m31650super(byte[] bArr, Class<T> cls) throws ic1 {
        return (T) m31640if().m31657default(bArr, Cnew.f28214for.m31740do(cls));
    }

    /* renamed from: this, reason: not valid java name */
    public <T> T m31651this(Reader reader, Class<T> cls) throws ic1 {
        return (T) m31639for().m31637static(reader, Cnew.f28214for.m31740do(cls));
    }

    /* renamed from: throw, reason: not valid java name */
    public <T> T m31652throw(byte[] bArr, Ccase<T> ccase) throws ic1 {
        return (T) m31640if().m31657default(bArr, ccase);
    }

    /* renamed from: try, reason: not valid java name */
    public Object m31653try(InputStream inputStream) throws ic1, UnsupportedEncodingException {
        return m31638do().m31681switch(inputStream);
    }

    public Cdo(int i) {
        this.f28233do = i;
    }
}
