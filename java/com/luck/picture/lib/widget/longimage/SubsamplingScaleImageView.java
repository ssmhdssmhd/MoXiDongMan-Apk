package com.luck.picture.lib.widget.longimage;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.v4.on0;
import android.support.v4.vl0;
import android.support.v4.yl0;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import com.luck.picture.lib.R;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class SubsamplingScaleImageView extends View {
    public static final int E = -1;
    public static final int F = 0;
    public static final int G = 90;
    public static final int H = 180;
    public static final int I = 270;
    public static final int K = 1;
    public static final int L = 2;
    public static final int M = 3;
    public static final int O = 1;
    public static final int P = 2;
    public static final int R = 1;
    public static final int S = 2;
    public static final int T = 3;
    public static final int V = 1;
    public static final int W = 2;
    public static final int a0 = 3;
    public static final int c0 = 1;
    public static final int d0 = 2;
    public static final int e0 = 3;
    public static final int f0 = 4;
    private static final int h0 = 1;
    private float[] A;
    private float[] B;
    private float C;
    private GestureDetector a;

    /* renamed from: abstract, reason: not valid java name */
    private PointF f18906abstract;
    private ImageRegionDecoder b;

    /* renamed from: break, reason: not valid java name */
    private float f18907break;
    private final Object c;

    /* renamed from: case, reason: not valid java name */
    private Map<Integer, List<Cbreak>> f18908case;

    /* renamed from: catch, reason: not valid java name */
    private int f18909catch;

    /* renamed from: class, reason: not valid java name */
    private int f18910class;

    /* renamed from: const, reason: not valid java name */
    private int f18911const;

    /* renamed from: continue, reason: not valid java name */
    private int f18912continue;
    private DecoderFactory<? extends ImageDecoder> d;

    /* renamed from: default, reason: not valid java name */
    private PointF f18913default;

    /* renamed from: do, reason: not valid java name */
    private Bitmap f18914do;
    private DecoderFactory<? extends ImageRegionDecoder> e;

    /* renamed from: else, reason: not valid java name */
    private boolean f18915else;

    /* renamed from: extends, reason: not valid java name */
    private PointF f18916extends;
    private PointF f;

    /* renamed from: final, reason: not valid java name */
    private int f18917final;

    /* renamed from: finally, reason: not valid java name */
    private PointF f18918finally;

    /* renamed from: for, reason: not valid java name */
    private boolean f18919for;
    private float g;

    /* renamed from: goto, reason: not valid java name */
    private int f18920goto;
    private final float h;
    private float i;

    /* renamed from: if, reason: not valid java name */
    private boolean f18921if;

    /* renamed from: implements, reason: not valid java name */
    private boolean f18922implements;

    /* renamed from: import, reason: not valid java name */
    private boolean f18923import;

    /* renamed from: instanceof, reason: not valid java name */
    private boolean f18924instanceof;

    /* renamed from: interface, reason: not valid java name */
    private Rect f18925interface;
    private boolean j;
    private PointF k;
    private PointF l;
    private PointF m;
    private Cfor n;

    /* renamed from: native, reason: not valid java name */
    private boolean f18926native;

    /* renamed from: new, reason: not valid java name */
    private Uri f18927new;
    private boolean o;
    private boolean p;

    /* renamed from: package, reason: not valid java name */
    private Float f18928package;

    /* renamed from: private, reason: not valid java name */
    private PointF f18929private;

    /* renamed from: protected, reason: not valid java name */
    private Rect f18930protected;

    /* renamed from: public, reason: not valid java name */
    private float f18931public;
    private OnImageEventListener q;
    private OnStateChangedListener r;

    /* renamed from: return, reason: not valid java name */
    private int f18932return;
    private View.OnLongClickListener s;

    /* renamed from: static, reason: not valid java name */
    private int f18933static;

    /* renamed from: strictfp, reason: not valid java name */
    private int f18934strictfp;

    /* renamed from: super, reason: not valid java name */
    private int f18935super;

    /* renamed from: switch, reason: not valid java name */
    private float f18936switch;

    /* renamed from: synchronized, reason: not valid java name */
    private int f18937synchronized;
    private Handler t;

    /* renamed from: this, reason: not valid java name */
    private float f18938this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f18939throw;

    /* renamed from: throws, reason: not valid java name */
    private float f18940throws;

    /* renamed from: transient, reason: not valid java name */
    private boolean f18941transient;

    /* renamed from: try, reason: not valid java name */
    private int f18942try;
    private Paint u;
    private Paint v;

    /* renamed from: volatile, reason: not valid java name */
    private int f18943volatile;
    private Paint w;

    /* renamed from: while, reason: not valid java name */
    private boolean f18944while;
    private Cthis x;
    private Matrix y;
    private RectF z;
    private static final String D = SubsamplingScaleImageView.class.getSimpleName();

    /* renamed from: J, reason: collision with root package name */
    private static final List<Integer> f36258J = Arrays.asList(0, 90, 180, 270, -1);
    private static final List<Integer> N = Arrays.asList(1, 2, 3);
    private static final List<Integer> Q = Arrays.asList(2, 1);
    private static final List<Integer> U = Arrays.asList(1, 2, 3);
    private static final List<Integer> b0 = Arrays.asList(2, 1, 3);
    public static int g0 = Integer.MAX_VALUE;

    public interface OnAnimationEventListener {
        void onComplete();

        void onInterruptedByNewAnim();

        void onInterruptedByUser();
    }

    public interface OnImageEventListener {
        void onImageLoadError(Exception exc);

        void onImageLoaded();

        void onPreviewLoadError(Exception exc);

        void onPreviewReleased();

        void onReady();

        void onTileLoadError(Exception exc);
    }

    public interface OnStateChangedListener {
        void onCenterChanged(PointF pointF, int i);

        void onScaleChanged(float f, int i);
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$break, reason: invalid class name */
    public static class Cbreak {

        /* renamed from: case, reason: not valid java name */
        private Rect f18945case;

        /* renamed from: do, reason: not valid java name */
        private Rect f18946do;

        /* renamed from: else, reason: not valid java name */
        private Rect f18947else;

        /* renamed from: for, reason: not valid java name */
        private Bitmap f18948for;

        /* renamed from: if, reason: not valid java name */
        private int f18949if;

        /* renamed from: new, reason: not valid java name */
        private boolean f18950new;

        /* renamed from: try, reason: not valid java name */
        private boolean f18951try;

        private Cbreak() {
        }

        public /* synthetic */ Cbreak(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$case, reason: invalid class name */
    public static class Ccase implements OnAnimationEventListener {
        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnAnimationEventListener
        public void onComplete() {
        }

        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnAnimationEventListener
        public void onInterruptedByNewAnim() {
        }

        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnAnimationEventListener
        public void onInterruptedByUser() {
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$catch, reason: invalid class name */
    public static class Ccatch extends AsyncTask<Void, Void, Bitmap> {

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<SubsamplingScaleImageView> f18952do;

        /* renamed from: for, reason: not valid java name */
        private final WeakReference<Cbreak> f18953for;

        /* renamed from: if, reason: not valid java name */
        private final WeakReference<ImageRegionDecoder> f18954if;

        /* renamed from: new, reason: not valid java name */
        private Exception f18955new;

        public Ccatch(SubsamplingScaleImageView subsamplingScaleImageView, ImageRegionDecoder imageRegionDecoder, Cbreak cbreak) {
            this.f18952do = new WeakReference<>(subsamplingScaleImageView);
            this.f18954if = new WeakReference<>(imageRegionDecoder);
            this.f18953for = new WeakReference<>(cbreak);
            cbreak.f18950new = true;
        }

        @Override // android.os.AsyncTask
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Bitmap doInBackground(Void... voidArr) {
            Bitmap bitmapDecodeRegion;
            try {
                SubsamplingScaleImageView subsamplingScaleImageView = this.f18952do.get();
                ImageRegionDecoder imageRegionDecoder = this.f18954if.get();
                Cbreak cbreak = this.f18953for.get();
                if (imageRegionDecoder == null || cbreak == null || subsamplingScaleImageView == null || !imageRegionDecoder.isReady() || !cbreak.f18951try) {
                    if (cbreak == null) {
                        return null;
                    }
                    cbreak.f18950new = false;
                    return null;
                }
                subsamplingScaleImageView.k("TileLoadTask.doInBackground, tile.sRect=%s, tile.sampleSize=%d", cbreak.f18946do, Integer.valueOf(cbreak.f18949if));
                synchronized (subsamplingScaleImageView.c) {
                    subsamplingScaleImageView.r(cbreak.f18946do, cbreak.f18947else);
                    if (subsamplingScaleImageView.f18925interface != null) {
                        cbreak.f18947else.offset(subsamplingScaleImageView.f18925interface.left, subsamplingScaleImageView.f18925interface.top);
                    }
                    bitmapDecodeRegion = imageRegionDecoder.decodeRegion(cbreak.f18947else, cbreak.f18949if);
                }
                return bitmapDecodeRegion;
            } catch (Exception e) {
                String unused = SubsamplingScaleImageView.D;
                this.f18955new = e;
                return null;
            } catch (OutOfMemoryError e2) {
                String unused2 = SubsamplingScaleImageView.D;
                this.f18955new = new RuntimeException(e2);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            SubsamplingScaleImageView subsamplingScaleImageView = this.f18952do.get();
            Cbreak cbreak = this.f18953for.get();
            if (subsamplingScaleImageView == null || cbreak == null) {
                return;
            }
            if (bitmap != null) {
                cbreak.f18948for = bitmap;
                cbreak.f18950new = false;
                subsamplingScaleImageView.M();
            } else {
                if (this.f18955new == null || subsamplingScaleImageView.q == null) {
                    return;
                }
                subsamplingScaleImageView.q.onTileLoadError(this.f18955new);
            }
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$class, reason: invalid class name */
    public static class Cclass extends AsyncTask<Void, Void, int[]> {

        /* renamed from: case, reason: not valid java name */
        private Exception f18956case;

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<SubsamplingScaleImageView> f18957do;

        /* renamed from: for, reason: not valid java name */
        private final WeakReference<DecoderFactory<? extends ImageRegionDecoder>> f18958for;

        /* renamed from: if, reason: not valid java name */
        private final WeakReference<Context> f18959if;

        /* renamed from: new, reason: not valid java name */
        private final Uri f18960new;

        /* renamed from: try, reason: not valid java name */
        private ImageRegionDecoder f18961try;

        public Cclass(SubsamplingScaleImageView subsamplingScaleImageView, Context context, DecoderFactory<? extends ImageRegionDecoder> decoderFactory, Uri uri) {
            this.f18957do = new WeakReference<>(subsamplingScaleImageView);
            this.f18959if = new WeakReference<>(context);
            this.f18958for = new WeakReference<>(decoderFactory);
            this.f18960new = uri;
        }

        @Override // android.os.AsyncTask
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int[] doInBackground(Void... voidArr) {
            try {
                String string = this.f18960new.toString();
                Context context = this.f18959if.get();
                DecoderFactory<? extends ImageRegionDecoder> decoderFactory = this.f18958for.get();
                SubsamplingScaleImageView subsamplingScaleImageView = this.f18957do.get();
                if (context == null || decoderFactory == null || subsamplingScaleImageView == null) {
                    return null;
                }
                subsamplingScaleImageView.k("TilesInitTask.doInBackground", new Object[0]);
                ImageRegionDecoder imageRegionDecoderMake = decoderFactory.make();
                this.f18961try = imageRegionDecoderMake;
                Point pointInit = imageRegionDecoderMake.init(context, this.f18960new);
                int iWidth = pointInit.x;
                int iHeight = pointInit.y;
                int iU = subsamplingScaleImageView.u(context, string);
                if (subsamplingScaleImageView.f18925interface != null) {
                    iWidth = subsamplingScaleImageView.f18925interface.width();
                    iHeight = subsamplingScaleImageView.f18925interface.height();
                }
                return new int[]{iWidth, iHeight, iU};
            } catch (Exception e) {
                String unused = SubsamplingScaleImageView.D;
                this.f18956case = e;
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onPostExecute(int[] iArr) {
            SubsamplingScaleImageView subsamplingScaleImageView = this.f18957do.get();
            if (subsamplingScaleImageView != null) {
                ImageRegionDecoder imageRegionDecoder = this.f18961try;
                if (imageRegionDecoder != null && iArr != null && iArr.length == 3) {
                    subsamplingScaleImageView.N(imageRegionDecoder, iArr[0], iArr[1], iArr[2]);
                } else {
                    if (this.f18956case == null || subsamplingScaleImageView.q == null) {
                        return;
                    }
                    subsamplingScaleImageView.q.onImageLoadError(this.f18956case);
                }
            }
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$do, reason: invalid class name */
    public class Cdo implements Handler.Callback {
        public Cdo() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1 && SubsamplingScaleImageView.this.s != null) {
                SubsamplingScaleImageView.this.f18937synchronized = 0;
                SubsamplingScaleImageView subsamplingScaleImageView = SubsamplingScaleImageView.this;
                SubsamplingScaleImageView.super.setOnLongClickListener(subsamplingScaleImageView.s);
                SubsamplingScaleImageView.this.performLongClick();
                SubsamplingScaleImageView.super.setOnLongClickListener(null);
            }
            return true;
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$else, reason: invalid class name */
    public static class Celse implements OnImageEventListener {
        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnImageEventListener
        public void onImageLoadError(Exception exc) {
        }

        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnImageEventListener
        public void onImageLoaded() {
        }

        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnImageEventListener
        public void onPreviewLoadError(Exception exc) {
        }

        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnImageEventListener
        public void onPreviewReleased() {
        }

        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnImageEventListener
        public void onReady() {
        }

        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnImageEventListener
        public void onTileLoadError(Exception exc) {
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$goto, reason: invalid class name */
    public static class Cgoto implements OnStateChangedListener {
        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnStateChangedListener
        public void onCenterChanged(PointF pointF, int i) {
        }

        @Override // com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView.OnStateChangedListener
        public void onScaleChanged(float f, int i) {
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$if, reason: invalid class name */
    public class Cif extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f18976do;

        public Cif(Context context) {
            this.f18976do = context;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (!SubsamplingScaleImageView.this.f18923import || !SubsamplingScaleImageView.this.o || SubsamplingScaleImageView.this.f18913default == null) {
                return super.onDoubleTapEvent(motionEvent);
            }
            SubsamplingScaleImageView.this.setGestureDetector(this.f18976do);
            if (!SubsamplingScaleImageView.this.f18926native) {
                SubsamplingScaleImageView subsamplingScaleImageView = SubsamplingScaleImageView.this;
                subsamplingScaleImageView.m(subsamplingScaleImageView.q0(new PointF(motionEvent.getX(), motionEvent.getY())), new PointF(motionEvent.getX(), motionEvent.getY()));
                return true;
            }
            SubsamplingScaleImageView.this.f = new PointF(motionEvent.getX(), motionEvent.getY());
            SubsamplingScaleImageView.this.f18916extends = new PointF(SubsamplingScaleImageView.this.f18913default.x, SubsamplingScaleImageView.this.f18913default.y);
            SubsamplingScaleImageView subsamplingScaleImageView2 = SubsamplingScaleImageView.this;
            subsamplingScaleImageView2.f18940throws = subsamplingScaleImageView2.f18936switch;
            SubsamplingScaleImageView.this.f18924instanceof = true;
            SubsamplingScaleImageView.this.f18941transient = true;
            SubsamplingScaleImageView.this.i = -1.0f;
            SubsamplingScaleImageView subsamplingScaleImageView3 = SubsamplingScaleImageView.this;
            subsamplingScaleImageView3.l = subsamplingScaleImageView3.q0(subsamplingScaleImageView3.f);
            SubsamplingScaleImageView.this.m = new PointF(motionEvent.getX(), motionEvent.getY());
            SubsamplingScaleImageView.this.k = new PointF(SubsamplingScaleImageView.this.l.x, SubsamplingScaleImageView.this.l.y);
            SubsamplingScaleImageView.this.j = false;
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!SubsamplingScaleImageView.this.f18944while || !SubsamplingScaleImageView.this.o || SubsamplingScaleImageView.this.f18913default == null || motionEvent == null || motionEvent2 == null || ((Math.abs(motionEvent.getX() - motionEvent2.getX()) <= 50.0f && Math.abs(motionEvent.getY() - motionEvent2.getY()) <= 50.0f) || ((Math.abs(f) <= 500.0f && Math.abs(f2) <= 500.0f) || SubsamplingScaleImageView.this.f18941transient))) {
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }
            PointF pointF = new PointF(SubsamplingScaleImageView.this.f18913default.x + (f * 0.25f), SubsamplingScaleImageView.this.f18913default.y + (f2 * 0.25f));
            new Cnew(SubsamplingScaleImageView.this, new PointF(((SubsamplingScaleImageView.this.getWidth() / 2) - pointF.x) / SubsamplingScaleImageView.this.f18936switch, ((SubsamplingScaleImageView.this.getHeight() / 2) - pointF.y) / SubsamplingScaleImageView.this.f18936switch), (Cdo) null).m23428try(1).m23423this(false).m23421goto(3).m23426for();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            SubsamplingScaleImageView.this.performClick();
            return true;
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$new, reason: invalid class name */
    public final class Cnew {

        /* renamed from: case, reason: not valid java name */
        private int f18979case;

        /* renamed from: do, reason: not valid java name */
        private final float f18980do;

        /* renamed from: else, reason: not valid java name */
        private boolean f18981else;

        /* renamed from: for, reason: not valid java name */
        private final PointF f18982for;

        /* renamed from: goto, reason: not valid java name */
        private boolean f18983goto;

        /* renamed from: if, reason: not valid java name */
        private final PointF f18984if;

        /* renamed from: new, reason: not valid java name */
        private long f18985new;

        /* renamed from: this, reason: not valid java name */
        private OnAnimationEventListener f18986this;

        /* renamed from: try, reason: not valid java name */
        private int f18987try;

        public /* synthetic */ Cnew(SubsamplingScaleImageView subsamplingScaleImageView, float f, PointF pointF, PointF pointF2, Cdo cdo) {
            this(f, pointF, pointF2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public Cnew m23421goto(int i) {
            this.f18979case = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public Cnew m23423this(boolean z) {
            this.f18983goto = z;
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public Cnew m23424case(boolean z) {
            this.f18981else = z;
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public Cnew m23425else(OnAnimationEventListener onAnimationEventListener) {
            this.f18986this = onAnimationEventListener;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public void m23426for() {
            PointF pointFF;
            if (SubsamplingScaleImageView.this.n != null && SubsamplingScaleImageView.this.n.f18967const != null) {
                try {
                    SubsamplingScaleImageView.this.n.f18967const.onInterruptedByNewAnim();
                } catch (Exception unused) {
                    String unused2 = SubsamplingScaleImageView.D;
                }
            }
            int paddingLeft = SubsamplingScaleImageView.this.getPaddingLeft() + (((SubsamplingScaleImageView.this.getWidth() - SubsamplingScaleImageView.this.getPaddingRight()) - SubsamplingScaleImageView.this.getPaddingLeft()) / 2);
            int paddingTop = SubsamplingScaleImageView.this.getPaddingTop() + (((SubsamplingScaleImageView.this.getHeight() - SubsamplingScaleImageView.this.getPaddingBottom()) - SubsamplingScaleImageView.this.getPaddingTop()) / 2);
            float fG = SubsamplingScaleImageView.this.G(this.f18980do);
            if (this.f18983goto) {
                SubsamplingScaleImageView subsamplingScaleImageView = SubsamplingScaleImageView.this;
                PointF pointF = this.f18984if;
                pointFF = subsamplingScaleImageView.F(pointF.x, pointF.y, fG, new PointF());
            } else {
                pointFF = this.f18984if;
            }
            Cdo cdo = null;
            SubsamplingScaleImageView.this.n = new Cfor(cdo);
            SubsamplingScaleImageView.this.n.f18968do = SubsamplingScaleImageView.this.f18936switch;
            SubsamplingScaleImageView.this.n.f18972if = fG;
            SubsamplingScaleImageView.this.n.f18966class = System.currentTimeMillis();
            SubsamplingScaleImageView.this.n.f18975try = pointFF;
            SubsamplingScaleImageView.this.n.f18970for = SubsamplingScaleImageView.this.getCenter();
            SubsamplingScaleImageView.this.n.f18973new = pointFF;
            SubsamplingScaleImageView.this.n.f18964case = SubsamplingScaleImageView.this.h0(pointFF);
            SubsamplingScaleImageView.this.n.f18969else = new PointF(paddingLeft, paddingTop);
            SubsamplingScaleImageView.this.n.f18971goto = this.f18985new;
            SubsamplingScaleImageView.this.n.f18974this = this.f18981else;
            SubsamplingScaleImageView.this.n.f18963break = this.f18987try;
            SubsamplingScaleImageView.this.n.f18965catch = this.f18979case;
            SubsamplingScaleImageView.this.n.f18966class = System.currentTimeMillis();
            SubsamplingScaleImageView.this.n.f18967const = this.f18986this;
            PointF pointF2 = this.f18982for;
            if (pointF2 != null) {
                float f = pointF2.x - (SubsamplingScaleImageView.this.n.f18970for.x * fG);
                float f2 = this.f18982for.y - (SubsamplingScaleImageView.this.n.f18970for.y * fG);
                Cthis cthis = new Cthis(fG, new PointF(f, f2), cdo);
                SubsamplingScaleImageView.this.t(true, cthis);
                SubsamplingScaleImageView.this.n.f18969else = new PointF(this.f18982for.x + (cthis.f18989if.x - f), this.f18982for.y + (cthis.f18989if.y - f2));
            }
            SubsamplingScaleImageView.this.invalidate();
        }

        /* renamed from: new, reason: not valid java name */
        public Cnew m23427new(long j) {
            this.f18985new = j;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cnew m23428try(int i) {
            if (SubsamplingScaleImageView.Q.contains(Integer.valueOf(i))) {
                this.f18987try = i;
                return this;
            }
            throw new IllegalArgumentException("Unknown easing type: " + i);
        }

        public /* synthetic */ Cnew(SubsamplingScaleImageView subsamplingScaleImageView, float f, PointF pointF, Cdo cdo) {
            this(f, pointF);
        }

        public /* synthetic */ Cnew(SubsamplingScaleImageView subsamplingScaleImageView, float f, Cdo cdo) {
            this(f);
        }

        public /* synthetic */ Cnew(SubsamplingScaleImageView subsamplingScaleImageView, PointF pointF, Cdo cdo) {
            this(pointF);
        }

        private Cnew(PointF pointF) {
            this.f18985new = 500L;
            this.f18987try = 2;
            this.f18979case = 1;
            this.f18981else = true;
            this.f18983goto = true;
            this.f18980do = SubsamplingScaleImageView.this.f18936switch;
            this.f18984if = pointF;
            this.f18982for = null;
        }

        private Cnew(float f) {
            this.f18985new = 500L;
            this.f18987try = 2;
            this.f18979case = 1;
            this.f18981else = true;
            this.f18983goto = true;
            this.f18980do = f;
            this.f18984if = SubsamplingScaleImageView.this.getCenter();
            this.f18982for = null;
        }

        private Cnew(float f, PointF pointF) {
            this.f18985new = 500L;
            this.f18987try = 2;
            this.f18979case = 1;
            this.f18981else = true;
            this.f18983goto = true;
            this.f18980do = f;
            this.f18984if = pointF;
            this.f18982for = null;
        }

        private Cnew(float f, PointF pointF, PointF pointF2) {
            this.f18985new = 500L;
            this.f18987try = 2;
            this.f18979case = 1;
            this.f18981else = true;
            this.f18983goto = true;
            this.f18980do = f;
            this.f18984if = pointF;
            this.f18982for = pointF2;
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$this, reason: invalid class name */
    public static class Cthis {

        /* renamed from: do, reason: not valid java name */
        private float f18988do;

        /* renamed from: if, reason: not valid java name */
        private PointF f18989if;

        public /* synthetic */ Cthis(float f, PointF pointF, Cdo cdo) {
            this(f, pointF);
        }

        private Cthis(float f, PointF pointF) {
            this.f18988do = f;
            this.f18989if = pointF;
        }
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$try, reason: invalid class name */
    public static class Ctry extends AsyncTask<Void, Void, Integer> {

        /* renamed from: case, reason: not valid java name */
        private Bitmap f18990case;

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<SubsamplingScaleImageView> f18991do;

        /* renamed from: else, reason: not valid java name */
        private Exception f18992else;

        /* renamed from: for, reason: not valid java name */
        private final WeakReference<DecoderFactory<? extends ImageDecoder>> f18993for;

        /* renamed from: if, reason: not valid java name */
        private final WeakReference<Context> f18994if;

        /* renamed from: new, reason: not valid java name */
        private final Uri f18995new;

        /* renamed from: try, reason: not valid java name */
        private final boolean f18996try;

        public Ctry(SubsamplingScaleImageView subsamplingScaleImageView, Context context, DecoderFactory<? extends ImageDecoder> decoderFactory, Uri uri, boolean z) {
            this.f18991do = new WeakReference<>(subsamplingScaleImageView);
            this.f18994if = new WeakReference<>(context);
            this.f18993for = new WeakReference<>(decoderFactory);
            this.f18995new = uri;
            this.f18996try = z;
        }

        @Override // android.os.AsyncTask
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Integer doInBackground(Void... voidArr) {
            try {
                String string = this.f18995new.toString();
                Context context = this.f18994if.get();
                DecoderFactory<? extends ImageDecoder> decoderFactory = this.f18993for.get();
                SubsamplingScaleImageView subsamplingScaleImageView = this.f18991do.get();
                if (context == null || decoderFactory == null || subsamplingScaleImageView == null) {
                    return null;
                }
                subsamplingScaleImageView.k("BitmapLoadTask.doInBackground", new Object[0]);
                this.f18990case = decoderFactory.make().decode(context, this.f18995new);
                return Integer.valueOf(subsamplingScaleImageView.u(context, string));
            } catch (Exception e) {
                String unused = SubsamplingScaleImageView.D;
                this.f18992else = e;
                return null;
            } catch (OutOfMemoryError e2) {
                String unused2 = SubsamplingScaleImageView.D;
                this.f18992else = new RuntimeException(e2);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onPostExecute(Integer num) {
            SubsamplingScaleImageView subsamplingScaleImageView = this.f18991do.get();
            if (subsamplingScaleImageView != null) {
                Bitmap bitmap = this.f18990case;
                if (bitmap != null && num != null) {
                    if (this.f18996try) {
                        subsamplingScaleImageView.K(bitmap);
                        return;
                    } else {
                        subsamplingScaleImageView.J(bitmap, num.intValue(), false);
                        return;
                    }
                }
                if (this.f18992else == null || subsamplingScaleImageView.q == null) {
                    return;
                }
                if (this.f18996try) {
                    subsamplingScaleImageView.q.onPreviewLoadError(this.f18992else);
                } else {
                    subsamplingScaleImageView.q.onImageLoadError(this.f18992else);
                }
            }
        }
    }

    public SubsamplingScaleImageView(Context context, AttributeSet attributeSet) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int resourceId;
        String string;
        super(context, attributeSet);
        this.f18920goto = 0;
        this.f18938this = 2.0f;
        this.f18907break = H();
        this.f18909catch = -1;
        this.f18910class = 1;
        this.f18911const = 1;
        int i = g0;
        this.f18917final = i;
        this.f18935super = i;
        this.f18944while = true;
        this.f18923import = true;
        this.f18926native = true;
        this.f18931public = 1.0f;
        this.f18932return = 1;
        this.f18933static = 500;
        this.c = new Object();
        this.d = new com.luck.picture.lib.widget.longimage.Cdo(com.luck.picture.lib.widget.longimage.Cif.class);
        this.e = new com.luck.picture.lib.widget.longimage.Cdo(com.luck.picture.lib.widget.longimage.Cfor.class);
        this.A = new float[8];
        this.B = new float[8];
        this.C = getResources().getDisplayMetrics().density;
        setMinimumDpi(160);
        setDoubleTapZoomDpi(160);
        setGestureDetector(context);
        this.t = new Handler(new Cdo());
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.SubsamplingScaleImageView);
            int i2 = R.styleable.SubsamplingScaleImageView_assetName;
            if (typedArrayObtainStyledAttributes.hasValue(i2) && (string = typedArrayObtainStyledAttributes.getString(i2)) != null && string.length() > 0) {
                setImage(vl0.m8899do(string).m8913import());
            }
            int i3 = R.styleable.SubsamplingScaleImageView_src;
            if (typedArrayObtainStyledAttributes.hasValue(i3) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i3, 0)) > 0) {
                setImage(vl0.m8900final(resourceId).m8913import());
            }
            int i4 = R.styleable.SubsamplingScaleImageView_panEnabled;
            if (typedArrayObtainStyledAttributes.hasValue(i4)) {
                setPanEnabled(typedArrayObtainStyledAttributes.getBoolean(i4, true));
            }
            int i5 = R.styleable.SubsamplingScaleImageView_zoomEnabled;
            if (typedArrayObtainStyledAttributes.hasValue(i5)) {
                setZoomEnabled(typedArrayObtainStyledAttributes.getBoolean(i5, true));
            }
            int i6 = R.styleable.SubsamplingScaleImageView_quickScaleEnabled;
            if (typedArrayObtainStyledAttributes.hasValue(i6)) {
                setQuickScaleEnabled(typedArrayObtainStyledAttributes.getBoolean(i6, true));
            }
            int i7 = R.styleable.SubsamplingScaleImageView_tileBackgroundColor;
            if (typedArrayObtainStyledAttributes.hasValue(i7)) {
                setTileBackgroundColor(typedArrayObtainStyledAttributes.getColor(i7, Color.argb(0, 0, 0, 0)));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.h = TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointF F(float f, float f2, float f3, PointF pointF) {
        PointF pointFN0 = n0(f, f2, f3);
        pointF.set(((getPaddingLeft() + (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2)) - pointFN0.x) / f3, ((getPaddingTop() + (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2)) - pointFN0.y) / f3);
        return pointF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float G(float f) {
        return Math.min(this.f18938this, Math.max(H(), f));
    }

    private float H() {
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int i = this.f18911const;
        if (i == 2) {
            return Math.max((getWidth() - paddingLeft) / X(), (getHeight() - paddingBottom) / W());
        }
        if (i == 3) {
            float f = this.f18907break;
            if (f > 0.0f) {
                return f;
            }
        }
        return Math.min((getWidth() - paddingLeft) / X(), (getHeight() - paddingBottom) / W());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void J(Bitmap bitmap, int i, boolean z) {
        OnImageEventListener onImageEventListener;
        k("onImageLoaded", new Object[0]);
        int i2 = this.f18912continue;
        if (i2 > 0 && this.f18934strictfp > 0 && (i2 != bitmap.getWidth() || this.f18934strictfp != bitmap.getHeight())) {
            T(false);
        }
        Bitmap bitmap2 = this.f18914do;
        if (bitmap2 != null && !this.f18919for) {
            bitmap2.recycle();
        }
        if (this.f18914do != null && this.f18919for && (onImageEventListener = this.q) != null) {
            onImageEventListener.onPreviewReleased();
        }
        this.f18921if = false;
        this.f18919for = z;
        this.f18914do = bitmap;
        this.f18912continue = bitmap.getWidth();
        this.f18934strictfp = bitmap.getHeight();
        this.f18943volatile = i;
        boolean zI = i();
        boolean zH = h();
        if (zI || zH) {
            invalidate();
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void K(Bitmap bitmap) {
        k("onPreviewLoaded", new Object[0]);
        if (this.f18914do == null && !this.p) {
            Rect rect = this.f18930protected;
            if (rect != null) {
                this.f18914do = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), this.f18930protected.height());
            } else {
                this.f18914do = bitmap;
            }
            this.f18921if = true;
            if (i()) {
                invalidate();
                requestLayout();
            }
            return;
        }
        bitmap.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void M() {
        Bitmap bitmap;
        k("onTileLoaded", new Object[0]);
        i();
        h();
        if (z() && (bitmap = this.f18914do) != null) {
            if (!this.f18919for) {
                bitmap.recycle();
            }
            this.f18914do = null;
            OnImageEventListener onImageEventListener = this.q;
            if (onImageEventListener != null && this.f18919for) {
                onImageEventListener.onPreviewReleased();
            }
            this.f18921if = false;
            this.f18919for = false;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void N(ImageRegionDecoder imageRegionDecoder, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        k("onTilesInited sWidth=%d, sHeight=%d, sOrientation=%d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(this.f18920goto));
        int i8 = this.f18912continue;
        if (i8 > 0 && (i7 = this.f18934strictfp) > 0 && (i8 != i || i7 != i2)) {
            T(false);
            Bitmap bitmap = this.f18914do;
            if (bitmap != null) {
                if (!this.f18919for) {
                    bitmap.recycle();
                }
                this.f18914do = null;
                OnImageEventListener onImageEventListener = this.q;
                if (onImageEventListener != null && this.f18919for) {
                    onImageEventListener.onPreviewReleased();
                }
                this.f18921if = false;
                this.f18919for = false;
            }
        }
        this.b = imageRegionDecoder;
        this.f18912continue = i;
        this.f18934strictfp = i2;
        this.f18943volatile = i3;
        i();
        if (!h() && (i4 = this.f18917final) > 0 && i4 != (i5 = g0) && (i6 = this.f18935super) > 0 && i6 != i5 && getWidth() > 0 && getHeight() > 0) {
            x(new Point(this.f18917final, this.f18935super));
        }
        invalidate();
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
    
        if (r1 != 262) goto L138;
     */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0280  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean O(@NonNull MotionEvent motionEvent) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z;
        boolean z2;
        int pointerCount = motionEvent.getPointerCount();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 5) {
                        if (action != 6) {
                            if (action != 261) {
                            }
                        }
                    }
                } else if (this.f18937synchronized <= 0) {
                    z2 = false;
                    if (z2) {
                        this.t.removeMessages(1);
                        invalidate();
                        return true;
                    }
                } else {
                    if (pointerCount >= 2) {
                        float fL = l(motionEvent.getX(0), motionEvent.getX(1), motionEvent.getY(0), motionEvent.getY(1));
                        float x = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
                        float y = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
                        if (this.f18923import) {
                            PointF pointF = this.f;
                            if (l(pointF.x, x, pointF.y, y) > 5.0f || Math.abs(fL - this.g) > 5.0f || this.f18922implements) {
                                this.f18941transient = true;
                                this.f18922implements = true;
                                double d = this.f18936switch;
                                float fMin = Math.min(this.f18938this, (fL / this.g) * this.f18940throws);
                                this.f18936switch = fMin;
                                if (fMin <= H()) {
                                    this.g = fL;
                                    this.f18940throws = H();
                                    this.f.set(x, y);
                                    this.f18916extends.set(this.f18913default);
                                } else if (this.f18944while) {
                                    PointF pointF2 = this.f;
                                    float f = pointF2.x;
                                    PointF pointF3 = this.f18916extends;
                                    float f2 = f - pointF3.x;
                                    float f3 = pointF2.y - pointF3.y;
                                    float f4 = this.f18936switch;
                                    float f5 = this.f18940throws;
                                    float f6 = f2 * (f4 / f5);
                                    float f7 = f3 * (f4 / f5);
                                    PointF pointF4 = this.f18913default;
                                    pointF4.x = x - f6;
                                    pointF4.y = y - f7;
                                    double dW = W();
                                    Double.isNaN(d);
                                    Double.isNaN(dW);
                                    if (dW * d >= getHeight() || this.f18936switch * W() < getHeight()) {
                                        double dX = X();
                                        Double.isNaN(d);
                                        Double.isNaN(dX);
                                        if (d * dX < getWidth() && this.f18936switch * X() >= getWidth()) {
                                            s(true);
                                            this.f.set(x, y);
                                            this.f18916extends.set(this.f18913default);
                                            this.f18940throws = this.f18936switch;
                                            this.g = fL;
                                        }
                                    }
                                } else if (this.f18906abstract != null) {
                                    this.f18913default.x = (getWidth() / 2) - (this.f18936switch * this.f18906abstract.x);
                                    this.f18913default.y = (getHeight() / 2) - (this.f18936switch * this.f18906abstract.y);
                                } else {
                                    this.f18913default.x = (getWidth() / 2) - (this.f18936switch * (X() / 2));
                                    this.f18913default.y = (getHeight() / 2) - (this.f18936switch * (W() / 2));
                                }
                                s(true);
                                R(false);
                                z2 = true;
                            }
                        }
                        z2 = false;
                    } else {
                        if (this.f18924instanceof) {
                            float fAbs = (Math.abs(this.m.y - motionEvent.getY()) * 2.0f) + this.h;
                            if (this.i == -1.0f) {
                                this.i = fAbs;
                            }
                            float y2 = motionEvent.getY();
                            PointF pointF5 = this.k;
                            boolean z3 = y2 > pointF5.y;
                            pointF5.set(0.0f, motionEvent.getY());
                            float fAbs2 = Math.abs(1.0f - (fAbs / this.i)) * 0.5f;
                            if (fAbs2 > 0.03f || this.j) {
                                this.j = true;
                                float f8 = this.i > 0.0f ? z3 ? fAbs2 + 1.0f : 1.0f - fAbs2 : 1.0f;
                                double d2 = this.f18936switch;
                                float fMax = Math.max(H(), Math.min(this.f18938this, this.f18936switch * f8));
                                this.f18936switch = fMax;
                                if (this.f18944while) {
                                    PointF pointF6 = this.f;
                                    float f9 = pointF6.x;
                                    PointF pointF7 = this.f18916extends;
                                    float f10 = f9 - pointF7.x;
                                    float f11 = pointF6.y;
                                    float f12 = f11 - pointF7.y;
                                    float f13 = this.f18940throws;
                                    float f14 = f10 * (fMax / f13);
                                    float f15 = f12 * (fMax / f13);
                                    PointF pointF8 = this.f18913default;
                                    pointF8.x = f9 - f14;
                                    pointF8.y = f11 - f15;
                                    double dW2 = W();
                                    Double.isNaN(d2);
                                    Double.isNaN(dW2);
                                    if (dW2 * d2 >= getHeight() || this.f18936switch * W() < getHeight()) {
                                        double dX2 = X();
                                        Double.isNaN(d2);
                                        Double.isNaN(dX2);
                                        if (d2 * dX2 < getWidth() && this.f18936switch * X() >= getWidth()) {
                                            s(true);
                                            this.f.set(h0(this.l));
                                            this.f18916extends.set(this.f18913default);
                                            this.f18940throws = this.f18936switch;
                                            fAbs = 0.0f;
                                        }
                                    }
                                } else if (this.f18906abstract != null) {
                                    this.f18913default.x = (getWidth() / 2) - (this.f18936switch * this.f18906abstract.x);
                                    this.f18913default.y = (getHeight() / 2) - (this.f18936switch * this.f18906abstract.y);
                                } else {
                                    this.f18913default.x = (getWidth() / 2) - (this.f18936switch * (X() / 2));
                                    this.f18913default.y = (getHeight() / 2) - (this.f18936switch * (W() / 2));
                                }
                            }
                            this.i = fAbs;
                            s(true);
                            R(false);
                        } else {
                            if (!this.f18941transient) {
                                float fAbs3 = Math.abs(motionEvent.getX() - this.f.x);
                                float fAbs4 = Math.abs(motionEvent.getY() - this.f.y);
                                float f16 = this.C * 5.0f;
                                if (fAbs3 > f16 || fAbs4 > f16 || this.f18922implements) {
                                    this.f18913default.x = this.f18916extends.x + (motionEvent.getX() - this.f.x);
                                    this.f18913default.y = this.f18916extends.y + (motionEvent.getY() - this.f.y);
                                    PointF pointF9 = this.f18913default;
                                    float f17 = pointF9.x;
                                    float f18 = pointF9.y;
                                    s(true);
                                    PointF pointF10 = this.f18913default;
                                    boolean z4 = f17 != pointF10.x;
                                    float f19 = pointF10.y;
                                    boolean z5 = f18 != f19;
                                    boolean z6 = z4 && fAbs3 > fAbs4 && !this.f18922implements;
                                    boolean z7 = z5 && fAbs4 > fAbs3 && !this.f18922implements;
                                    boolean z8 = f18 == f19 && fAbs4 > 3.0f * f16;
                                    if (!z6 && !z7 && (!z4 || !z5 || z8 || this.f18922implements)) {
                                        this.f18922implements = true;
                                    } else if (fAbs3 > f16 || fAbs4 > f16) {
                                        this.f18937synchronized = 0;
                                        this.t.removeMessages(1);
                                        S(false);
                                    }
                                    if (!this.f18944while) {
                                        PointF pointF11 = this.f18913default;
                                        PointF pointF12 = this.f18916extends;
                                        pointF11.x = pointF12.x;
                                        pointF11.y = pointF12.y;
                                        S(false);
                                    }
                                    R(false);
                                }
                            }
                            z2 = false;
                        }
                        z2 = true;
                    }
                    if (z2) {
                    }
                }
                return false;
            }
            this.t.removeMessages(1);
            if (this.f18924instanceof) {
                this.f18924instanceof = false;
                if (!this.j) {
                    m(this.l, this.f);
                }
            }
            if (this.f18937synchronized <= 0 || !((z = this.f18941transient) || this.f18922implements)) {
                if (pointerCount == 1) {
                    this.f18941transient = false;
                    this.f18922implements = false;
                    this.f18937synchronized = 0;
                }
                return true;
            }
            if (z && pointerCount == 2) {
                this.f18922implements = true;
                PointF pointF13 = this.f18916extends;
                PointF pointF14 = this.f18913default;
                pointF13.set(pointF14.x, pointF14.y);
                if (motionEvent.getActionIndex() == 1) {
                    this.f.set(motionEvent.getX(0), motionEvent.getY(0));
                } else {
                    this.f.set(motionEvent.getX(1), motionEvent.getY(1));
                }
            }
            if (pointerCount < 3) {
                this.f18941transient = false;
            }
            if (pointerCount < 2) {
                this.f18922implements = false;
                this.f18937synchronized = 0;
            }
            R(true);
            return true;
        }
        this.n = null;
        S(true);
        this.f18937synchronized = Math.max(this.f18937synchronized, pointerCount);
        if (pointerCount >= 2) {
            if (this.f18923import) {
                float fL2 = l(motionEvent.getX(0), motionEvent.getX(1), motionEvent.getY(0), motionEvent.getY(1));
                this.f18940throws = this.f18936switch;
                this.g = fL2;
                PointF pointF15 = this.f18916extends;
                PointF pointF16 = this.f18913default;
                pointF15.set(pointF16.x, pointF16.y);
                this.f.set((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f, (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f);
            } else {
                this.f18937synchronized = 0;
            }
            this.t.removeMessages(1);
        } else if (!this.f18924instanceof) {
            PointF pointF17 = this.f18916extends;
            PointF pointF18 = this.f18913default;
            pointF17.set(pointF18.x, pointF18.y);
            this.f.set(motionEvent.getX(), motionEvent.getY());
            this.t.sendEmptyMessageDelayed(1, 600L);
        }
        return true;
    }

    private void P() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Float f;
        if (getWidth() == 0 || getHeight() == 0 || this.f18912continue <= 0 || this.f18934strictfp <= 0) {
            return;
        }
        if (this.f18929private != null && (f = this.f18928package) != null) {
            this.f18936switch = f.floatValue();
            if (this.f18913default == null) {
                this.f18913default = new PointF();
            }
            this.f18913default.x = (getWidth() / 2) - (this.f18936switch * this.f18929private.x);
            this.f18913default.y = (getHeight() / 2) - (this.f18936switch * this.f18929private.y);
            this.f18929private = null;
            this.f18928package = null;
            s(true);
            R(true);
        }
        s(false);
    }

    private void R(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.b == null || this.f18908case == null) {
            return;
        }
        int iMin = Math.min(this.f18942try, g(this.f18936switch));
        Iterator<Map.Entry<Integer, List<Cbreak>>> it = this.f18908case.entrySet().iterator();
        while (it.hasNext()) {
            for (Cbreak cbreak : it.next().getValue()) {
                if (cbreak.f18949if < iMin || (cbreak.f18949if > iMin && cbreak.f18949if != this.f18942try)) {
                    cbreak.f18951try = false;
                    if (cbreak.f18948for != null) {
                        cbreak.f18948for.recycle();
                        cbreak.f18948for = null;
                    }
                }
                if (cbreak.f18949if == iMin) {
                    if (m0(cbreak)) {
                        cbreak.f18951try = true;
                        if (!cbreak.f18950new && cbreak.f18948for == null && z) {
                            q(new Ccatch(this, this.b, cbreak));
                        }
                    } else if (cbreak.f18949if != this.f18942try) {
                        cbreak.f18951try = false;
                        if (cbreak.f18948for != null) {
                            cbreak.f18948for.recycle();
                            cbreak.f18948for = null;
                        }
                    }
                } else if (cbreak.f18949if == this.f18942try) {
                    cbreak.f18951try = true;
                }
            }
        }
    }

    private void S(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private void T(boolean z) {
        OnImageEventListener onImageEventListener;
        k("reset newImage=" + z, new Object[0]);
        this.f18936switch = 0.0f;
        this.f18940throws = 0.0f;
        this.f18913default = null;
        this.f18916extends = null;
        this.f18918finally = null;
        this.f18928package = Float.valueOf(0.0f);
        this.f18929private = null;
        this.f18906abstract = null;
        this.f18941transient = false;
        this.f18922implements = false;
        this.f18924instanceof = false;
        this.f18937synchronized = 0;
        this.f18942try = 0;
        this.f = null;
        this.g = 0.0f;
        this.i = 0.0f;
        this.j = false;
        this.l = null;
        this.k = null;
        this.m = null;
        this.n = null;
        this.x = null;
        this.y = null;
        this.z = null;
        if (z) {
            this.f18927new = null;
            if (this.b != null) {
                synchronized (this.c) {
                    this.b.recycle();
                    this.b = null;
                }
            }
            Bitmap bitmap = this.f18914do;
            if (bitmap != null && !this.f18919for) {
                bitmap.recycle();
            }
            if (this.f18914do != null && this.f18919for && (onImageEventListener = this.q) != null) {
                onImageEventListener.onPreviewReleased();
            }
            this.f18912continue = 0;
            this.f18934strictfp = 0;
            this.f18943volatile = 0;
            this.f18925interface = null;
            this.f18930protected = null;
            this.o = false;
            this.p = false;
            this.f18914do = null;
            this.f18921if = false;
            this.f18919for = false;
        }
        Map<Integer, List<Cbreak>> map = this.f18908case;
        if (map != null) {
            Iterator<Map.Entry<Integer, List<Cbreak>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                for (Cbreak cbreak : it.next().getValue()) {
                    cbreak.f18951try = false;
                    if (cbreak.f18948for != null) {
                        cbreak.f18948for.recycle();
                        cbreak.f18948for = null;
                    }
                }
            }
            this.f18908case = null;
        }
        setGestureDetector(getContext());
    }

    private void V(yl0 yl0Var) {
        if (yl0Var == null || yl0Var.getCenter() == null || !f36258J.contains(Integer.valueOf(yl0Var.getOrientation()))) {
            return;
        }
        this.f18920goto = yl0Var.getOrientation();
        this.f18928package = Float.valueOf(yl0Var.getScale());
        this.f18929private = yl0Var.getCenter();
        invalidate();
    }

    private int W() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.f18912continue : this.f18934strictfp;
    }

    private int X() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.f18934strictfp : this.f18912continue;
    }

    private void Y(float f, PointF pointF, int i) {
        OnStateChangedListener onStateChangedListener = this.r;
        if (onStateChangedListener != null) {
            float f2 = this.f18936switch;
            if (f2 != f) {
                onStateChangedListener.onScaleChanged(f2, i);
            }
            if (this.f18913default.equals(pointF)) {
                return;
            }
            this.r.onCenterChanged(getCenter(), i);
        }
    }

    private void c0(float[] fArr, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        fArr[3] = f4;
        fArr[4] = f5;
        fArr[5] = f6;
        fArr[6] = f7;
        fArr[7] = f8;
    }

    private int g(float f) {
        int iRound;
        if (this.f18909catch > 0) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            f *= this.f18909catch / ((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f);
        }
        int iX = (int) (X() * f);
        int iW = (int) (W() * f);
        if (iX == 0 || iW == 0) {
            return 32;
        }
        int i = 1;
        if (W() > iW || X() > iX) {
            iRound = Math.round(W() / iW);
            int iRound2 = Math.round(X() / iX);
            if (iRound >= iRound2) {
                iRound = iRound2;
            }
        } else {
            iRound = 1;
        }
        while (true) {
            int i2 = i * 2;
            if (i2 >= iRound) {
                return i;
            }
            i = i2;
        }
    }

    @AnyThread
    private int getRequiredRotation() {
        int i = this.f18920goto;
        return i == -1 ? this.f18943volatile : i;
    }

    private boolean h() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z = z();
        if (!this.p && z) {
            P();
            this.p = true;
            I();
            OnImageEventListener onImageEventListener = this.q;
            if (onImageEventListener != null) {
                onImageEventListener.onImageLoaded();
            }
        }
        return z;
    }

    private boolean i() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z = getWidth() > 0 && getHeight() > 0 && this.f18912continue > 0 && this.f18934strictfp > 0 && (this.f18914do != null || z());
        if (!this.o && z) {
            P();
            this.o = true;
            L();
            OnImageEventListener onImageEventListener = this.q;
            if (onImageEventListener != null) {
                onImageEventListener.onReady();
            }
        }
        return z;
    }

    private void j() {
        if (this.u == null) {
            Paint paint = new Paint();
            this.u = paint;
            paint.setAntiAlias(true);
            this.u.setFilterBitmap(true);
            this.u.setDither(true);
        }
        if (this.v == null && this.f18915else) {
            Paint paint2 = new Paint();
            this.v = paint2;
            paint2.setTextSize(18.0f);
            this.v.setColor(-65281);
            this.v.setStyle(Paint.Style.STROKE);
        }
    }

    private Rect j0(Rect rect, Rect rect2) {
        rect2.set((int) k0(rect.left), (int) l0(rect.top), (int) k0(rect.right), (int) l0(rect.bottom));
        return rect2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @AnyThread
    public void k(String str, Object... objArr) {
        if (this.f18915else) {
            String.format(str, objArr);
        }
    }

    private float k0(float f) {
        PointF pointF = this.f18913default;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f * this.f18936switch) + pointF.x;
    }

    private float l(float f, float f2, float f3, float f4) {
        float f5 = f - f2;
        float f6 = f3 - f4;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    private float l0(float f) {
        PointF pointF = this.f18913default;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f * this.f18936switch) + pointF.y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(PointF pointF, PointF pointF2) {
        if (!this.f18944while) {
            PointF pointF3 = this.f18906abstract;
            if (pointF3 != null) {
                pointF.x = pointF3.x;
                pointF.y = pointF3.y;
            } else {
                pointF.x = X() / 2;
                pointF.y = W() / 2;
            }
        }
        float fMin = Math.min(this.f18938this, this.f18931public);
        double d = this.f18936switch;
        double d2 = fMin;
        Double.isNaN(d2);
        boolean z = d <= d2 * 0.9d;
        if (!z) {
            fMin = H();
        }
        float f = fMin;
        int i = this.f18932return;
        if (i == 3) {
            e0(f, pointF);
        } else if (i == 2 || !z || !this.f18944while) {
            new Cnew(this, f, pointF, (Cdo) null).m23424case(false).m23427new(this.f18933static).m23421goto(4).m23426for();
        } else if (i == 1) {
            new Cnew(this, f, pointF, pointF2, null).m23424case(false).m23427new(this.f18933static).m23421goto(4).m23426for();
        }
        invalidate();
    }

    private boolean m0(Cbreak cbreak) {
        return s0(0.0f) <= ((float) cbreak.f18946do.right) && ((float) cbreak.f18946do.left) <= s0((float) getWidth()) && t0(0.0f) <= ((float) cbreak.f18946do.bottom) && ((float) cbreak.f18946do.top) <= t0((float) getHeight());
    }

    private float n(int i, long j, float f, float f2, long j2) {
        if (i == 1) {
            return p(j, f, f2, j2);
        }
        if (i == 2) {
            return o(j, f, f2, j2);
        }
        throw new IllegalStateException("Unexpected easing type: " + i);
    }

    private PointF n0(float f, float f2, float f3) {
        int paddingLeft = getPaddingLeft() + (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2);
        int paddingTop = getPaddingTop() + (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2);
        if (this.x == null) {
            this.x = new Cthis(0.0f, new PointF(0.0f, 0.0f), null);
        }
        this.x.f18988do = f3;
        this.x.f18989if.set(paddingLeft - (f * f3), paddingTop - (f2 * f3));
        t(true, this.x);
        return this.x.f18989if;
    }

    private float o(long j, float f, float f2, long j2) {
        float f3;
        float f4 = j / (j2 / 2.0f);
        if (f4 < 1.0f) {
            f3 = (f2 / 2.0f) * f4;
        } else {
            float f5 = f4 - 1.0f;
            f3 = (-f2) / 2.0f;
            f4 = (f5 * (f5 - 2.0f)) - 1.0f;
        }
        return (f3 * f4) + f;
    }

    private float p(long j, float f, float f2, long j2) {
        float f3 = j / j2;
        return ((-f2) * f3 * (f3 - 2.0f)) + f;
    }

    private void q(AsyncTask<Void, Void, ?> asyncTask) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f18939throw && Build.VERSION.SDK_INT >= 11) {
            try {
                AsyncTask.class.getMethod("executeOnExecutor", Executor.class, Object[].class).invoke(asyncTask, (Executor) AsyncTask.class.getField("THREAD_POOL_EXECUTOR").get(null), null);
                return;
            } catch (Exception unused) {
            }
        }
        asyncTask.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @AnyThread
    public void r(Rect rect, Rect rect2) {
        if (getRequiredRotation() == 0) {
            rect2.set(rect);
            return;
        }
        if (getRequiredRotation() == 90) {
            int i = rect.top;
            int i2 = this.f18934strictfp;
            rect2.set(i, i2 - rect.right, rect.bottom, i2 - rect.left);
        } else if (getRequiredRotation() != 180) {
            int i3 = this.f18912continue;
            rect2.set(i3 - rect.bottom, rect.left, i3 - rect.top, rect.right);
        } else {
            int i4 = this.f18912continue;
            int i5 = i4 - rect.right;
            int i6 = this.f18934strictfp;
            rect2.set(i5, i6 - rect.bottom, i4 - rect.left, i6 - rect.top);
        }
    }

    private void s(boolean z) {
        boolean z2;
        float f = 0.0f;
        if (this.f18913default == null) {
            z2 = true;
            this.f18913default = new PointF(0.0f, 0.0f);
        } else {
            z2 = false;
        }
        if (this.x == null) {
            this.x = new Cthis(f, new PointF(0.0f, 0.0f), null);
        }
        this.x.f18988do = this.f18936switch;
        this.x.f18989if.set(this.f18913default);
        t(z, this.x);
        this.f18936switch = this.x.f18988do;
        this.f18913default.set(this.x.f18989if);
        if (z2) {
            this.f18913default.set(n0(X() / 2, W() / 2, this.f18936switch));
        }
    }

    private float s0(float f) {
        PointF pointF = this.f18913default;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f - pointF.x) / this.f18936switch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGestureDetector(Context context) {
        this.a = new GestureDetector(context, new Cif(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(boolean z, Cthis cthis) {
        float fMax;
        int iMax;
        float fMax2;
        if (this.f18910class == 2 && D()) {
            z = false;
        }
        PointF pointF = cthis.f18989if;
        float fG = G(cthis.f18988do);
        float fX = X() * fG;
        float fW = W() * fG;
        if (this.f18910class == 3 && D()) {
            pointF.x = Math.max(pointF.x, (getWidth() / 2) - fX);
            pointF.y = Math.max(pointF.y, (getHeight() / 2) - fW);
        } else if (z) {
            pointF.x = Math.max(pointF.x, getWidth() - fX);
            pointF.y = Math.max(pointF.y, getHeight() - fW);
        } else {
            pointF.x = Math.max(pointF.x, -fX);
            pointF.y = Math.max(pointF.y, -fW);
        }
        float paddingLeft = (getPaddingLeft() > 0 || getPaddingRight() > 0) ? getPaddingLeft() / (getPaddingLeft() + getPaddingRight()) : 0.5f;
        float paddingTop = (getPaddingTop() > 0 || getPaddingBottom() > 0) ? getPaddingTop() / (getPaddingTop() + getPaddingBottom()) : 0.5f;
        if (this.f18910class == 3 && D()) {
            fMax = Math.max(0, getWidth() / 2);
            iMax = Math.max(0, getHeight() / 2);
        } else {
            if (z) {
                fMax = Math.max(0.0f, (getWidth() - fX) * paddingLeft);
                fMax2 = Math.max(0.0f, (getHeight() - fW) * paddingTop);
                pointF.x = Math.min(pointF.x, fMax);
                pointF.y = Math.min(pointF.y, fMax2);
                cthis.f18988do = fG;
            }
            fMax = Math.max(0, getWidth());
            iMax = Math.max(0, getHeight());
        }
        fMax2 = iMax;
        pointF.x = Math.min(pointF.x, fMax);
        pointF.y = Math.min(pointF.y, fMax2);
        cthis.f18988do = fG;
    }

    private float t0(float f) {
        PointF pointF = this.f18913default;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f - pointF.y) / this.f18936switch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @AnyThread
    public int u(Context context, String str) {
        int i = 0;
        if (!str.startsWith("content")) {
            if (!str.startsWith("file:///") || str.startsWith("file:///android_asset/")) {
                return 0;
            }
            try {
                int attributeInt = new ExifInterface(str.substring(7)).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
                if (attributeInt != 1 && attributeInt != 0) {
                    if (attributeInt == 6) {
                        return 90;
                    }
                    if (attributeInt == 3) {
                        return 180;
                    }
                    if (attributeInt == 8) {
                        return 270;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unsupported EXIF orientation: ");
                    sb.append(attributeInt);
                    return 0;
                }
                return 0;
            } catch (Exception unused) {
                return 0;
            }
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(Uri.parse(str), new String[]{"orientation"}, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                int i2 = cursorQuery.getInt(0);
                if (!f36258J.contains(Integer.valueOf(i2)) || i2 == -1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unsupported orientation: ");
                    sb2.append(i2);
                } else {
                    i = i2;
                }
            }
            if (cursorQuery == null) {
                return i;
            }
        } catch (Exception unused2) {
            if (cursorQuery == null) {
                return 0;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        cursorQuery.close();
        return i;
    }

    private Point v(Canvas canvas) {
        int iIntValue;
        int iIntValue2;
        int i = 2048;
        if (Build.VERSION.SDK_INT >= 14) {
            try {
                iIntValue = ((Integer) Canvas.class.getMethod("getMaximumBitmapWidth", new Class[0]).invoke(canvas, new Object[0])).intValue();
                try {
                    iIntValue2 = ((Integer) Canvas.class.getMethod("getMaximumBitmapHeight", new Class[0]).invoke(canvas, new Object[0])).intValue();
                    i = iIntValue;
                } catch (Exception unused) {
                    i = iIntValue;
                    iIntValue2 = 2048;
                    return new Point(Math.min(i, this.f18917final), Math.min(iIntValue2, this.f18935super));
                }
            } catch (Exception unused2) {
                iIntValue = 2048;
            }
        } else {
            iIntValue2 = 2048;
        }
        return new Point(Math.min(i, this.f18917final), Math.min(iIntValue2, this.f18935super));
    }

    private synchronized void x(Point point) {
        k("initialiseBaseLayer maxTileDimensions=%dx%d", Integer.valueOf(point.x), Integer.valueOf(point.y));
        Cthis cthis = new Cthis(0.0f, new PointF(0.0f, 0.0f), null);
        this.x = cthis;
        t(true, cthis);
        int iG = g(this.x.f18988do);
        this.f18942try = iG;
        if (iG > 1) {
            this.f18942try = iG / 2;
        }
        if (this.f18942try != 1 || this.f18925interface != null || X() >= point.x || W() >= point.y) {
            y(point);
            Iterator<Cbreak> it = this.f18908case.get(Integer.valueOf(this.f18942try)).iterator();
            while (it.hasNext()) {
                q(new Ccatch(this, this.b, it.next()));
            }
            R(true);
        } else {
            this.b.recycle();
            this.b = null;
            q(new Ctry(this, getContext(), this.d, this.f18927new, false));
        }
    }

    private void y(Point point) {
        int i = 1;
        k("initialiseTileMap maxTileDimensions=%dx%d", Integer.valueOf(point.x), Integer.valueOf(point.y));
        this.f18908case = new LinkedHashMap();
        int i2 = this.f18942try;
        int i3 = 1;
        int i4 = 1;
        while (true) {
            int iX = X() / i3;
            int iW = W() / i4;
            int i5 = iX / i2;
            int i6 = iW / i2;
            while (true) {
                if (i5 + i3 + i <= point.x) {
                    double d = i5;
                    double width = getWidth();
                    Double.isNaN(width);
                    if (d <= width * 1.25d || i2 >= this.f18942try) {
                        break;
                    }
                }
                i3++;
                iX = X() / i3;
                i5 = iX / i2;
                i = 1;
            }
            while (true) {
                if (i6 + i4 + i <= point.y) {
                    double d2 = i6;
                    double height = getHeight();
                    Double.isNaN(height);
                    if (d2 <= height * 1.25d || i2 >= this.f18942try) {
                        break;
                    }
                }
                i4++;
                iW = W() / i4;
                i6 = iW / i2;
                i = 1;
            }
            ArrayList arrayList = new ArrayList(i3 * i4);
            int i7 = 0;
            while (i7 < i3) {
                int i8 = 0;
                while (i8 < i4) {
                    Cbreak cbreak = new Cbreak(null);
                    cbreak.f18949if = i2;
                    cbreak.f18951try = i2 == this.f18942try;
                    cbreak.f18946do = new Rect(i7 * iX, i8 * iW, i7 == i3 + (-1) ? X() : (i7 + 1) * iX, i8 == i4 + (-1) ? W() : (i8 + 1) * iW);
                    cbreak.f18945case = new Rect(0, 0, 0, 0);
                    cbreak.f18947else = new Rect(cbreak.f18946do);
                    arrayList.add(cbreak);
                    i8++;
                }
                i7++;
            }
            this.f18908case.put(Integer.valueOf(i2), arrayList);
            if (i2 == 1) {
                return;
            }
            i2 /= 2;
            i = 1;
        }
    }

    private boolean z() {
        boolean z = true;
        if (this.f18914do != null && !this.f18921if) {
            return true;
        }
        Map<Integer, List<Cbreak>> map = this.f18908case;
        if (map == null) {
            return false;
        }
        for (Map.Entry<Integer, List<Cbreak>> entry : map.entrySet()) {
            if (entry.getKey().intValue() == this.f18942try) {
                for (Cbreak cbreak : entry.getValue()) {
                    if (cbreak.f18950new || cbreak.f18948for == null) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    public final boolean A() {
        return this.p;
    }

    public final boolean B() {
        return this.f18944while;
    }

    public final boolean C() {
        return this.f18926native;
    }

    public final boolean D() {
        return this.o;
    }

    public final boolean E() {
        return this.f18923import;
    }

    public void I() {
    }

    public void L() {
    }

    public void Q() {
        T(true);
        this.u = null;
        this.v = null;
        this.w = null;
    }

    public final void U() {
        this.n = null;
        this.f18928package = Float.valueOf(G(0.0f));
        if (D()) {
            this.f18929private = new PointF(X() / 2, W() / 2);
        } else {
            this.f18929private = new PointF(0.0f, 0.0f);
        }
        invalidate();
    }

    public final void Z(vl0 vl0Var, vl0 vl0Var2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        a0(vl0Var, vl0Var2, null);
    }

    public final void a0(vl0 vl0Var, vl0 vl0Var2, yl0 yl0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Objects.requireNonNull(vl0Var, "imageSource must not be null");
        T(true);
        if (yl0Var != null) {
            V(yl0Var);
        }
        if (vl0Var2 != null) {
            if (vl0Var.m8917try() != null) {
                throw new IllegalArgumentException("Preview image cannot be used when a bitmap is provided for the main image");
            }
            if (vl0Var.m8915this() <= 0 || vl0Var.m8911else() <= 0) {
                throw new IllegalArgumentException("Preview image cannot be used unless dimensions are provided for the main image");
            }
            this.f18912continue = vl0Var.m8915this();
            this.f18934strictfp = vl0Var.m8911else();
            this.f18930protected = vl0Var2.m8912goto();
            if (vl0Var2.m8917try() != null) {
                this.f18919for = vl0Var2.m8909class();
                K(vl0Var2.m8917try());
            } else {
                Uri uriM8908catch = vl0Var2.m8908catch();
                if (uriM8908catch == null && vl0Var2.m8907case() != null) {
                    uriM8908catch = Uri.parse("android.resource://" + getContext().getPackageName() + on0.f4694final + vl0Var2.m8907case());
                }
                q(new Ctry(this, getContext(), this.d, uriM8908catch, true));
            }
        }
        if (vl0Var.m8917try() != null && vl0Var.m8912goto() != null) {
            J(Bitmap.createBitmap(vl0Var.m8917try(), vl0Var.m8912goto().left, vl0Var.m8912goto().top, vl0Var.m8912goto().width(), vl0Var.m8912goto().height()), 0, false);
            return;
        }
        if (vl0Var.m8917try() != null) {
            J(vl0Var.m8917try(), 0, vl0Var.m8909class());
            return;
        }
        this.f18925interface = vl0Var.m8912goto();
        Uri uriM8908catch2 = vl0Var.m8908catch();
        this.f18927new = uriM8908catch2;
        if (uriM8908catch2 == null && vl0Var.m8907case() != null) {
            this.f18927new = Uri.parse("android.resource://" + getContext().getPackageName() + on0.f4694final + vl0Var.m8907case());
        }
        if (vl0Var.m8906break() || this.f18925interface != null) {
            q(new Cclass(this, getContext(), this.e, this.f18927new));
        } else {
            q(new Ctry(this, getContext(), this.d, this.f18927new, false));
        }
    }

    public final void b0(vl0 vl0Var, yl0 yl0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        a0(vl0Var, null, yl0Var);
    }

    public Cnew d(PointF pointF) {
        Cdo cdo = null;
        if (D()) {
            return new Cnew(this, pointF, cdo);
        }
        return null;
    }

    public void d0(int i, int i2) {
        this.f18917final = i;
        this.f18935super = i2;
    }

    public Cnew e(float f) {
        Cdo cdo = null;
        if (D()) {
            return new Cnew(this, f, cdo);
        }
        return null;
    }

    public final void e0(float f, PointF pointF) {
        this.n = null;
        this.f18928package = Float.valueOf(f);
        this.f18929private = pointF;
        this.f18906abstract = pointF;
        invalidate();
    }

    public Cnew f(float f, PointF pointF) {
        Cdo cdo = null;
        if (D()) {
            return new Cnew(this, f, pointF, cdo);
        }
        return null;
    }

    public final PointF f0(float f, float f2) {
        return g0(f, f2, new PointF());
    }

    public final PointF g0(float f, float f2, PointF pointF) {
        if (this.f18913default == null) {
            return null;
        }
        pointF.set(k0(f), l0(f2));
        return pointF;
    }

    public final int getAppliedOrientation() {
        return getRequiredRotation();
    }

    public final PointF getCenter() {
        return o0(getWidth() / 2, getHeight() / 2);
    }

    public float getMaxScale() {
        return this.f18938this;
    }

    public final float getMinScale() {
        return H();
    }

    public final int getOrientation() {
        return this.f18920goto;
    }

    public final int getSHeight() {
        return this.f18934strictfp;
    }

    public final int getSWidth() {
        return this.f18912continue;
    }

    public final float getScale() {
        return this.f18936switch;
    }

    public final yl0 getState() {
        if (this.f18913default == null || this.f18912continue <= 0 || this.f18934strictfp <= 0) {
            return null;
        }
        return new yl0(getScale(), getCenter(), getOrientation());
    }

    public final PointF h0(PointF pointF) {
        return g0(pointF.x, pointF.y, new PointF());
    }

    public final PointF i0(PointF pointF, PointF pointF2) {
        return g0(pointF.x, pointF.y, pointF2);
    }

    public final PointF o0(float f, float f2) {
        return p0(f, f2, new PointF());
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        float height;
        int i;
        super.onDraw(canvas);
        j();
        if (this.f18912continue == 0 || this.f18934strictfp == 0 || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.f18908case == null && this.b != null) {
            x(v(canvas));
        }
        if (i()) {
            P();
            if (this.n != null) {
                float f = this.f18936switch;
                if (this.f18918finally == null) {
                    this.f18918finally = new PointF(0.0f, 0.0f);
                }
                this.f18918finally.set(this.f18913default);
                long jCurrentTimeMillis = System.currentTimeMillis() - this.n.f18966class;
                boolean z = jCurrentTimeMillis > this.n.f18971goto;
                long jMin = Math.min(jCurrentTimeMillis, this.n.f18971goto);
                this.f18936switch = n(this.n.f18963break, jMin, this.n.f18968do, this.n.f18972if - this.n.f18968do, this.n.f18971goto);
                float fN = n(this.n.f18963break, jMin, this.n.f18964case.x, this.n.f18969else.x - this.n.f18964case.x, this.n.f18971goto);
                float fN2 = n(this.n.f18963break, jMin, this.n.f18964case.y, this.n.f18969else.y - this.n.f18964case.y, this.n.f18971goto);
                this.f18913default.x -= k0(this.n.f18973new.x) - fN;
                this.f18913default.y -= l0(this.n.f18973new.y) - fN2;
                s(z || this.n.f18968do == this.n.f18972if);
                Y(f, this.f18918finally, this.n.f18965catch);
                R(z);
                if (z) {
                    if (this.n.f18967const != null) {
                        try {
                            this.n.f18967const.onComplete();
                        } catch (Exception unused) {
                        }
                    }
                    this.n = null;
                }
                invalidate();
            }
            if (this.f18908case == null || !z()) {
                if (this.f18914do != null) {
                    float width = this.f18936switch;
                    if (this.f18921if) {
                        width *= this.f18912continue / r0.getWidth();
                        height = this.f18936switch * (this.f18934strictfp / this.f18914do.getHeight());
                    } else {
                        height = width;
                    }
                    if (this.y == null) {
                        this.y = new Matrix();
                    }
                    this.y.reset();
                    this.y.postScale(width, height);
                    this.y.postRotate(getRequiredRotation());
                    Matrix matrix = this.y;
                    PointF pointF = this.f18913default;
                    matrix.postTranslate(pointF.x, pointF.y);
                    if (getRequiredRotation() == 180) {
                        Matrix matrix2 = this.y;
                        float f2 = this.f18936switch;
                        matrix2.postTranslate(this.f18912continue * f2, f2 * this.f18934strictfp);
                    } else if (getRequiredRotation() == 90) {
                        this.y.postTranslate(this.f18936switch * this.f18934strictfp, 0.0f);
                    } else if (getRequiredRotation() == 270) {
                        this.y.postTranslate(0.0f, this.f18936switch * this.f18912continue);
                    }
                    if (this.w != null) {
                        if (this.z == null) {
                            this.z = new RectF();
                        }
                        this.z.set(0.0f, 0.0f, this.f18921if ? this.f18914do.getWidth() : this.f18912continue, this.f18921if ? this.f18914do.getHeight() : this.f18934strictfp);
                        this.y.mapRect(this.z);
                        canvas.drawRect(this.z, this.w);
                    }
                    canvas.drawBitmap(this.f18914do, this.y, this.u);
                }
            } else {
                int iMin = Math.min(this.f18942try, g(this.f18936switch));
                boolean z2 = false;
                for (Map.Entry<Integer, List<Cbreak>> entry : this.f18908case.entrySet()) {
                    if (entry.getKey().intValue() == iMin) {
                        for (Cbreak cbreak : entry.getValue()) {
                            if (cbreak.f18951try && (cbreak.f18950new || cbreak.f18948for == null)) {
                                z2 = true;
                            }
                        }
                    }
                }
                for (Map.Entry<Integer, List<Cbreak>> entry2 : this.f18908case.entrySet()) {
                    if (entry2.getKey().intValue() == iMin || z2) {
                        for (Cbreak cbreak2 : entry2.getValue()) {
                            j0(cbreak2.f18946do, cbreak2.f18945case);
                            if (cbreak2.f18950new || cbreak2.f18948for == null) {
                                i = iMin;
                                if (cbreak2.f18950new && this.f18915else) {
                                    canvas.drawText("LOADING", cbreak2.f18945case.left + 5, cbreak2.f18945case.top + 35, this.v);
                                }
                            } else {
                                if (this.w != null) {
                                    canvas.drawRect(cbreak2.f18945case, this.w);
                                }
                                if (this.y == null) {
                                    this.y = new Matrix();
                                }
                                this.y.reset();
                                i = iMin;
                                c0(this.A, 0.0f, 0.0f, cbreak2.f18948for.getWidth(), 0.0f, cbreak2.f18948for.getWidth(), cbreak2.f18948for.getHeight(), 0.0f, cbreak2.f18948for.getHeight());
                                if (getRequiredRotation() == 0) {
                                    c0(this.B, cbreak2.f18945case.left, cbreak2.f18945case.top, cbreak2.f18945case.right, cbreak2.f18945case.top, cbreak2.f18945case.right, cbreak2.f18945case.bottom, cbreak2.f18945case.left, cbreak2.f18945case.bottom);
                                } else if (getRequiredRotation() == 90) {
                                    c0(this.B, cbreak2.f18945case.right, cbreak2.f18945case.top, cbreak2.f18945case.right, cbreak2.f18945case.bottom, cbreak2.f18945case.left, cbreak2.f18945case.bottom, cbreak2.f18945case.left, cbreak2.f18945case.top);
                                } else if (getRequiredRotation() == 180) {
                                    c0(this.B, cbreak2.f18945case.right, cbreak2.f18945case.bottom, cbreak2.f18945case.left, cbreak2.f18945case.bottom, cbreak2.f18945case.left, cbreak2.f18945case.top, cbreak2.f18945case.right, cbreak2.f18945case.top);
                                } else if (getRequiredRotation() == 270) {
                                    c0(this.B, cbreak2.f18945case.left, cbreak2.f18945case.bottom, cbreak2.f18945case.left, cbreak2.f18945case.top, cbreak2.f18945case.right, cbreak2.f18945case.top, cbreak2.f18945case.right, cbreak2.f18945case.bottom);
                                }
                                this.y.setPolyToPoly(this.A, 0, this.B, 0, 4);
                                canvas.drawBitmap(cbreak2.f18948for, this.y, this.u);
                                if (this.f18915else) {
                                    canvas.drawRect(cbreak2.f18945case, this.v);
                                }
                            }
                            if (cbreak2.f18951try && this.f18915else) {
                                canvas.drawText("ISS " + cbreak2.f18949if + " RECT " + cbreak2.f18946do.top + "," + cbreak2.f18946do.left + "," + cbreak2.f18946do.bottom + "," + cbreak2.f18946do.right, cbreak2.f18945case.left + 5, cbreak2.f18945case.top + 15, this.v);
                            }
                            iMin = i;
                        }
                    }
                    iMin = iMin;
                }
            }
            if (this.f18915else) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scale: ");
                Locale locale = Locale.ENGLISH;
                sb.append(String.format(locale, "%.2f", Float.valueOf(this.f18936switch)));
                canvas.drawText(sb.toString(), 5.0f, 15.0f, this.v);
                canvas.drawText("Translate: " + String.format(locale, "%.2f", Float.valueOf(this.f18913default.x)) + ":" + String.format(locale, "%.2f", Float.valueOf(this.f18913default.y)), 5.0f, 35.0f, this.v);
                PointF center = getCenter();
                canvas.drawText("Source center: " + String.format(locale, "%.2f", Float.valueOf(center.x)) + ":" + String.format(locale, "%.2f", Float.valueOf(center.y)), 5.0f, 55.0f, this.v);
                this.v.setStrokeWidth(2.0f);
                Cfor cfor = this.n;
                if (cfor != null) {
                    PointF pointFH0 = h0(cfor.f18970for);
                    PointF pointFH02 = h0(this.n.f18975try);
                    PointF pointFH03 = h0(this.n.f18973new);
                    canvas.drawCircle(pointFH0.x, pointFH0.y, 10.0f, this.v);
                    this.v.setColor(-65536);
                    canvas.drawCircle(pointFH02.x, pointFH02.y, 20.0f, this.v);
                    this.v.setColor(QMUIProgressBar.f19440abstract);
                    canvas.drawCircle(pointFH03.x, pointFH03.y, 25.0f, this.v);
                    this.v.setColor(-16711681);
                    canvas.drawCircle(getWidth() / 2, getHeight() / 2, 30.0f, this.v);
                }
                if (this.f != null) {
                    this.v.setColor(-65536);
                    PointF pointF2 = this.f;
                    canvas.drawCircle(pointF2.x, pointF2.y, 20.0f, this.v);
                }
                if (this.l != null) {
                    this.v.setColor(QMUIProgressBar.f19440abstract);
                    canvas.drawCircle(k0(this.l.x), l0(this.l.y), 35.0f, this.v);
                }
                if (this.m != null) {
                    this.v.setColor(-16711681);
                    PointF pointF3 = this.m;
                    canvas.drawCircle(pointF3.x, pointF3.y, 30.0f, this.v);
                }
                this.v.setColor(-65281);
                this.v.setStrokeWidth(1.0f);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        boolean z = mode != 1073741824;
        boolean z2 = mode2 != 1073741824;
        if (this.f18912continue > 0 && this.f18934strictfp > 0) {
            if (z && z2) {
                size = X();
                size2 = W();
            } else if (z2) {
                double dW = W();
                double dX = X();
                Double.isNaN(dW);
                Double.isNaN(dX);
                double d = dW / dX;
                double d2 = size;
                Double.isNaN(d2);
                size2 = (int) (d * d2);
            } else if (z) {
                double dX2 = X();
                double dW2 = W();
                Double.isNaN(dX2);
                Double.isNaN(dW2);
                double d3 = dX2 / dW2;
                double d4 = size2;
                Double.isNaN(d4);
                size = (int) (d3 * d4);
            }
        }
        setMeasuredDimension(Math.max(size, getSuggestedMinimumWidth()), Math.max(size2, getSuggestedMinimumHeight()));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        k("onSizeChanged %dx%d -> %dx%d", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i), Integer.valueOf(i2));
        PointF center = getCenter();
        if (!this.o || center == null) {
            return;
        }
        this.n = null;
        this.f18928package = Float.valueOf(this.f18936switch);
        this.f18929private = center;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        GestureDetector gestureDetector;
        Cfor cfor = this.n;
        if (cfor != null && !cfor.f18974this) {
            S(true);
            return true;
        }
        Cfor cfor2 = this.n;
        if (cfor2 != null && cfor2.f18967const != null) {
            try {
                this.n.f18967const.onInterruptedByUser();
            } catch (Exception unused) {
            }
        }
        this.n = null;
        if (this.f18913default == null) {
            return true;
        }
        if (!this.f18924instanceof && ((gestureDetector = this.a) == null || gestureDetector.onTouchEvent(motionEvent))) {
            this.f18941transient = false;
            this.f18922implements = false;
            this.f18937synchronized = 0;
            return true;
        }
        if (this.f18916extends == null) {
            this.f18916extends = new PointF(0.0f, 0.0f);
        }
        if (this.f18918finally == null) {
            this.f18918finally = new PointF(0.0f, 0.0f);
        }
        if (this.f == null) {
            this.f = new PointF(0.0f, 0.0f);
        }
        float f = this.f18936switch;
        this.f18918finally.set(this.f18913default);
        boolean zO = O(motionEvent);
        Y(f, this.f18918finally, 2);
        return zO || super.onTouchEvent(motionEvent);
    }

    public final PointF p0(float f, float f2, PointF pointF) {
        if (this.f18913default == null) {
            return null;
        }
        pointF.set(s0(f), t0(f2));
        return pointF;
    }

    public final PointF q0(PointF pointF) {
        return p0(pointF.x, pointF.y, new PointF());
    }

    public final PointF r0(PointF pointF, PointF pointF2) {
        return p0(pointF.x, pointF.y, pointF2);
    }

    public final void setBitmapDecoderClass(Class<? extends ImageDecoder> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.d = new com.luck.picture.lib.widget.longimage.Cdo(cls);
    }

    public final void setBitmapDecoderFactory(DecoderFactory<? extends ImageDecoder> decoderFactory) {
        if (decoderFactory == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.d = decoderFactory;
    }

    public final void setDebug(boolean z) {
        this.f18915else = z;
    }

    public final void setDoubleTapZoomDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setDoubleTapZoomScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i);
    }

    public final void setDoubleTapZoomDuration(int i) {
        this.f18933static = Math.max(0, i);
    }

    public final void setDoubleTapZoomScale(float f) {
        this.f18931public = f;
    }

    public final void setDoubleTapZoomStyle(int i) {
        if (N.contains(Integer.valueOf(i))) {
            this.f18932return = i;
            return;
        }
        throw new IllegalArgumentException("Invalid zoom style: " + i);
    }

    public final void setImage(vl0 vl0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        a0(vl0Var, null, null);
    }

    public final void setMaxScale(float f) {
        this.f18938this = f;
    }

    public void setMaxTileSize(int i) {
        this.f18917final = i;
        this.f18935super = i;
    }

    public final void setMaximumDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMinScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i);
    }

    public final void setMinScale(float f) {
        this.f18907break = f;
    }

    public final void setMinimumDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMaxScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i);
    }

    public final void setMinimumScaleType(int i) {
        if (!b0.contains(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Invalid scale type: " + i);
        }
        this.f18911const = i;
        if (D()) {
            s(true);
            invalidate();
        }
    }

    public void setMinimumTileDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f18909catch = (int) Math.min((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f, i);
        if (D()) {
            T(false);
            invalidate();
        }
    }

    public void setOnImageEventListener(OnImageEventListener onImageEventListener) {
        this.q = onImageEventListener;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.s = onLongClickListener;
    }

    public void setOnStateChangedListener(OnStateChangedListener onStateChangedListener) {
        this.r = onStateChangedListener;
    }

    public final void setOrientation(int i) {
        if (!f36258J.contains(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Invalid orientation: " + i);
        }
        this.f18920goto = i;
        T(false);
        invalidate();
        requestLayout();
    }

    public final void setPanEnabled(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        PointF pointF;
        this.f18944while = z;
        if (z || (pointF = this.f18913default) == null) {
            return;
        }
        pointF.x = (getWidth() / 2) - (this.f18936switch * (X() / 2));
        this.f18913default.y = (getHeight() / 2) - (this.f18936switch * (W() / 2));
        if (D()) {
            R(true);
            invalidate();
        }
    }

    public final void setPanLimit(int i) {
        if (!U.contains(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Invalid pan limit: " + i);
        }
        this.f18910class = i;
        if (D()) {
            s(true);
            invalidate();
        }
    }

    public void setParallelLoadingEnabled(boolean z) {
        this.f18939throw = z;
    }

    public final void setQuickScaleEnabled(boolean z) {
        this.f18926native = z;
    }

    public final void setRegionDecoderClass(Class<? extends ImageRegionDecoder> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.e = new com.luck.picture.lib.widget.longimage.Cdo(cls);
    }

    public final void setRegionDecoderFactory(DecoderFactory<? extends ImageRegionDecoder> decoderFactory) {
        if (decoderFactory == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.e = decoderFactory;
    }

    public final void setTileBackgroundColor(int i) {
        if (Color.alpha(i) == 0) {
            this.w = null;
        } else {
            Paint paint = new Paint();
            this.w = paint;
            paint.setStyle(Paint.Style.FILL);
            this.w.setColor(i);
        }
        invalidate();
    }

    public final void setZoomEnabled(boolean z) {
        this.f18923import = z;
    }

    public boolean w() {
        return (this.f18927new == null && this.f18914do == null) ? false : true;
    }

    /* renamed from: com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: break, reason: not valid java name */
        private int f18963break;

        /* renamed from: case, reason: not valid java name */
        private PointF f18964case;

        /* renamed from: catch, reason: not valid java name */
        private int f18965catch;

        /* renamed from: class, reason: not valid java name */
        private long f18966class;

        /* renamed from: const, reason: not valid java name */
        private OnAnimationEventListener f18967const;

        /* renamed from: do, reason: not valid java name */
        private float f18968do;

        /* renamed from: else, reason: not valid java name */
        private PointF f18969else;

        /* renamed from: for, reason: not valid java name */
        private PointF f18970for;

        /* renamed from: goto, reason: not valid java name */
        private long f18971goto;

        /* renamed from: if, reason: not valid java name */
        private float f18972if;

        /* renamed from: new, reason: not valid java name */
        private PointF f18973new;

        /* renamed from: this, reason: not valid java name */
        private boolean f18974this;

        /* renamed from: try, reason: not valid java name */
        private PointF f18975try;

        private Cfor() {
            this.f18971goto = 500L;
            this.f18974this = true;
            this.f18963break = 2;
            this.f18965catch = 1;
            this.f18966class = System.currentTimeMillis();
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }
    }

    public SubsamplingScaleImageView(Context context) {
        this(context, null);
    }
}
