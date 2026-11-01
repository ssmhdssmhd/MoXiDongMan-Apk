package android.support.v4;

import android.annotation.SuppressLint;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.chromium.net.Cif;
import org.chromium.net.Ctry;

/* loaded from: classes3.dex */
public class r8 extends Ctry.Cdo {

    /* renamed from: case, reason: not valid java name */
    private final qs f5705case;

    /* renamed from: const, reason: not valid java name */
    private boolean f5708const;

    /* renamed from: else, reason: not valid java name */
    private final String f5709else;

    /* renamed from: final, reason: not valid java name */
    private Collection<Object> f5710final;

    /* renamed from: goto, reason: not valid java name */
    private final Cif.AbstractC0480if f5711goto;

    /* renamed from: import, reason: not valid java name */
    private int f5712import;

    /* renamed from: super, reason: not valid java name */
    private boolean f5713super;

    /* renamed from: this, reason: not valid java name */
    private final Executor f5714this;

    /* renamed from: throw, reason: not valid java name */
    private int f5715throw;

    /* renamed from: while, reason: not valid java name */
    private boolean f5716while;

    /* renamed from: break, reason: not valid java name */
    private final ArrayList<Map.Entry<String, String>> f5704break = new ArrayList<>();

    /* renamed from: catch, reason: not valid java name */
    private String f5706catch = "POST";

    /* renamed from: class, reason: not valid java name */
    private int f5707class = 3;

    public r8(String str, Cif.AbstractC0480if abstractC0480if, Executor executor, qs qsVar) {
        Objects.requireNonNull(str, "URL is required.");
        Objects.requireNonNull(abstractC0480if, "Callback is required.");
        Objects.requireNonNull(executor, "Executor is required.");
        Objects.requireNonNull(qsVar, "CronetEngine is required.");
        this.f5709else = str;
        this.f5711goto = abstractC0480if;
        this.f5714this = executor;
        this.f5705case = qsVar;
    }

    @Override // org.chromium.net.Ctry.Cdo
    /* renamed from: class, reason: not valid java name */
    public Ctry.Cdo mo6808class(int i) {
        this.f5713super = true;
        this.f5715throw = i;
        return this;
    }

    @Override // org.chromium.net.Ctry.Cdo
    /* renamed from: const, reason: not valid java name */
    public Ctry.Cdo mo6809const(int i) {
        this.f5716while = true;
        this.f5712import = i;
        return this;
    }

    @Override // org.chromium.net.Ctry.Cdo
    /* renamed from: else, reason: not valid java name */
    public Ctry.Cdo mo6811else(Object obj) {
        Objects.requireNonNull(obj, "Invalid metrics annotation.");
        if (this.f5710final == null) {
            this.f5710final = new ArrayList();
        }
        this.f5710final.add(obj);
        return this;
    }

    @Override // org.chromium.net.Ctry.Cdo, org.chromium.net.Cif.Cdo
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public r8 mo6810do(String str, String str2) {
        Objects.requireNonNull(str, "Invalid header name.");
        Objects.requireNonNull(str2, "Invalid header value.");
        this.f5704break.add(new AbstractMap.SimpleImmutableEntry(str, str2));
        return this;
    }

    @Override // org.chromium.net.Ctry.Cdo, org.chromium.net.Cif.Cdo
    @SuppressLint({"WrongConstant"})
    /* renamed from: goto, reason: not valid java name */
    public Ctry mo6815if() {
        return this.f5705case.mo6660default(this.f5709else, this.f5711goto, this.f5714this, this.f5706catch, this.f5704break, this.f5707class, this.f5708const, this.f5710final, this.f5713super, this.f5715throw, this.f5716while, this.f5712import);
    }

    @Override // org.chromium.net.Ctry.Cdo
    /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
    public r8 mo6813for(boolean z) {
        this.f5708const = z;
        return this;
    }

    @Override // org.chromium.net.Ctry.Cdo, org.chromium.net.Cif.Cdo
    /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
    public r8 mo6816new(String str) {
        Objects.requireNonNull(str, "Method is required.");
        this.f5706catch = str;
        return this;
    }

    @Override // org.chromium.net.Ctry.Cdo, org.chromium.net.Cif.Cdo
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public r8 mo6820try(int i) {
        this.f5707class = i;
        return this;
    }
}
