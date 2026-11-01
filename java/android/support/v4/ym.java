package android.support.v4;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import com.wsw.cospa.CartoonApplication;
import java.util.Random;

/* loaded from: classes2.dex */
public class ym {

    /* renamed from: android.support.v4.ym$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f8267do;

        /* renamed from: for, reason: not valid java name */
        public int f8268for;

        /* renamed from: if, reason: not valid java name */
        public int f8269if;

        public Cdo(int i, int i2, int i3) {
            if (i3 <= i2) {
                throw new IllegalArgumentException("must be lower < upper");
            }
            m9907try(i);
            m9901case(i2);
            m9903else(i3);
        }

        /* renamed from: case, reason: not valid java name */
        public void m9901case(int i) {
            if (i < 0) {
                i = 0;
            }
            this.f8269if = i;
        }

        /* renamed from: do, reason: not valid java name */
        public int m9902do() {
            return this.f8267do;
        }

        /* renamed from: else, reason: not valid java name */
        public void m9903else(int i) {
            if (i > 255) {
                i = 255;
            }
            this.f8268for = i;
        }

        /* renamed from: for, reason: not valid java name */
        public int m9904for() {
            return this.f8269if;
        }

        /* renamed from: if, reason: not valid java name */
        public int m9905if() {
            return Color.argb(m9902do(), m9904for() + new Random().nextInt((m9906new() - m9904for()) + 1), m9904for() + new Random().nextInt((m9906new() - m9904for()) + 1), m9904for() + new Random().nextInt((m9906new() - m9904for()) + 1));
        }

        /* renamed from: new, reason: not valid java name */
        public int m9906new() {
            return this.f8268for;
        }

        /* renamed from: try, reason: not valid java name */
        public void m9907try(int i) {
            if (i > 255) {
                i = 255;
            }
            if (i < 0) {
                i = 0;
            }
            this.f8267do = i;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m9895case(int i) {
        return ((((float) Color.red(i)) * 0.299f) + (((float) Color.green(i)) * 0.587f)) + (((float) Color.blue(i)) * 0.114f) > 180.0f;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m9896do(int i) {
        return Color.argb(Color.alpha(i), (int) (Color.red(i) * 0.8f), (int) (Color.green(i) * 0.8f), (int) (Color.blue(i) * 0.8f));
    }

    /* renamed from: for, reason: not valid java name */
    public static ColorStateList m9897for(int i, int i2) {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_enabled, R.attr.state_pressed}, new int[]{R.attr.state_enabled}, new int[0]}, new int[]{i, i2, -1});
    }

    /* renamed from: if, reason: not valid java name */
    public static int m9898if(int i) {
        return CartoonApplication.m24690do().getResources().getColor(i);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m9899new() {
        return new Cdo(255, 80, 200).m9905if();
    }

    /* renamed from: try, reason: not valid java name */
    public static int m9900try(int i, int i2, int i3) {
        return new Cdo(i, i2, i3).m9905if();
    }
}
