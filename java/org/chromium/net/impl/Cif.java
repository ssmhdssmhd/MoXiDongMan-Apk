package org.chromium.net.impl;

import android.content.Context;
import android.support.v4.id2;
import android.support.v4.on0;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.IDN;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Pattern;
import org.chromium.net.Ccatch;
import org.chromium.net.Cfor;
import org.chromium.net.impl.VersionSafeCallbacks;

/* renamed from: org.chromium.net.impl.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif extends Ccatch {

    /* renamed from: import, reason: not valid java name */
    private static final int f33656import = 20;

    /* renamed from: while, reason: not valid java name */
    private static final Pattern f33657while = Pattern.compile("^[0-9\\.]*$");

    /* renamed from: break, reason: not valid java name */
    private boolean f33658break;

    /* renamed from: case, reason: not valid java name */
    private String f33659case;

    /* renamed from: catch, reason: not valid java name */
    private int f33660catch;

    /* renamed from: class, reason: not valid java name */
    private long f33661class;

    /* renamed from: const, reason: not valid java name */
    private String f33662const;

    /* renamed from: do, reason: not valid java name */
    private final Context f33663do;

    /* renamed from: else, reason: not valid java name */
    private boolean f33664else;

    /* renamed from: final, reason: not valid java name */
    public long f33665final;

    /* renamed from: goto, reason: not valid java name */
    private boolean f33667goto;

    /* renamed from: new, reason: not valid java name */
    private boolean f33669new;

    /* renamed from: super, reason: not valid java name */
    private boolean f33670super;

    /* renamed from: this, reason: not valid java name */
    private boolean f33671this;

    /* renamed from: try, reason: not valid java name */
    private String f33673try;

    /* renamed from: if, reason: not valid java name */
    private final List<Cfor> f33668if = new LinkedList();

    /* renamed from: for, reason: not valid java name */
    private final List<C0482if> f33666for = new LinkedList();

    /* renamed from: throw, reason: not valid java name */
    private int f33672throw = 20;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: org.chromium.net.impl.if$do, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cdo {
    }

    /* renamed from: org.chromium.net.impl.if$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final String f33674do;

        /* renamed from: for, reason: not valid java name */
        public final int f33675for;

        /* renamed from: if, reason: not valid java name */
        public final int f33676if;

        public Cfor(String str, int i, int i2) {
            this.f33674do = str;
            this.f33676if = i;
            this.f33675for = i2;
        }
    }

    /* renamed from: org.chromium.net.impl.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0482if {

        /* renamed from: do, reason: not valid java name */
        public final String f33677do;

        /* renamed from: for, reason: not valid java name */
        public final boolean f33678for;

        /* renamed from: if, reason: not valid java name */
        public final byte[][] f33679if;

        /* renamed from: new, reason: not valid java name */
        public final Date f33680new;

        public C0482if(String str, byte[][] bArr, boolean z, Date date) {
            this.f33677do = str;
            this.f33679if = bArr;
            this.f33678for = z;
            this.f33680new = date;
        }
    }

    public Cif(Context context) {
        this.f33663do = context.getApplicationContext();
        mo7253this(true);
        mo7255try(true);
        mo7251new(false);
        mo7242case(0, 0L);
        mo7246else(false);
        mo7249goto(true);
    }

    private static String k(String str) throws IllegalArgumentException {
        if (f33657while.matcher(str).matches()) {
            throw new IllegalArgumentException("Hostname " + str + " is illegal. A hostname should not consist of digits and/or dots only.");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("Hostname " + str + " is too long. The name of the host does not comply with RFC 1122 and RFC 1123.");
        }
        try {
            return IDN.toASCII(str, 2);
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("Hostname " + str + " is illegal. The name of the host does not comply with RFC 1122 and RFC 1123.");
        }
    }

    public boolean a() {
        return this.f33664else;
    }

    /* renamed from: abstract, reason: not valid java name */
    public String m37670abstract() {
        return this.f33664else ? id2.m3385for(this.f33663do) : "";
    }

    public List<Cfor> b() {
        return this.f33668if;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Cif mo7243class(String str) {
        this.f33662const = str;
        return this;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: catch */
    public String mo37479catch() {
        return id2.m3386if(this.f33663do);
    }

    /* renamed from: continue, reason: not valid java name */
    public String m37671continue() {
        return this.f33673try;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Cif mo7244const(Cfor.Cdo.Cif cif) {
        return this;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7249goto(boolean z) {
        this.f33669new = z;
        return this;
    }

    @VisibleForTesting
    public Cif e(long j) {
        this.f33665final = j;
        return this;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7253this(boolean z) {
        this.f33664else = z;
        return this;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public Cif mo7247final(String str) {
        if (!new File(str).isDirectory()) {
            throw new IllegalArgumentException("Storage path must be set to existing directory");
        }
        this.f33659case = str;
        return this;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7241break(boolean z) {
        return this;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Cif mo7252super(int i) {
        if (i > 19 || i < -20) {
            throw new IllegalArgumentException("Thread priority invalid");
        }
        this.f33672throw = i;
        return this;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public Cif mo7254throw(String str) {
        this.f33673try = str;
        return this;
    }

    public String i() {
        return this.f33659case;
    }

    /* renamed from: implements, reason: not valid java name */
    public boolean m37675implements() {
        return this.f33670super;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7250if(String str, int i, int i2) {
        if (!str.contains(on0.f4694final)) {
            this.f33668if.add(new Cfor(str, i, i2));
            return this;
        }
        throw new IllegalArgumentException("Illegal QUIC Hint Host: " + str);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public boolean m37677instanceof() {
        return this.f33669new;
    }

    /* renamed from: interface, reason: not valid java name */
    public int m37678interface() {
        return this.f33660catch;
    }

    public int j(int i) {
        int i2 = this.f33672throw;
        return i2 == 20 ? i : i2;
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m37679native() {
        return this.f33671this;
    }

    /* renamed from: package, reason: not valid java name */
    public String m37680package() {
        return this.f33662const;
    }

    /* renamed from: private, reason: not valid java name */
    public Context m37681private() {
        return this.f33663do;
    }

    /* renamed from: protected */
    public VersionSafeCallbacks.Cif mo37669protected() {
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m37682public() {
        return this.f33658break;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7251new(boolean z) {
        this.f33671this = z;
        return this;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7255try(boolean z) {
        this.f33667goto = z;
        return this;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public boolean m37685strictfp() {
        return this.f33667goto;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7242case(int i, long j) {
        if (i == 3 || i == 2) {
            if (i() == null) {
                throw new IllegalArgumentException("Storage path must be set");
            }
        } else if (i() != null) {
            throw new IllegalArgumentException("Storage path must not be set");
        }
        this.f33658break = i == 0 || i == 2;
        this.f33661class = j;
        if (i == 0) {
            this.f33660catch = 0;
        } else if (i == 1) {
            this.f33660catch = 2;
        } else {
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException("Unknown cache mode");
            }
            this.f33660catch = 1;
        }
        return this;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public List<C0482if> m37687synchronized() {
        return this.f33666for;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7246else(boolean z) {
        this.f33670super = z;
        return this;
    }

    /* renamed from: transient, reason: not valid java name */
    public long m37689transient() {
        return this.f33665final;
    }

    /* renamed from: volatile, reason: not valid java name */
    public long m37690volatile() {
        return this.f33661class;
    }

    @Override // org.chromium.net.Ccatch
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo7245do(String str, Set<byte[]> set, boolean z, Date date) throws IllegalArgumentException {
        Objects.requireNonNull(str, "The hostname cannot be null");
        Objects.requireNonNull(set, "The set of SHA256 pins cannot be null");
        Objects.requireNonNull(date, "The pin expiration date cannot be null");
        String strK = k(str);
        HashMap map = new HashMap();
        for (byte[] bArr : set) {
            if (bArr == null || bArr.length != 32) {
                throw new IllegalArgumentException("Public key pin is invalid");
            }
            map.put(Base64.encodeToString(bArr, 0), bArr);
        }
        this.f33666for.add(new C0482if(strK, (byte[][]) map.values().toArray(new byte[map.size()][]), z, date));
        return this;
    }
}
