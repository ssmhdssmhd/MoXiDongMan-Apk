package com.bumptech.glide.load.model;

import android.net.Uri;
import android.support.v4.cf1;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* renamed from: com.bumptech.glide.load.model.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif implements Key {

    /* renamed from: goto, reason: not valid java name */
    private static final String f10022goto = "@#&=*+-_.,:!?()/~'%;$";

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private volatile byte[] f10023case;

    /* renamed from: do, reason: not valid java name */
    private final Headers f10024do;

    /* renamed from: else, reason: not valid java name */
    private int f10025else;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private final String f10026for;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private final URL f10027if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private String f10028new;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private URL f10029try;

    public Cif(URL url) {
        this(url, Headers.DEFAULT);
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m11657if() {
        if (this.f10023case == null) {
            this.f10023case = m11661do().getBytes(Key.CHARSET);
        }
        return this.f10023case;
    }

    /* renamed from: new, reason: not valid java name */
    private String m11658new() {
        if (TextUtils.isEmpty(this.f10028new)) {
            String string = this.f10026for;
            if (TextUtils.isEmpty(string)) {
                string = ((URL) cf1.m900new(this.f10027if)).toString();
            }
            this.f10028new = Uri.encode(string, f10022goto);
        }
        return this.f10028new;
    }

    /* renamed from: try, reason: not valid java name */
    private URL m11659try() throws MalformedURLException {
        if (this.f10029try == null) {
            this.f10029try = new URL(m11658new());
        }
        return this.f10029try;
    }

    /* renamed from: case, reason: not valid java name */
    public String m11660case() {
        return m11658new();
    }

    /* renamed from: do, reason: not valid java name */
    public String m11661do() {
        String str = this.f10026for;
        return str != null ? str : ((URL) cf1.m900new(this.f10027if)).toString();
    }

    /* renamed from: else, reason: not valid java name */
    public URL m11662else() throws MalformedURLException {
        return m11659try();
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return m11661do().equals(cif.m11661do()) && this.f10024do.equals(cif.f10024do);
    }

    /* renamed from: for, reason: not valid java name */
    public Map<String, String> m11663for() {
        return this.f10024do.getHeaders();
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.f10025else == 0) {
            int iHashCode = m11661do().hashCode();
            this.f10025else = iHashCode;
            this.f10025else = (iHashCode * 31) + this.f10024do.hashCode();
        }
        return this.f10025else;
    }

    public String toString() {
        return m11661do();
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(m11657if());
    }

    public Cif(String str) {
        this(str, Headers.DEFAULT);
    }

    public Cif(URL url, Headers headers) {
        this.f10027if = (URL) cf1.m900new(url);
        this.f10026for = null;
        this.f10024do = (Headers) cf1.m900new(headers);
    }

    public Cif(String str, Headers headers) {
        this.f10027if = null;
        this.f10026for = cf1.m899if(str);
        this.f10024do = (Headers) cf1.m900new(headers);
    }
}
