package com.wsw.cospa.dao;

import android.content.Context;
import android.support.v4.hw;

/* renamed from: com.wsw.cospa.dao.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew {

    /* renamed from: do, reason: not valid java name */
    private Cfor f22152do;

    /* renamed from: for, reason: not valid java name */
    private com.wsw.cospa.dao.Cif f22153for;

    /* renamed from: if, reason: not valid java name */
    private hw f22154if;

    /* renamed from: com.wsw.cospa.dao.new$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private static final Cnew f22155do = new Cnew();

        private Cif() {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Cnew m26132case() {
        return Cif.f22155do;
    }

    /* renamed from: do, reason: not valid java name */
    public void m26133do() {
        m26135for();
        m26136if();
    }

    /* renamed from: else, reason: not valid java name */
    public void m26134else(Context context) {
        com.wsw.cospa.dao.Cif cif = new com.wsw.cospa.dao.Cif(context, "comic-db", null);
        this.f22153for = cif;
        Cfor cfor = new Cfor(cif.getWritableDatabase());
        this.f22152do = cfor;
        this.f22154if = cfor.newSession();
    }

    /* renamed from: for, reason: not valid java name */
    public void m26135for() {
        com.wsw.cospa.dao.Cif cif = this.f22153for;
        if (cif != null) {
            cif.close();
            this.f22153for = null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m26136if() {
        hw hwVar = this.f22154if;
        if (hwVar != null) {
            hwVar.m3136do();
            this.f22154if = null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m26137new() {
        return this.f22152do;
    }

    /* renamed from: try, reason: not valid java name */
    public hw m26138try() {
        return this.f22154if;
    }

    private Cnew() {
    }
}
