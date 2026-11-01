package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.support.v4.cf1;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.engine.prefill.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew {

    /* renamed from: try, reason: not valid java name */
    @VisibleForTesting
    public static final Bitmap.Config f9889try = Bitmap.Config.RGB_565;

    /* renamed from: do, reason: not valid java name */
    private final int f9890do;

    /* renamed from: for, reason: not valid java name */
    private final Bitmap.Config f9891for;

    /* renamed from: if, reason: not valid java name */
    private final int f9892if;

    /* renamed from: new, reason: not valid java name */
    private final int f9893new;

    /* renamed from: com.bumptech.glide.load.engine.prefill.new$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final int f9894do;

        /* renamed from: for, reason: not valid java name */
        private Bitmap.Config f9895for;

        /* renamed from: if, reason: not valid java name */
        private final int f9896if;

        /* renamed from: new, reason: not valid java name */
        private int f9897new;

        public Cdo(int i) {
            this(i, i);
        }

        /* renamed from: do, reason: not valid java name */
        public Cnew m11561do() {
            return new Cnew(this.f9894do, this.f9896if, this.f9895for, this.f9897new);
        }

        /* renamed from: for, reason: not valid java name */
        public Cdo m11562for(@Nullable Bitmap.Config config) {
            this.f9895for = config;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Bitmap.Config m11563if() {
            return this.f9895for;
        }

        /* renamed from: new, reason: not valid java name */
        public Cdo m11564new(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.f9897new = i;
            return this;
        }

        public Cdo(int i, int i2) {
            this.f9897new = 1;
            if (i <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (i2 <= 0) {
                throw new IllegalArgumentException("Height must be > 0");
            }
            this.f9894do = i;
            this.f9896if = i2;
        }
    }

    public Cnew(int i, int i2, Bitmap.Config config, int i3) {
        this.f9891for = (Bitmap.Config) cf1.m901try(config, "Config must not be null");
        this.f9890do = i;
        this.f9892if = i2;
        this.f9893new = i3;
    }

    /* renamed from: do, reason: not valid java name */
    public Bitmap.Config m11557do() {
        return this.f9891for;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cnew)) {
            return false;
        }
        Cnew cnew = (Cnew) obj;
        return this.f9892if == cnew.f9892if && this.f9890do == cnew.f9890do && this.f9893new == cnew.f9893new && this.f9891for == cnew.f9891for;
    }

    /* renamed from: for, reason: not valid java name */
    public int m11558for() {
        return this.f9893new;
    }

    public int hashCode() {
        return (((((this.f9890do * 31) + this.f9892if) * 31) + this.f9891for.hashCode()) * 31) + this.f9893new;
    }

    /* renamed from: if, reason: not valid java name */
    public int m11559if() {
        return this.f9892if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m11560new() {
        return this.f9890do;
    }

    public String toString() {
        return "PreFillSize{width=" + this.f9890do + ", height=" + this.f9892if + ", config=" + this.f9891for + ", weight=" + this.f9893new + MessageFormatter.DELIM_STOP;
    }
}
