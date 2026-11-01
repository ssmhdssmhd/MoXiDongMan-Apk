package com.cheng.channel;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.ih;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.GridLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ChannelView extends ScrollView {
    private List<TextView> a;

    /* renamed from: abstract, reason: not valid java name */
    @ColorInt
    private int f10503abstract;
    private float b;

    /* renamed from: break, reason: not valid java name */
    private int f10504break;
    private final int c;

    /* renamed from: case, reason: not valid java name */
    private int f10505case;

    /* renamed from: catch, reason: not valid java name */
    private int f10506catch;

    /* renamed from: class, reason: not valid java name */
    private int f10507class;

    /* renamed from: const, reason: not valid java name */
    @DrawableRes
    private int f10508const;

    /* renamed from: continue, reason: not valid java name */
    private int f10509continue;
    private float d;

    /* renamed from: default, reason: not valid java name */
    @ColorInt
    private int f10510default;

    /* renamed from: do, reason: not valid java name */
    private Context f10511do;
    private String e;

    /* renamed from: else, reason: not valid java name */
    private int f10512else;

    /* renamed from: extends, reason: not valid java name */
    @DrawableRes
    private int f10513extends;
    private String f;

    /* renamed from: final, reason: not valid java name */
    @DrawableRes
    private int f10514final;

    /* renamed from: finally, reason: not valid java name */
    @ColorInt
    private int f10515finally;

    /* renamed from: for, reason: not valid java name */
    private int f10516for;
    private OnChannelListener g;

    /* renamed from: goto, reason: not valid java name */
    private int f10517goto;
    private int[] h;

    /* renamed from: if, reason: not valid java name */
    private Map<String, List<ih>> f10518if;

    /* renamed from: implements, reason: not valid java name */
    private List<TextView> f10519implements;

    /* renamed from: import, reason: not valid java name */
    @ColorInt
    private int f10520import;

    /* renamed from: instanceof, reason: not valid java name */
    private List<TextView> f10521instanceof;

    /* renamed from: interface, reason: not valid java name */
    private int f10522interface;

    /* renamed from: native, reason: not valid java name */
    @ColorInt
    private int f10523native;

    /* renamed from: new, reason: not valid java name */
    private Cdo f10524new;

    /* renamed from: package, reason: not valid java name */
    private int f10525package;

    /* renamed from: private, reason: not valid java name */
    @DrawableRes
    private int f10526private;

    /* renamed from: protected, reason: not valid java name */
    private int f10527protected;

    /* renamed from: public, reason: not valid java name */
    @DrawableRes
    private int f10528public;

    /* renamed from: return, reason: not valid java name */
    @DrawableRes
    private int f10529return;

    /* renamed from: static, reason: not valid java name */
    @DrawableRes
    private int f10530static;

    /* renamed from: strictfp, reason: not valid java name */
    private boolean f10531strictfp;

    /* renamed from: super, reason: not valid java name */
    @DrawableRes
    private int f10532super;

    /* renamed from: switch, reason: not valid java name */
    @ColorInt
    private int f10533switch;

    /* renamed from: synchronized, reason: not valid java name */
    private List<TextView> f10534synchronized;

    /* renamed from: this, reason: not valid java name */
    private int f10535this;

    /* renamed from: throw, reason: not valid java name */
    @DrawableRes
    private int f10536throw;

    /* renamed from: throws, reason: not valid java name */
    @ColorInt
    private int f10537throws;

    /* renamed from: transient, reason: not valid java name */
    private int f10538transient;

    /* renamed from: try, reason: not valid java name */
    private int f10539try;

    /* renamed from: volatile, reason: not valid java name */
    private int f10540volatile;

    /* renamed from: while, reason: not valid java name */
    @ColorInt
    private int f10541while;

    public interface OnChannelListener {
        void channelEditFinish(List<ih> list);

        void channelEditStart();

        void channelItemClick(int i, ih ihVar);
    }

    /* renamed from: com.cheng.channel.ChannelView$do, reason: invalid class name */
    public class Cdo extends GridLayout implements View.OnLongClickListener, View.OnClickListener, View.OnTouchListener {

        /* renamed from: break, reason: not valid java name */
        private int[] f10542break;

        /* renamed from: case, reason: not valid java name */
        private boolean f10543case;

        /* renamed from: catch, reason: not valid java name */
        private int f10544catch;

        /* renamed from: class, reason: not valid java name */
        private TextView f10545class;

        /* renamed from: const, reason: not valid java name */
        private TextView f10546const;

        /* renamed from: default, reason: not valid java name */
        public float f10547default;

        /* renamed from: do, reason: not valid java name */
        private int f10548do;

        /* renamed from: else, reason: not valid java name */
        private AnimatorSet f10549else;

        /* renamed from: extends, reason: not valid java name */
        public float f10550extends;

        /* renamed from: final, reason: not valid java name */
        private TextView f10551final;

        /* renamed from: finally, reason: not valid java name */
        public float f10552finally;

        /* renamed from: for, reason: not valid java name */
        private final int f10553for;

        /* renamed from: goto, reason: not valid java name */
        private List<View> f10554goto;

        /* renamed from: if, reason: not valid java name */
        private final int f10555if;

        /* renamed from: import, reason: not valid java name */
        private boolean f10556import;

        /* renamed from: native, reason: not valid java name */
        private final int f10557native;

        /* renamed from: new, reason: not valid java name */
        private final int f10558new;

        /* renamed from: package, reason: not valid java name */
        public float f10559package;

        /* renamed from: public, reason: not valid java name */
        private double f10561public;

        /* renamed from: return, reason: not valid java name */
        private Thread f10562return;

        /* renamed from: static, reason: not valid java name */
        private Handler f10563static;

        /* renamed from: super, reason: not valid java name */
        private int f10564super;

        /* renamed from: switch, reason: not valid java name */
        public float f10565switch;

        /* renamed from: this, reason: not valid java name */
        private List<ArrayList<View>> f10566this;

        /* renamed from: throw, reason: not valid java name */
        private boolean f10567throw;

        /* renamed from: throws, reason: not valid java name */
        public float f10568throws;

        /* renamed from: try, reason: not valid java name */
        private int f10569try;

        /* renamed from: while, reason: not valid java name */
        private boolean f10570while;

        /* renamed from: com.cheng.channel.ChannelView$do$do, reason: invalid class name and collision with other inner class name */
        public class C0047do extends Thread {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ View f10571do;

            public C0047do(View view) {
                this.f10571do = view;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws InterruptedException {
                try {
                    Thread.sleep(65L);
                    Message message = new Message();
                    message.obj = this.f10571do;
                    Cdo.this.f10563static.sendMessage(message);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.cheng.channel.ChannelView$do$for, reason: invalid class name */
        public class Cfor implements ValueAnimator.AnimatorUpdateListener {
            public Cfor() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Cdo.this.f10564super = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                Cdo.this.f10567throw = true;
                Cdo.this.requestLayout();
            }
        }

        /* renamed from: com.cheng.channel.ChannelView$do$if, reason: invalid class name */
        public class Cif extends Handler {
            public Cif(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                TextView textView = (TextView) message.obj;
                textView.bringToFront();
                textView.setBackgroundResource(ChannelView.this.f10532super);
                textView.setTextColor(ChannelView.this.f10523native);
                Cdo.this.f10556import = true;
            }
        }

        /* renamed from: com.cheng.channel.ChannelView$do$new, reason: invalid class name */
        public class Cnew implements Animator.AnimatorListener {
            public Cnew() {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Cdo.this.f10567throw = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }

        public Cdo(ChannelView channelView, Context context) {
            this(channelView, context, null);
        }

        /* renamed from: break, reason: not valid java name */
        private void m12134break(View view) {
            view.bringToFront();
            com.cheng.channel.Cdo cdo = (com.cheng.channel.Cdo) view.getTag();
            ArrayList<View> arrayList = this.f10566this.get(cdo.f10579for);
            ArrayList<View> arrayList2 = this.f10566this.get(0);
            com.cheng.channel.Cdo cdo2 = (com.cheng.channel.Cdo) (arrayList2.size() == 0 ? this.f10554goto.get(0) : arrayList2.get(arrayList2.size() - 1)).getTag();
            arrayList2.add(arrayList2.size(), view);
            arrayList.remove(view);
            view.setOnLongClickListener(this);
            view.setOnTouchListener(this);
            m12136catch();
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            if (arrayList2.size() % ChannelView.this.f10539try == 1 || ChannelView.this.f10539try == 1) {
                if (arrayList2.size() == 1) {
                    PointF pointF = cdo2.f10580if;
                    cdo.f10580if = new PointF(pointF.x, pointF.y + r4.getMeasuredHeight());
                    m12146native(1, ChannelView.this.f10512else);
                } else {
                    cdo.f10580if = new PointF(((com.cheng.channel.Cdo) arrayList2.get(0).getTag()).f10580if.x, cdo2.f10580if.y + ChannelView.this.f10512else + (ChannelView.this.f10506catch * 2));
                    m12146native(1, ChannelView.this.f10512else + (ChannelView.this.f10506catch * 2));
                }
                viewPropertyAnimatorAnimate.x(cdo.f10580if.x).y(cdo.f10580if.y).setDuration(200L);
            } else {
                PointF pointF2 = new PointF(cdo2.f10580if.x + ChannelView.this.f10505case + (ChannelView.this.f10507class * 2), cdo2.f10580if.y);
                cdo.f10580if = pointF2;
                viewPropertyAnimatorAnimate.x(pointF2.x).y(cdo.f10580if.y).setDuration(200L);
            }
            if (this.f10569try == 1) {
                view.setBackgroundResource(ChannelView.this.f10514final);
            }
            if (arrayList.size() % ChannelView.this.f10539try == 0) {
                if (arrayList.size() == 0) {
                    m12146native(cdo.f10579for + 1, -ChannelView.this.f10512else);
                } else {
                    m12146native(cdo.f10579for + 1, (-ChannelView.this.f10512else) - (ChannelView.this.f10506catch * 2));
                }
            }
            cdo.f10579for = 0;
        }

        /* renamed from: catch, reason: not valid java name */
        private void m12136catch() {
            for (int i = 0; i < this.f10566this.size(); i++) {
                ArrayList<View> arrayList = this.f10566this.get(i);
                int[] iArr = this.f10542break;
                int size = arrayList.size() % ChannelView.this.f10539try;
                int size2 = arrayList.size();
                iArr[i] = size == 0 ? size2 / ChannelView.this.f10539try : (size2 / ChannelView.this.f10539try) + 1;
            }
            int i2 = 0;
            for (int i3 : this.f10542break) {
                if (i3 > 0) {
                    i2 += (ChannelView.this.f10512else * i3) + (((i3 * 2) - 2) * ChannelView.this.f10506catch);
                }
            }
            int i4 = i2 - this.f10544catch;
            if (i4 != 0) {
                this.f10544catch = i2;
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(getMeasuredHeight(), getMeasuredHeight() + i4);
                valueAnimatorOfInt.setDuration(200L);
                valueAnimatorOfInt.start();
                valueAnimatorOfInt.addUpdateListener(new Cfor());
                valueAnimatorOfInt.addListener(new Cnew());
            }
        }

        /* renamed from: class, reason: not valid java name */
        private void m12137class(boolean z) {
            ArrayList<View> arrayList = this.f10566this.get(0);
            if (z) {
                this.f10546const.setVisibility(0);
                this.f10545class.setVisibility(4);
                this.f10569try = 1;
                this.f10570while = true;
                return;
            }
            this.f10546const.setVisibility(4);
            this.f10545class.setVisibility(0);
            this.f10569try = 0;
            this.f10570while = false;
            for (int i = 0; i < arrayList.size(); i++) {
                if (i >= ChannelView.this.f10516for) {
                    arrayList.get(i).setBackgroundResource(ChannelView.this.f10508const);
                }
            }
        }

        /* renamed from: const, reason: not valid java name */
        private void m12138const(View view, MotionEvent motionEvent) {
            this.f10552finally = motionEvent.getRawX();
            this.f10559package = motionEvent.getRawY();
            view.setX(view.getX() + (this.f10552finally - this.f10547default));
            view.setY(view.getY() + (this.f10559package - this.f10550extends));
            this.f10547default = this.f10552finally;
            this.f10550extends = this.f10559package;
            ArrayList<View> arrayList = this.f10566this.get(0);
            com.cheng.channel.Cdo cdo = (com.cheng.channel.Cdo) view.getTag();
            int iIndexOf = arrayList.indexOf(view);
            int i = 0;
            while (i < arrayList.size()) {
                if (i >= ChannelView.this.f10516for && i != iIndexOf) {
                    com.cheng.channel.Cdo cdo2 = (com.cheng.channel.Cdo) arrayList.get(i).getTag();
                    PointF pointF = cdo2.f10580if;
                    float f = (int) pointF.x;
                    float f2 = (int) pointF.y;
                    if (((int) Math.sqrt(((view.getX() - f) * (view.getX() - f)) + ((view.getY() - f2) * (view.getY() - f2)))) <= this.f10548do && !this.f10549else.isRunning()) {
                        this.f10549else = new AnimatorSet();
                        PointF pointF2 = cdo2.f10580if;
                        ObjectAnimator[] objectAnimatorArr = new ObjectAnimator[Math.abs(i - iIndexOf) * 2];
                        if (i < iIndexOf) {
                            int i2 = i;
                            while (i2 < iIndexOf) {
                                TextView textView = (TextView) arrayList.get(i2);
                                com.cheng.channel.Cdo cdo3 = (com.cheng.channel.Cdo) textView.getTag();
                                int i3 = i2 + 1;
                                PointF pointF3 = ((com.cheng.channel.Cdo) arrayList.get(i3).getTag()).f10580if;
                                cdo3.f10580if = pointF3;
                                int i4 = (i2 - i) * 2;
                                objectAnimatorArr[i4] = ObjectAnimator.ofFloat(textView, "X", pointF3.x);
                                objectAnimatorArr[i4 + 1] = ObjectAnimator.ofFloat(textView, "Y", cdo3.f10580if.y);
                                i2 = i3;
                            }
                        } else {
                            int i5 = i;
                            while (i5 > iIndexOf) {
                                TextView textView2 = (TextView) arrayList.get(i5);
                                com.cheng.channel.Cdo cdo4 = (com.cheng.channel.Cdo) textView2.getTag();
                                PointF pointF4 = ((com.cheng.channel.Cdo) arrayList.get(i5 - 1).getTag()).f10580if;
                                cdo4.f10580if = pointF4;
                                int i6 = ((i5 - iIndexOf) - 1) * 2;
                                objectAnimatorArr[i6] = ObjectAnimator.ofFloat(textView2, "X", pointF4.x);
                                objectAnimatorArr[i6 + 1] = ObjectAnimator.ofFloat(textView2, "Y", cdo4.f10580if.y);
                                i5--;
                                iIndexOf = iIndexOf;
                            }
                        }
                        this.f10549else.playTogether(objectAnimatorArr);
                        this.f10549else.setDuration(200L);
                        this.f10549else.start();
                        cdo.f10580if = pointF2;
                        arrayList.remove(view);
                        arrayList.add(i, view);
                        return;
                    }
                }
                i++;
                iIndexOf = iIndexOf;
            }
        }

        /* renamed from: final, reason: not valid java name */
        private void m12141final(View view) {
            PointF pointF;
            view.bringToFront();
            if (this.f10569try == 1) {
                view.setBackgroundResource(ChannelView.this.f10508const);
            }
            com.cheng.channel.Cdo cdo = (com.cheng.channel.Cdo) view.getTag();
            int i = cdo.f10581new.f2768if;
            if (i < 1 || i > ChannelView.this.f10518if.size() - 1) {
                i = 1;
            }
            ArrayList<View> arrayList = this.f10566this.get(i);
            if (arrayList.size() == 0) {
                cdo.f10580if = new PointF(((com.cheng.channel.Cdo) this.f10554goto.get(i).getTag()).f10580if.x, ((com.cheng.channel.Cdo) this.f10554goto.get(i).getTag()).f10580if.y + this.f10554goto.get(i).getMeasuredHeight());
            } else {
                cdo.f10580if = ((com.cheng.channel.Cdo) arrayList.get(0).getTag()).f10580if;
            }
            view.animate().x(cdo.f10580if.x).y(cdo.f10580if.y).setDuration(200L);
            arrayList.add(0, view);
            this.f10566this.get(0).remove(view);
            view.setOnLongClickListener(null);
            view.setOnTouchListener(null);
            m12136catch();
            com.cheng.channel.Cdo cdo2 = (com.cheng.channel.Cdo) arrayList.get(arrayList.size() - 1).getTag();
            if (this.f10566this.get(0).size() % ChannelView.this.f10539try == 0) {
                if (this.f10566this.get(0).size() == 0) {
                    m12146native(1, -ChannelView.this.f10512else);
                } else {
                    m12146native(1, (-ChannelView.this.f10512else) - (ChannelView.this.f10506catch * 2));
                }
            }
            if (arrayList.size() % ChannelView.this.f10539try == 1) {
                if (arrayList.size() == 1) {
                    m12146native(i + 1, ChannelView.this.f10512else);
                } else {
                    m12146native(i + 1, ChannelView.this.f10512else + (ChannelView.this.f10506catch * 2));
                }
                pointF = new PointF(cdo.f10580if.x, cdo2.f10580if.y + ChannelView.this.f10512else + (ChannelView.this.f10506catch * 2));
            } else {
                pointF = new PointF(cdo2.f10580if.x + ChannelView.this.f10505case + (ChannelView.this.f10507class * 2), cdo2.f10580if.y);
            }
            for (int i2 = 1; i2 < arrayList.size(); i2++) {
                View view2 = arrayList.get(i2);
                com.cheng.channel.Cdo cdo3 = (com.cheng.channel.Cdo) view2.getTag();
                if (i2 < arrayList.size() - 1) {
                    cdo3.f10580if = ((com.cheng.channel.Cdo) arrayList.get(i2 + 1).getTag()).f10580if;
                } else {
                    cdo3.f10580if = pointF;
                }
                view2.animate().x(cdo3.f10580if.x).y(cdo3.f10580if.y).setDuration(200L);
            }
            cdo.f10579for = i;
        }

        /* renamed from: import, reason: not valid java name */
        private void m12145import(View view) {
            C0047do c0047do = new C0047do(view);
            this.f10562return = c0047do;
            c0047do.start();
        }

        /* renamed from: native, reason: not valid java name */
        private void m12146native(int i, int i2) {
            for (int i3 = i; i3 < this.f10554goto.size(); i3++) {
                View view = this.f10554goto.get(i3);
                com.cheng.channel.Cdo cdo = (com.cheng.channel.Cdo) view.getTag();
                PointF pointF = cdo.f10580if;
                cdo.f10580if = new PointF(pointF.x, pointF.y + i2);
                view.animate().x(cdo.f10580if.x).y(cdo.f10580if.y).setDuration(200L);
            }
            while (i < this.f10566this.size()) {
                ArrayList<View> arrayList = this.f10566this.get(i);
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    View view2 = arrayList.get(i4);
                    com.cheng.channel.Cdo cdo2 = (com.cheng.channel.Cdo) view2.getTag();
                    PointF pointF2 = cdo2.f10580if;
                    cdo2.f10580if = new PointF(pointF2.x, pointF2.y + i2);
                    view2.animate().x(cdo2.f10580if.x).y(cdo2.f10580if.y).setDuration(200L);
                }
                i++;
            }
        }

        /* renamed from: super, reason: not valid java name */
        private void m12148super() {
            ArrayList<View> arrayList = this.f10566this.get(0);
            for (int i = ChannelView.this.f10516for; i < arrayList.size(); i++) {
                arrayList.get(i).setBackgroundResource(ChannelView.this.f10514final);
            }
            m12137class(true);
        }

        /* JADX WARN: Removed duplicated region for block: B:56:0x030c A[PHI: r16
          0x030c: PHI (r16v3 java.util.Iterator) = (r16v1 java.util.Iterator), (r16v4 java.util.Iterator) binds: [B:55:0x030a, B:52:0x0300] A[DONT_GENERATE, DONT_INLINE]] */
        /* renamed from: this, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void m12149this() {
            Iterator it;
            if (ChannelView.this.f10518if != null) {
                this.f10542break = new int[ChannelView.this.f10518if.size()];
                Iterator it2 = ChannelView.this.f10518if.keySet().iterator();
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                while (it2.hasNext()) {
                    String str = (String) it2.next();
                    List arrayList = (List) ChannelView.this.f10518if.get(str);
                    if (i2 == 0 && ChannelView.this.f10516for > arrayList.size()) {
                        throw new RuntimeException("固定频道数量不能大于已选频道数量");
                    }
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    this.f10542break[i2] = arrayList.size() % ChannelView.this.f10539try == 0 ? arrayList.size() / ChannelView.this.f10539try : (arrayList.size() / ChannelView.this.f10539try) + 1;
                    i3 = i2 == 0 ? 0 : i3 + this.f10542break[i2 - 1] + 1;
                    GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(GridLayout.spec(i3), GridLayout.spec(i, ChannelView.this.f10539try));
                    View viewInflate = LayoutInflater.from(ChannelView.this.f10511do).inflate(R.layout.cgl_my_channel, (ViewGroup) null);
                    TextView textView = (TextView) viewInflate.findViewById(R.id.tv_sub_title);
                    if (i2 == 0) {
                        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_tip_edit);
                        this.f10545class = textView2;
                        textView2.setVisibility(i);
                        this.f10545class.setOnClickListener(this);
                        this.f10545class.setBackgroundResource(ChannelView.this.f10528public);
                        this.f10545class.setTextColor(ChannelView.this.f10533switch);
                        this.f10545class.setTextSize(i, ChannelView.this.f10522interface);
                        TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_tip_finish);
                        this.f10546const = textView3;
                        textView3.setVisibility(4);
                        this.f10546const.setOnClickListener(this);
                        this.f10546const.setBackgroundResource(ChannelView.this.f10529return);
                        this.f10546const.setTextColor(ChannelView.this.f10537throws);
                        this.f10546const.setTextSize(i, ChannelView.this.f10527protected);
                        this.f10551final = textView;
                        textView.setText(ChannelView.this.e);
                        this.f10551final.setTextColor(ChannelView.this.f10503abstract);
                        this.f10551final.setTextSize(i, ChannelView.this.f10509continue);
                        this.f10551final.setBackgroundResource(ChannelView.this.f10526private);
                    } else {
                        textView.setText(ChannelView.this.f);
                        textView.setTextColor(ChannelView.this.f10515finally);
                        textView.setBackgroundResource(ChannelView.this.f10513extends);
                        textView.setTextSize(i, ChannelView.this.f10525package);
                        ChannelView.this.a.add(textView);
                    }
                    com.cheng.channel.Cdo cdo = new com.cheng.channel.Cdo();
                    cdo.f10578do = 1;
                    cdo.f10580if = new PointF();
                    viewInflate.setTag(cdo);
                    TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_title);
                    textView4.setText(str);
                    textView4.setTextSize(i, ChannelView.this.f10540volatile);
                    textView4.setBackgroundResource(ChannelView.this.f10530static);
                    textView4.setTextColor(ChannelView.this.f10510default);
                    if (ChannelView.this.f10531strictfp) {
                        textView4.setTypeface(Typeface.DEFAULT_BOLD);
                    }
                    ChannelView.this.f10534synchronized.add(textView4);
                    layoutParams.height = ChannelView.this.f10535this;
                    viewInflate.setPadding(ChannelView.this.f10504break, i, ChannelView.this.f10504break, i);
                    addView(viewInflate, layoutParams);
                    this.f10554goto.add(viewInflate);
                    ArrayList<View> arrayList2 = new ArrayList<>();
                    int size = arrayList.size() % ChannelView.this.f10539try;
                    int i4 = 0;
                    while (i4 < arrayList.size()) {
                        TextView textView5 = new TextView(ChannelView.this.f10511do);
                        com.cheng.channel.Cdo cdo2 = new com.cheng.channel.Cdo();
                        cdo2.f10578do = 2;
                        cdo2.f10579for = i2;
                        cdo2.f10580if = new PointF();
                        cdo2.f10581new = (ih) arrayList.get(i4);
                        textView5.setTag(cdo2);
                        textView5.setText(((ih) arrayList.get(i4)).f2766do);
                        textView5.setGravity(17);
                        textView5.setTextSize(i, ChannelView.this.f10538transient);
                        if (i2 != 0) {
                            textView5.setTextColor(ChannelView.this.f10541while);
                            textView5.setBackgroundResource(ChannelView.this.f10508const);
                            ChannelView.this.f10521instanceof.add(textView5);
                        } else if (i4 < ChannelView.this.f10516for) {
                            textView5.setTextColor(ChannelView.this.f10520import);
                            textView5.setBackgroundResource(ChannelView.this.f10536throw);
                            ChannelView.this.f10519implements.add(textView5);
                        } else {
                            textView5.setOnTouchListener(this);
                            textView5.setOnLongClickListener(this);
                            textView5.setTextColor(ChannelView.this.f10541while);
                            textView5.setBackgroundResource(ChannelView.this.f10508const);
                            ChannelView.this.f10521instanceof.add(textView5);
                        }
                        textView5.setOnClickListener(this);
                        GridLayout.LayoutParams layoutParams2 = new GridLayout.LayoutParams();
                        int i5 = ChannelView.this.f10507class;
                        int i6 = ChannelView.this.f10506catch;
                        int i7 = ChannelView.this.f10507class;
                        int i8 = ChannelView.this.f10506catch;
                        if (i4 % ChannelView.this.f10539try == 0) {
                            i5 = 0;
                        }
                        int i9 = i4 + 1;
                        if (i9 % ChannelView.this.f10539try == 0) {
                            i7 = 0;
                        }
                        if (i4 < ChannelView.this.f10539try) {
                            i6 = 0;
                        }
                        if (size == 0) {
                            it = it2;
                            if (i4 >= arrayList.size() - ChannelView.this.f10539try) {
                                i8 = 0;
                            }
                        } else {
                            it = it2;
                            if (i4 >= arrayList.size() - size) {
                            }
                        }
                        layoutParams2.setMargins(i5, i6, i7, i8);
                        addView(textView5, layoutParams2);
                        arrayList2.add(textView5);
                        i4 = i9;
                        it2 = it;
                        i = 0;
                    }
                    this.f10566this.add(arrayList2);
                    i2++;
                    it2 = it2;
                    i = 0;
                }
            }
        }

        /* renamed from: throw, reason: not valid java name */
        private void m12150throw(View view, ArrayList<View> arrayList) {
            int size = arrayList.size();
            int iIndexOf = arrayList.indexOf(view);
            int i = size - 1;
            if (iIndexOf != i) {
                while (i > iIndexOf) {
                    com.cheng.channel.Cdo cdo = (com.cheng.channel.Cdo) arrayList.get(i - 1).getTag();
                    View view2 = arrayList.get(i);
                    com.cheng.channel.Cdo cdo2 = (com.cheng.channel.Cdo) view2.getTag();
                    cdo2.f10580if = cdo.f10580if;
                    view2.animate().x(cdo2.f10580if.x).y(cdo2.f10580if.y).setDuration(200L);
                    i--;
                }
            }
        }

        /* renamed from: while, reason: not valid java name */
        private void m12152while() {
            this.f10548do = (int) ((ChannelView.this.b * this.f10548do) + 0.5f);
            setColumnCount(ChannelView.this.f10539try);
            setPadding(ChannelView.this.f10517goto, ChannelView.this.f10517goto, ChannelView.this.f10517goto, ChannelView.this.f10517goto);
            m12149this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == this.f10545class) {
                m12148super();
                if (ChannelView.this.g != null) {
                    ChannelView.this.g.channelEditStart();
                    return;
                }
                return;
            }
            if (view == this.f10546const) {
                m12137class(false);
                if (ChannelView.this.g != null) {
                    ChannelView.this.g.channelEditFinish(ChannelView.this.getMyChannel());
                    return;
                }
                return;
            }
            com.cheng.channel.Cdo cdo = (com.cheng.channel.Cdo) view.getTag();
            ArrayList<View> arrayList = this.f10566this.get(cdo.f10579for);
            if (cdo.f10579for != 0) {
                m12150throw(view, arrayList);
                m12134break(view);
            } else if (this.f10569try == 1 && arrayList.indexOf(view) >= ChannelView.this.f10516for) {
                m12150throw(view, arrayList);
                m12141final(view);
            } else {
                if (this.f10569try != 0 || ChannelView.this.g == null) {
                    return;
                }
                ChannelView.this.g.channelItemClick(arrayList.indexOf(view), ((com.cheng.channel.Cdo) view.getTag()).f10581new);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.f10563static.removeCallbacksAndMessages(null);
        }

        @Override // android.widget.GridLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            if (this.f10543case) {
                super.onLayout(z, i, i2, i3, i4);
                for (int i5 = 0; i5 < getChildCount(); i5++) {
                    View childAt = getChildAt(i5);
                    com.cheng.channel.Cdo cdo = (com.cheng.channel.Cdo) childAt.getTag();
                    cdo.f10580if.x = childAt.getX();
                    cdo.f10580if.y = childAt.getY();
                }
                this.f10543case = false;
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (this.f10570while) {
                return true;
            }
            view.bringToFront();
            ArrayList<View> arrayList = this.f10566this.get(0);
            int iIndexOf = arrayList.indexOf(view);
            if (iIndexOf >= ChannelView.this.f10516for) {
                for (int i = ChannelView.this.f10516for; i < arrayList.size(); i++) {
                    if (i == iIndexOf) {
                        arrayList.get(i).setBackgroundResource(ChannelView.this.f10532super);
                        ((TextView) arrayList.get(i)).setTextColor(ChannelView.this.f10523native);
                    } else {
                        arrayList.get(i).setBackgroundResource(ChannelView.this.f10514final);
                    }
                }
                m12137class(true);
            }
            this.f10556import = true;
            return true;
        }

        @Override // android.widget.GridLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            if (this.f10567throw) {
                setMeasuredDimension(size, this.f10564super);
                return;
            }
            int measuredHeight = 0;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (((com.cheng.channel.Cdo) childAt.getTag()).f10578do == 1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size - (ChannelView.this.f10517goto * 2), 1073741824), i2);
                    measuredHeight += childAt.getMeasuredHeight();
                } else if (((com.cheng.channel.Cdo) childAt.getTag()).f10578do == 2) {
                    ChannelView channelView = ChannelView.this;
                    channelView.f10505case = ((size - (channelView.f10507class * ((ChannelView.this.f10539try * 2) - 2))) - (ChannelView.this.f10517goto * 2)) / ChannelView.this.f10539try;
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(ChannelView.this.f10505case, 1073741824), View.MeasureSpec.makeMeasureSpec(ChannelView.this.f10512else, 1073741824));
                }
            }
            int i4 = 0;
            for (int i5 : this.f10542break) {
                if (i5 > 0) {
                    i4 += (ChannelView.this.f10512else * i5) + (((i5 * 2) - 2) * ChannelView.this.f10506catch);
                }
            }
            this.f10544catch = i4;
            setMeasuredDimension(size, i4 + (ChannelView.this.f10517goto * 2) + measuredHeight);
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.f10561public = 0.0d;
                float rawX = motionEvent.getRawX();
                this.f10547default = rawX;
                this.f10565switch = rawX;
                float rawY = motionEvent.getRawY();
                this.f10550extends = rawY;
                this.f10568throws = rawY;
                if (this.f10570while) {
                    m12145import(view);
                }
            }
            if (!this.f10570while) {
                return false;
            }
            if (motionEvent.getAction() == 2 && this.f10556import) {
                requestDisallowInterceptTouchEvent(true);
                if (this.f10561public < ChannelView.this.d) {
                    double dSqrt = Math.sqrt(Math.pow(motionEvent.getRawX() - this.f10565switch, 2.0d) + Math.pow(motionEvent.getRawY() - this.f10568throws, 2.0d));
                    if (dSqrt > this.f10561public) {
                        this.f10561public = dSqrt;
                    }
                }
                m12138const(view, motionEvent);
            }
            if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
                return false;
            }
            Thread thread = this.f10562return;
            if (thread != null && thread.isAlive() && !this.f10562return.isInterrupted()) {
                this.f10562return.interrupt();
            }
            if (!this.f10556import) {
                return false;
            }
            com.cheng.channel.Cdo cdo = (com.cheng.channel.Cdo) view.getTag();
            view.animate().x(cdo.f10580if.x).y(cdo.f10580if.y).setDuration(200L);
            view.setBackgroundResource(ChannelView.this.f10514final);
            ((TextView) view).setTextColor(ChannelView.this.f10541while);
            this.f10556import = false;
            return this.f10561public >= ((double) ChannelView.this.d);
        }

        public Cdo(ChannelView channelView, @Nullable Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public Cdo(Context context, @Nullable AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f10548do = 30;
            this.f10555if = 200;
            this.f10553for = 0;
            this.f10558new = 1;
            this.f10569try = 0;
            this.f10543case = true;
            this.f10549else = new AnimatorSet();
            this.f10554goto = new ArrayList();
            this.f10566this = new ArrayList();
            this.f10557native = 65;
            this.f10563static = new Cif(Looper.getMainLooper());
            m12152while();
        }
    }

    public ChannelView(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 5) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void g(String str, List<ih> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        if (this.f10518if.size() != 0) {
            Iterator<ih> it = list.iterator();
            while (it.hasNext()) {
                it.next().f2768if = this.f10518if.size();
            }
        } else {
            this.h = new int[list.size()];
            for (int i = 0; i < list.size(); i++) {
                list.get(i).f2769new = i;
                this.h[i] = i;
            }
        }
        this.f10518if.put(str, list);
    }

    public List<ih> getMyChannel() {
        ArrayList arrayList = new ArrayList();
        Cdo cdo = this.f10524new;
        if (cdo != null && cdo.f10566this.size() > 0 && this.f10524new.f10566this.get(0) != null) {
            Iterator it = ((ArrayList) this.f10524new.f10566this.get(0)).iterator();
            while (it.hasNext()) {
                arrayList.add(((com.cheng.channel.Cdo) ((View) it.next()).getTag()).f10581new);
            }
        }
        return arrayList;
    }

    public List<List<ih>> getOtherChannel() {
        ArrayList arrayList = new ArrayList();
        Cdo cdo = this.f10524new;
        if (cdo != null && cdo.f10566this.size() > 0) {
            int size = this.f10524new.f10566this.size();
            for (int i = 1; i < size; i++) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = ((ArrayList) this.f10524new.f10566this.get(i)).iterator();
                while (it.hasNext()) {
                    arrayList2.add(((com.cheng.channel.Cdo) ((View) it.next()).getTag()).f10581new);
                }
                arrayList.add(arrayList2);
            }
        }
        return arrayList;
    }

    public void h() {
        if (this.f10518if.size() == 1) {
            this.f10518if.put("推荐频道", null);
        }
        if (this.f10524new == null) {
            Cdo cdo = new Cdo(this, this.f10511do);
            this.f10524new = cdo;
            addView(cdo);
        }
    }

    public boolean i() {
        Cdo cdo = this.f10524new;
        if (cdo != null && cdo.f10566this.size() > 0 && this.f10524new.f10566this.get(0) != null) {
            int size = ((ArrayList) this.f10524new.f10566this.get(0)).size();
            int[] iArr = new int[size];
            for (int i = 0; i < ((ArrayList) this.f10524new.f10566this.get(0)).size(); i++) {
                iArr[i] = ((com.cheng.channel.Cdo) ((View) ((ArrayList) this.f10524new.f10566this.get(0)).get(i)).getTag()).f10581new.f2769new;
            }
            if (this.h.length != size) {
                return true;
            }
            int i2 = 0;
            while (true) {
                int[] iArr2 = this.h;
                if (i2 >= iArr2.length) {
                    break;
                }
                if (iArr2[i2] != iArr[i2]) {
                    return true;
                }
                i2++;
            }
        }
        return false;
    }

    public void j(int i, int i2) {
        this.f10538transient = (int) TypedValue.applyDimension(i, i2, getResources().getDisplayMetrics());
        Iterator<TextView> it = this.f10521instanceof.iterator();
        while (it.hasNext()) {
            it.next().setTextSize(0, this.f10538transient);
        }
        Iterator<TextView> it2 = this.f10519implements.iterator();
        while (it2.hasNext()) {
            it2.next().setTextSize(0, this.f10538transient);
        }
    }

    public void k(int i, int i2) {
        this.f10525package = (int) TypedValue.applyDimension(i, i2, getResources().getDisplayMetrics());
        Iterator<TextView> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().setTextSize(0, this.f10525package);
        }
    }

    public void l(int i, int i2) {
        this.f10540volatile = (int) TypedValue.applyDimension(i, i2, getResources().getDisplayMetrics());
        Iterator<TextView> it = this.f10534synchronized.iterator();
        while (it.hasNext()) {
            it.next().setTextSize(0, this.f10540volatile);
        }
    }

    public void m(int i, int i2) {
        this.f10509continue = (int) TypedValue.applyDimension(i, i2, getResources().getDisplayMetrics());
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10551final == null) {
            return;
        }
        this.f10524new.f10551final.setTextSize(0, this.f10509continue);
    }

    public void n(int i, int i2) {
        this.f10522interface = (int) TypedValue.applyDimension(i, i2, getResources().getDisplayMetrics());
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10545class == null) {
            return;
        }
        this.f10524new.f10545class.setTextSize(0, this.f10522interface);
    }

    public void o(int i, int i2) {
        this.f10527protected = (int) TypedValue.applyDimension(i, i2, getResources().getDisplayMetrics());
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10546const == null) {
            return;
        }
        this.f10524new.f10546const.setTextSize(0, this.f10527protected);
    }

    public void setChannelEditBackground(@DrawableRes int i) {
        this.f10514final = i;
    }

    public void setChannelFixedBackground(@DrawableRes int i) {
        this.f10536throw = i;
        Iterator<TextView> it = this.f10519implements.iterator();
        while (it.hasNext()) {
            it.next().setBackgroundResource(i);
        }
    }

    public void setChannelFixedCount(int i) {
        if (i < 0) {
            throw new RuntimeException("固定频道数量必须大于0");
        }
        this.f10516for = i;
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10566this.size() <= 0 || this.f10524new.f10566this.get(0) == null) {
            return;
        }
        if (i > ((ArrayList) this.f10524new.f10566this.get(0)).size()) {
            throw new RuntimeException("固定频道数量不能大于已选频道数量");
        }
        for (int i2 = 0; i2 < i; i2++) {
            View view = (View) ((ArrayList) this.f10524new.f10566this.get(0)).get(i2);
            view.setBackgroundResource(this.f10536throw);
            ((TextView) view).setTextColor(this.f10520import);
        }
    }

    public void setChannelFixedTextColor(@ColorInt int i) {
        this.f10520import = i;
        Iterator<TextView> it = this.f10519implements.iterator();
        while (it.hasNext()) {
            it.next().setTextColor(i);
        }
    }

    public void setChannelFocusedBackground(@DrawableRes int i) {
        this.f10532super = i;
    }

    public void setChannelFocusedTextColor(@ColorInt int i) {
        this.f10523native = i;
    }

    public void setChannelNormalBackground(@DrawableRes int i) {
        this.f10508const = i;
        Iterator<TextView> it = this.f10521instanceof.iterator();
        while (it.hasNext()) {
            it.next().setBackgroundResource(i);
        }
    }

    public void setChannelNormalTextColor(@ColorInt int i) {
        this.f10541while = i;
        Iterator<TextView> it = this.f10521instanceof.iterator();
        while (it.hasNext()) {
            it.next().setTextColor(i);
        }
    }

    public void setChannelTextSizeRes(@DimenRes int i) {
        this.f10538transient = getResources().getDimensionPixelSize(i);
        Iterator<TextView> it = this.f10521instanceof.iterator();
        while (it.hasNext()) {
            it.next().setTextSize(0, this.f10538transient);
        }
        Iterator<TextView> it2 = this.f10519implements.iterator();
        while (it2.hasNext()) {
            it2.next().setTextSize(0, this.f10538transient);
        }
    }

    public void setOnChannelItemClickListener(OnChannelListener onChannelListener) {
        this.g = onChannelListener;
    }

    public void setOtherSubTitleBackground(@DrawableRes int i) {
        this.f10513extends = i;
        Iterator<TextView> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().setBackgroundResource(i);
        }
    }

    public void setOtherSubTitleName(String str) {
        this.f = str;
        Iterator<TextView> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().setText(str);
        }
    }

    public void setOtherSubTitleTextColor(@ColorInt int i) {
        this.f10515finally = i;
        Iterator<TextView> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().setTextColor(i);
        }
    }

    public void setOtherSubTitleTextSizeRes(@DimenRes int i) {
        this.f10525package = getResources().getDimensionPixelSize(i);
        Iterator<TextView> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().setTextSize(0, this.f10525package);
        }
    }

    public void setPlatesTitleBackground(@DrawableRes int i) {
        this.f10530static = i;
        Iterator<TextView> it = this.f10534synchronized.iterator();
        while (it.hasNext()) {
            it.next().setBackgroundResource(i);
        }
    }

    public void setPlatesTitleBold(boolean z) {
        this.f10531strictfp = z;
        if (z) {
            Iterator<TextView> it = this.f10534synchronized.iterator();
            while (it.hasNext()) {
                it.next().setTypeface(Typeface.DEFAULT_BOLD);
            }
        }
    }

    public void setPlatesTitleColor(@ColorInt int i) {
        this.f10510default = i;
        Iterator<TextView> it = this.f10534synchronized.iterator();
        while (it.hasNext()) {
            it.next().setTextColor(i);
        }
    }

    public void setPlatesTitleSizeRes(@DimenRes int i) {
        this.f10540volatile = getResources().getDimensionPixelSize(i);
        Iterator<TextView> it = this.f10534synchronized.iterator();
        while (it.hasNext()) {
            it.next().setTextSize(0, this.f10540volatile);
        }
    }

    public void setSubTitleBackground(@DrawableRes int i) {
        this.f10526private = i;
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10551final == null) {
            return;
        }
        this.f10524new.f10551final.setBackgroundResource(i);
    }

    public void setSubTitleName(String str) {
        this.e = str;
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10551final == null) {
            return;
        }
        this.f10524new.f10551final.setText(str);
    }

    public void setSubTitleTextColor(@ColorInt int i) {
        this.f10503abstract = i;
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10551final == null) {
            return;
        }
        this.f10524new.f10551final.setTextColor(i);
    }

    public void setSubTitleTextSizeRes(@DimenRes int i) {
        this.f10509continue = getResources().getDimensionPixelSize(i);
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10551final == null) {
            return;
        }
        this.f10524new.f10551final.setTextSize(0, this.f10509continue);
    }

    public void setTipEditBackground(@DrawableRes int i) {
        this.f10528public = i;
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10545class == null) {
            return;
        }
        this.f10524new.f10545class.setBackgroundResource(i);
    }

    public void setTipEditTextColor(@ColorInt int i) {
        this.f10533switch = i;
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10545class == null) {
            return;
        }
        this.f10524new.f10545class.setTextColor(i);
    }

    public void setTipEditTextSizeRes(@DimenRes int i) {
        this.f10522interface = getResources().getDimensionPixelSize(i);
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10545class == null) {
            return;
        }
        this.f10524new.f10545class.setTextSize(0, this.f10522interface);
    }

    public void setTipFinishBackground(@DrawableRes int i) {
        this.f10529return = i;
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10546const == null) {
            return;
        }
        this.f10524new.f10546const.setBackgroundResource(i);
    }

    public void setTipFinishTextColor(@ColorInt int i) {
        this.f10537throws = i;
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10546const == null) {
            return;
        }
        this.f10524new.f10546const.setTextColor(i);
    }

    public void setTipFinishTextSizeRes(@DimenRes int i) {
        this.f10527protected = getResources().getDimensionPixelSize(i);
        Cdo cdo = this.f10524new;
        if (cdo == null || cdo.f10546const == null) {
            return;
        }
        this.f10524new.f10546const.setTextSize(0, this.f10527protected);
    }

    public ChannelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChannelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10518if = new LinkedHashMap();
        this.f10516for = 0;
        this.f10539try = 4;
        this.f10519implements = new ArrayList();
        this.f10521instanceof = new ArrayList();
        this.f10534synchronized = new ArrayList();
        this.a = new ArrayList();
        this.c = 5;
        this.e = "";
        this.f = "";
        this.f10511do = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ChannelView);
        this.f10512else = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_channelHeight, getResources().getDimensionPixelSize(R.dimen.channelHeight));
        this.f10539try = typedArrayObtainStyledAttributes.getInteger(R.styleable.ChannelView_channelColumn, this.f10539try);
        this.f10517goto = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_channelPadding, getResources().getDimensionPixelSize(R.dimen.channelPadding));
        this.f10506catch = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_channelHorizontalSpacing, getResources().getDimensionPixelSize(R.dimen.channelHorizontalSpacing));
        this.f10507class = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_channelVerticalSpacing, getResources().getDimensionPixelSize(R.dimen.channelVerticalSpacing));
        int i2 = R.styleable.ChannelView_channelNormalBackground;
        int i3 = R.drawable.bg_channel_normal;
        this.f10508const = typedArrayObtainStyledAttributes.getResourceId(i2, i3);
        this.f10514final = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChannelView_channelEditBackground, R.drawable.bg_channel_edit);
        this.f10532super = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChannelView_channelFocusedBackground, R.drawable.bg_channel_focused);
        this.f10536throw = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChannelView_channelFixedBackground, i3);
        int i4 = R.styleable.ChannelView_channelNormalTextColor;
        Resources resources = getResources();
        int i5 = R.color.channelNormalTextColor;
        this.f10541while = typedArrayObtainStyledAttributes.getColor(i4, resources.getColor(i5));
        this.f10520import = typedArrayObtainStyledAttributes.getColor(R.styleable.ChannelView_channelFixedTextColor, getResources().getColor(R.color.channelFixedTextColor));
        this.f10523native = typedArrayObtainStyledAttributes.getColor(R.styleable.ChannelView_channelFocusedTextColor, getResources().getColor(i5));
        this.f10516for = typedArrayObtainStyledAttributes.getInteger(R.styleable.ChannelView_channelFixedCount, this.f10516for);
        int i6 = R.styleable.ChannelView_channelTextSize;
        Resources resources2 = getResources();
        int i7 = R.dimen.channelTextSize;
        this.f10538transient = typedArrayObtainStyledAttributes.getDimensionPixelSize(i6, resources2.getDimensionPixelSize(i7));
        int i8 = R.styleable.ChannelView_tipEditBackground;
        int i9 = R.drawable.bg_channel_transparent;
        this.f10528public = typedArrayObtainStyledAttributes.getResourceId(i8, i9);
        this.f10530static = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChannelView_platesTitleBackground, i9);
        this.f10533switch = typedArrayObtainStyledAttributes.getColor(R.styleable.ChannelView_tipEditTextColor, getResources().getColor(i5));
        this.f10510default = typedArrayObtainStyledAttributes.getColor(R.styleable.ChannelView_platesTitleColor, getResources().getColor(i5));
        this.f10531strictfp = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ChannelView_platesTitleBold, false);
        this.f10540volatile = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_platesTitleSize, getResources().getDimensionPixelSize(i7));
        this.f10522interface = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_tipEditTextSize, getResources().getDimensionPixelSize(i7));
        this.f10535this = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_platesTitleHeight, getResources().getDimensionPixelSize(R.dimen.platesTitleHeight));
        this.f10504break = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_platesTitleLeftRightPadding, getResources().getDimensionPixelSize(R.dimen.platesTitleLeftRightPadding));
        this.f10513extends = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChannelView_otherSubTitleBackground, i9);
        int i10 = R.styleable.ChannelView_otherSubTitleTextColor;
        Resources resources3 = getResources();
        int i11 = R.color.subTitleTextColor;
        this.f10515finally = typedArrayObtainStyledAttributes.getColor(i10, resources3.getColor(i11));
        int i12 = R.styleable.ChannelView_otherSubTitleTextSize;
        Resources resources4 = getResources();
        int i13 = R.dimen.subTitleTextSize;
        this.f10525package = typedArrayObtainStyledAttributes.getDimensionPixelSize(i12, resources4.getDimensionPixelSize(i13));
        this.f10526private = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChannelView_subTitleBackground, i9);
        this.f10503abstract = typedArrayObtainStyledAttributes.getColor(R.styleable.ChannelView_subTitleTextColor, getResources().getColor(i11));
        this.f10509continue = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_subTitleTextSize, getResources().getDimensionPixelSize(i13));
        this.e = typedArrayObtainStyledAttributes.getString(R.styleable.ChannelView_subTitleName);
        this.f = typedArrayObtainStyledAttributes.getString(R.styleable.ChannelView_otherSubTitleName);
        this.f10529return = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChannelView_tipFinishBackground, i9);
        this.f10537throws = typedArrayObtainStyledAttributes.getColor(R.styleable.ChannelView_tipFinishTextColor, getResources().getColor(i5));
        this.f10527protected = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ChannelView_tipFinishTextSize, getResources().getDimensionPixelSize(i7));
        typedArrayObtainStyledAttributes.recycle();
        if (this.e == null) {
            this.e = "";
        }
        if (this.f == null) {
            this.f = "";
        }
        if (this.f10539try < 1) {
            this.f10539try = 1;
        }
        if (this.f10516for < 0) {
            this.f10516for = 0;
        }
        float f = context.getResources().getDisplayMetrics().density;
        this.b = f;
        this.d = (f * 5.0f) + 0.5f;
    }
}
