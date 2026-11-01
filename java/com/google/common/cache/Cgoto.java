package com.google.common.cache;

import android.support.v4.ki0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@ki0
/* renamed from: com.google.common.cache.goto, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cgoto {
    public static final Cgoto COLLECTED;
    public static final Cgoto EXPIRED;
    public static final Cgoto EXPLICIT;
    public static final Cgoto REPLACED;
    public static final Cgoto SIZE;

    /* renamed from: do, reason: not valid java name */
    private static final /* synthetic */ Cgoto[] f13907do;

    /* renamed from: com.google.common.cache.goto$do, reason: invalid class name */
    public enum Cdo extends Cgoto {
        public Cdo(String str, int i) {
            super(str, i, null);
        }

        @Override // com.google.common.cache.Cgoto
        public boolean wasEvicted() {
            return false;
        }
    }

    static {
        Cdo cdo = new Cdo("EXPLICIT", 0);
        EXPLICIT = cdo;
        Cgoto cgoto = new Cgoto("REPLACED", 1) { // from class: com.google.common.cache.goto.if
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.common.cache.Cgoto
            public boolean wasEvicted() {
                return false;
            }
        };
        REPLACED = cgoto;
        Cgoto cgoto2 = new Cgoto("COLLECTED", 2) { // from class: com.google.common.cache.goto.for
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.common.cache.Cgoto
            public boolean wasEvicted() {
                return true;
            }
        };
        COLLECTED = cgoto2;
        Cgoto cgoto3 = new Cgoto("EXPIRED", 3) { // from class: com.google.common.cache.goto.new
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.common.cache.Cgoto
            public boolean wasEvicted() {
                return true;
            }
        };
        EXPIRED = cgoto3;
        Cgoto cgoto4 = new Cgoto("SIZE", 4) { // from class: com.google.common.cache.goto.try
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.common.cache.Cgoto
            public boolean wasEvicted() {
                return true;
            }
        };
        SIZE = cgoto4;
        f13907do = new Cgoto[]{cdo, cgoto, cgoto2, cgoto3, cgoto4};
    }

    private Cgoto(String str, int i) {
    }

    public static Cgoto valueOf(String str) {
        return (Cgoto) Enum.valueOf(Cgoto.class, str);
    }

    public static Cgoto[] values() {
        return (Cgoto[]) f13907do.clone();
    }

    public abstract boolean wasEvicted();

    public /* synthetic */ Cgoto(String str, int i, Cdo cdo) {
        this(str, i);
    }
}
