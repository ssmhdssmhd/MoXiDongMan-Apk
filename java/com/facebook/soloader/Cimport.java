package com.facebook.soloader;

import android.support.v4.y41;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.soloader.import, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cimport {

    /* renamed from: case, reason: not valid java name */
    private static final String f10675case = "com.facebook.soloader.import";

    /* renamed from: if, reason: not valid java name */
    @y41
    private List<String> f10678if;

    /* renamed from: do, reason: not valid java name */
    private final Object f10676do = new Object();

    /* renamed from: for, reason: not valid java name */
    private Boolean f10677for = Boolean.TRUE;

    /* renamed from: new, reason: not valid java name */
    private boolean f10679new = false;

    /* renamed from: try, reason: not valid java name */
    @y41
    private volatile UnsatisfiedLinkError f10680try = null;

    public Cimport(List<String> list) {
        this.f10678if = list;
    }

    /* renamed from: do, reason: not valid java name */
    public void m12172do() throws UnsatisfiedLinkError {
        if (!m12175new()) {
            throw this.f10680try;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m12173for() throws UnsatisfiedLinkError {
    }

    @y41
    /* renamed from: if, reason: not valid java name */
    public UnsatisfiedLinkError m12174if() {
        return this.f10680try;
    }

    @y41
    /* renamed from: new, reason: not valid java name */
    public boolean m12175new() {
        synchronized (this.f10676do) {
            if (!this.f10677for.booleanValue()) {
                return this.f10679new;
            }
            try {
                try {
                    List<String> list = this.f10678if;
                    if (list != null) {
                        Iterator<String> it = list.iterator();
                        while (it.hasNext()) {
                            Cnative.m12180const(it.next());
                        }
                    }
                    m12173for();
                    this.f10679new = true;
                    this.f10678if = null;
                } catch (Throwable th) {
                    this.f10680try = new UnsatisfiedLinkError("Failed loading libraries");
                    this.f10680try.initCause(th);
                    this.f10679new = false;
                }
            } catch (UnsatisfiedLinkError e) {
                this.f10680try = e;
                this.f10679new = false;
            }
            this.f10677for = Boolean.FALSE;
            return this.f10679new;
        }
    }
}
