package cc.shinichi.library.view.helper;

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
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.support.v4.on0;
import android.support.v4.wl0;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.davemorrissey.labs.subscaleview.ImageViewState;
import com.davemorrissey.labs.subscaleview.R;
import com.davemorrissey.labs.subscaleview.decoder.CompatDecoderFactory;
import com.davemorrissey.labs.subscaleview.decoder.DecoderFactory;
import com.davemorrissey.labs.subscaleview.decoder.ImageDecoder;
import com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageDecoder;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageRegionDecoder;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class SubsamplingScaleImageViewDragClose extends View {

    /* renamed from: J, reason: collision with root package name */
    public static final int f36253J = -1;
    public static final int K = 0;
    public static final int L = 90;
    public static final int M = 180;
    public static final int N = 270;
    public static final int O = 1;
    public static final int P = 2;
    public static final int Q = 3;
    public static final int R = 1;
    public static final int S = 2;
    public static final int T = 1;
    public static final int U = 2;
    public static final int V = 3;
    public static final int W = 1;
    public static final int a0 = 2;
    public static final int b0 = 3;
    public static final int c0 = 4;
    public static final int d0 = 1;
    public static final int e0 = 2;
    public static final int f0 = 3;
    public static final int g0 = 4;
    public static final int h0 = Integer.MAX_VALUE;
    private static final String i0 = SubsamplingScaleImageViewDragClose.class.getSimpleName();
    private static final List<Integer> j0 = Arrays.asList(0, 90, 180, 270, -1);
    private static final List<Integer> k0 = Arrays.asList(1, 2, 3);
    private static final List<Integer> l0 = Arrays.asList(2, 1);
    private static final List<Integer> m0 = Arrays.asList(1, 2, 3);
    private static final List<Integer> n0 = Arrays.asList(2, 1, 3, 4);
    private static final int o0 = 1;
    private static Bitmap.Config p0;
    private View.OnLongClickListener A;
    private Paint B;
    private Paint C;
    private Paint D;
    private Paint E;
    private Cbreak F;
    private Matrix G;
    private RectF H;
    private int I;
    private int a;

    /* renamed from: abstract, reason: not valid java name */
    private int f8859abstract;
    private int b;

    /* renamed from: break, reason: not valid java name */
    private boolean f8860break;
    private float c;

    /* renamed from: case, reason: not valid java name */
    private final float f8861case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f8862catch;

    /* renamed from: class, reason: not valid java name */
    private Uri f8863class;

    /* renamed from: const, reason: not valid java name */
    private int f8864const;

    /* renamed from: continue, reason: not valid java name */
    private float f8865continue;
    private Rect d;

    /* renamed from: default, reason: not valid java name */
    private boolean f8866default;

    /* renamed from: do, reason: not valid java name */
    private final ReadWriteLock f8867do;
    private Rect e;

    /* renamed from: else, reason: not valid java name */
    public boolean f8868else;

    /* renamed from: extends, reason: not valid java name */
    private boolean f8869extends;
    private boolean f;

    /* renamed from: final, reason: not valid java name */
    private Map<Integer, List<Ccatch>> f8870final;

    /* renamed from: finally, reason: not valid java name */
    private boolean f8871finally;

    /* renamed from: for, reason: not valid java name */
    private final Handler f8872for;
    private boolean g;

    /* renamed from: goto, reason: not valid java name */
    public boolean f8873goto;
    private boolean h;
    private int i;

    /* renamed from: if, reason: not valid java name */
    private final float f8874if;

    /* renamed from: implements, reason: not valid java name */
    private PointF f8875implements;

    /* renamed from: import, reason: not valid java name */
    private int f8876import;

    /* renamed from: instanceof, reason: not valid java name */
    private PointF f8877instanceof;

    /* renamed from: interface, reason: not valid java name */
    private PointF f8878interface;
    private GestureDetector j;
    private GestureDetector k;
    private ImageRegionDecoder l;
    private DecoderFactory<? extends ImageDecoder> m;
    private DecoderFactory<? extends ImageRegionDecoder> n;

    /* renamed from: native, reason: not valid java name */
    private int f8879native;

    /* renamed from: new, reason: not valid java name */
    private final float[] f8880new;
    private PointF o;
    private float p;

    /* renamed from: package, reason: not valid java name */
    private float f8881package;

    /* renamed from: private, reason: not valid java name */
    private int f8882private;

    /* renamed from: protected, reason: not valid java name */
    private PointF f8883protected;

    /* renamed from: public, reason: not valid java name */
    private int f8884public;
    private float q;
    private boolean r;

    /* renamed from: return, reason: not valid java name */
    private int f8885return;
    private PointF s;

    /* renamed from: static, reason: not valid java name */
    private int f8886static;

    /* renamed from: strictfp, reason: not valid java name */
    private float f8887strictfp;

    /* renamed from: super, reason: not valid java name */
    private boolean f8888super;

    /* renamed from: switch, reason: not valid java name */
    private Executor f8889switch;

    /* renamed from: synchronized, reason: not valid java name */
    private int f8890synchronized;
    private PointF t;

    /* renamed from: this, reason: not valid java name */
    private Bitmap f8891this;

    /* renamed from: throw, reason: not valid java name */
    private int f8892throw;

    /* renamed from: throws, reason: not valid java name */
    private boolean f8893throws;

    /* renamed from: transient, reason: not valid java name */
    private Float f8894transient;

    /* renamed from: try, reason: not valid java name */
    private final float[] f8895try;
    private PointF u;
    private Cnew v;

    /* renamed from: volatile, reason: not valid java name */
    private PointF f8896volatile;
    private boolean w;

    /* renamed from: while, reason: not valid java name */
    private float f8897while;
    private boolean x;
    private OnImageEventListener y;
    private OnStateChangedListener z;

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

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$break, reason: invalid class name */
    public static class Cbreak {

        /* renamed from: do, reason: not valid java name */
        private final PointF f8898do;

        /* renamed from: if, reason: not valid java name */
        private float f8899if;

        public /* synthetic */ Cbreak(float f, PointF pointF, Cdo cdo) {
            this(f, pointF);
        }

        private Cbreak(float f, PointF pointF) {
            this.f8899if = f;
            this.f8898do = pointF;
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$case, reason: invalid class name */
    public static class Ccase extends AsyncTask<Void, Void, Integer> {

        /* renamed from: case, reason: not valid java name */
        private Bitmap f8900case;

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<SubsamplingScaleImageViewDragClose> f8901do;

        /* renamed from: else, reason: not valid java name */
        private Exception f8902else;

        /* renamed from: for, reason: not valid java name */
        private final WeakReference<DecoderFactory<? extends ImageDecoder>> f8903for;

        /* renamed from: if, reason: not valid java name */
        private final WeakReference<Context> f8904if;

        /* renamed from: new, reason: not valid java name */
        private final Uri f8905new;

        /* renamed from: try, reason: not valid java name */
        private final boolean f8906try;

        public Ccase(SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, Context context, DecoderFactory<? extends ImageDecoder> decoderFactory, Uri uri, boolean z) {
            this.f8901do = new WeakReference<>(subsamplingScaleImageViewDragClose);
            this.f8904if = new WeakReference<>(context);
            this.f8903for = new WeakReference<>(decoderFactory);
            this.f8905new = uri;
            this.f8906try = z;
        }

        @Override // android.os.AsyncTask
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Integer doInBackground(Void... voidArr) {
            try {
                String string = this.f8905new.toString();
                Context context = this.f8904if.get();
                DecoderFactory<? extends ImageDecoder> decoderFactory = this.f8903for.get();
                SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8901do.get();
                if (context == null || decoderFactory == null || subsamplingScaleImageViewDragClose == null) {
                    return null;
                }
                subsamplingScaleImageViewDragClose.k("BitmapLoadTask.doInBackground", new Object[0]);
                this.f8900case = decoderFactory.make().decode(context, this.f8905new);
                return Integer.valueOf(subsamplingScaleImageViewDragClose.u(context, string));
            } catch (Exception e) {
                String unused = SubsamplingScaleImageViewDragClose.i0;
                this.f8902else = e;
                return null;
            } catch (OutOfMemoryError e2) {
                String unused2 = SubsamplingScaleImageViewDragClose.i0;
                this.f8902else = new RuntimeException(e2);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onPostExecute(Integer num) {
            SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8901do.get();
            if (subsamplingScaleImageViewDragClose != null) {
                Bitmap bitmap = this.f8900case;
                if (bitmap != null && num != null) {
                    if (this.f8906try) {
                        subsamplingScaleImageViewDragClose.M(bitmap);
                        return;
                    } else {
                        subsamplingScaleImageViewDragClose.L(bitmap, num.intValue(), false);
                        return;
                    }
                }
                if (this.f8902else == null || subsamplingScaleImageViewDragClose.y == null) {
                    return;
                }
                if (this.f8906try) {
                    subsamplingScaleImageViewDragClose.y.onPreviewLoadError(this.f8902else);
                } else {
                    subsamplingScaleImageViewDragClose.y.onImageLoadError(this.f8902else);
                }
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$catch, reason: invalid class name */
    public static class Ccatch {

        /* renamed from: case, reason: not valid java name */
        private Rect f8907case;

        /* renamed from: do, reason: not valid java name */
        private Rect f8908do;

        /* renamed from: else, reason: not valid java name */
        private Rect f8909else;

        /* renamed from: for, reason: not valid java name */
        private Bitmap f8910for;

        /* renamed from: if, reason: not valid java name */
        private int f8911if;

        /* renamed from: new, reason: not valid java name */
        private boolean f8912new;

        /* renamed from: try, reason: not valid java name */
        private boolean f8913try;

        private Ccatch() {
        }

        public /* synthetic */ Ccatch(Cdo cdo) {
            this();
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$class, reason: invalid class name */
    public static class Cclass extends AsyncTask<Void, Void, Bitmap> {

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<SubsamplingScaleImageViewDragClose> f8914do;

        /* renamed from: for, reason: not valid java name */
        private final WeakReference<Ccatch> f8915for;

        /* renamed from: if, reason: not valid java name */
        private final WeakReference<ImageRegionDecoder> f8916if;

        /* renamed from: new, reason: not valid java name */
        private Exception f8917new;

        public Cclass(SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, ImageRegionDecoder imageRegionDecoder, Ccatch ccatch) {
            this.f8914do = new WeakReference<>(subsamplingScaleImageViewDragClose);
            this.f8916if = new WeakReference<>(imageRegionDecoder);
            this.f8915for = new WeakReference<>(ccatch);
            ccatch.f8912new = true;
        }

        @Override // android.os.AsyncTask
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Bitmap doInBackground(Void... voidArr) {
            try {
                SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8914do.get();
                ImageRegionDecoder imageRegionDecoder = this.f8916if.get();
                Ccatch ccatch = this.f8915for.get();
                if (imageRegionDecoder == null || ccatch == null || subsamplingScaleImageViewDragClose == null || !imageRegionDecoder.isReady() || !ccatch.f8913try) {
                    if (ccatch == null) {
                        return null;
                    }
                    ccatch.f8912new = false;
                    return null;
                }
                subsamplingScaleImageViewDragClose.k("TileLoadTask.doInBackground, tile.sRect=%s, tile.sampleSize=%d", ccatch.f8908do, Integer.valueOf(ccatch.f8911if));
                subsamplingScaleImageViewDragClose.f8867do.readLock().lock();
                try {
                    if (!imageRegionDecoder.isReady()) {
                        ccatch.f8912new = false;
                        subsamplingScaleImageViewDragClose.f8867do.readLock().unlock();
                        return null;
                    }
                    subsamplingScaleImageViewDragClose.r(ccatch.f8908do, ccatch.f8909else);
                    if (subsamplingScaleImageViewDragClose.d != null) {
                        ccatch.f8909else.offset(subsamplingScaleImageViewDragClose.d.left, subsamplingScaleImageViewDragClose.d.top);
                    }
                    return imageRegionDecoder.decodeRegion(ccatch.f8909else, ccatch.f8911if);
                } finally {
                    subsamplingScaleImageViewDragClose.f8867do.readLock().unlock();
                }
            } catch (Exception e) {
                String unused = SubsamplingScaleImageViewDragClose.i0;
                this.f8917new = e;
                return null;
            } catch (OutOfMemoryError e2) {
                String unused2 = SubsamplingScaleImageViewDragClose.i0;
                this.f8917new = new RuntimeException(e2);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8914do.get();
            Ccatch ccatch = this.f8915for.get();
            if (subsamplingScaleImageViewDragClose == null || ccatch == null) {
                return;
            }
            if (bitmap != null) {
                ccatch.f8910for = bitmap;
                ccatch.f8912new = false;
                subsamplingScaleImageViewDragClose.O();
            } else {
                if (this.f8917new == null || subsamplingScaleImageViewDragClose.y == null) {
                    return;
                }
                subsamplingScaleImageViewDragClose.y.onTileLoadError(this.f8917new);
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$const, reason: invalid class name */
    public static class Cconst extends AsyncTask<Void, Void, int[]> {

        /* renamed from: case, reason: not valid java name */
        private Exception f8918case;

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<SubsamplingScaleImageViewDragClose> f8919do;

        /* renamed from: for, reason: not valid java name */
        private final WeakReference<DecoderFactory<? extends ImageRegionDecoder>> f8920for;

        /* renamed from: if, reason: not valid java name */
        private final WeakReference<Context> f8921if;

        /* renamed from: new, reason: not valid java name */
        private final Uri f8922new;

        /* renamed from: try, reason: not valid java name */
        private ImageRegionDecoder f8923try;

        public Cconst(SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, Context context, DecoderFactory<? extends ImageRegionDecoder> decoderFactory, Uri uri) {
            this.f8919do = new WeakReference<>(subsamplingScaleImageViewDragClose);
            this.f8921if = new WeakReference<>(context);
            this.f8920for = new WeakReference<>(decoderFactory);
            this.f8922new = uri;
        }

        @Override // android.os.AsyncTask
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int[] doInBackground(Void... voidArr) {
            try {
                String string = this.f8922new.toString();
                Context context = this.f8921if.get();
                DecoderFactory<? extends ImageRegionDecoder> decoderFactory = this.f8920for.get();
                SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8919do.get();
                if (context == null || decoderFactory == null || subsamplingScaleImageViewDragClose == null) {
                    return null;
                }
                subsamplingScaleImageViewDragClose.k("TilesInitTask.doInBackground", new Object[0]);
                ImageRegionDecoder imageRegionDecoderMake = decoderFactory.make();
                this.f8923try = imageRegionDecoderMake;
                Point pointInit = imageRegionDecoderMake.init(context, this.f8922new);
                int iWidth = pointInit.x;
                int iHeight = pointInit.y;
                int iU = subsamplingScaleImageViewDragClose.u(context, string);
                if (subsamplingScaleImageViewDragClose.d != null) {
                    subsamplingScaleImageViewDragClose.d.left = Math.max(0, subsamplingScaleImageViewDragClose.d.left);
                    subsamplingScaleImageViewDragClose.d.top = Math.max(0, subsamplingScaleImageViewDragClose.d.top);
                    subsamplingScaleImageViewDragClose.d.right = Math.min(iWidth, subsamplingScaleImageViewDragClose.d.right);
                    subsamplingScaleImageViewDragClose.d.bottom = Math.min(iHeight, subsamplingScaleImageViewDragClose.d.bottom);
                    iWidth = subsamplingScaleImageViewDragClose.d.width();
                    iHeight = subsamplingScaleImageViewDragClose.d.height();
                }
                return new int[]{iWidth, iHeight, iU};
            } catch (Exception e) {
                String unused = SubsamplingScaleImageViewDragClose.i0;
                this.f8918case = e;
                return null;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onPostExecute(int[] iArr) {
            SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8919do.get();
            if (subsamplingScaleImageViewDragClose != null) {
                ImageRegionDecoder imageRegionDecoder = this.f8923try;
                if (imageRegionDecoder != null && iArr != null && iArr.length == 3) {
                    subsamplingScaleImageViewDragClose.P(imageRegionDecoder, iArr[0], iArr[1], iArr[2]);
                } else {
                    if (this.f8918case == null || subsamplingScaleImageViewDragClose.y == null) {
                        return;
                    }
                    subsamplingScaleImageViewDragClose.y.onImageLoadError(this.f8918case);
                }
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$do, reason: invalid class name */
    public class Cdo implements Handler.Callback {
        public Cdo() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1 && SubsamplingScaleImageViewDragClose.this.A != null) {
                SubsamplingScaleImageViewDragClose.this.i = 0;
                SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = SubsamplingScaleImageViewDragClose.this;
                SubsamplingScaleImageViewDragClose.super.setOnLongClickListener(subsamplingScaleImageViewDragClose.A);
                SubsamplingScaleImageViewDragClose.this.performLongClick();
                SubsamplingScaleImageViewDragClose.super.setOnLongClickListener(null);
            }
            return true;
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$else, reason: invalid class name */
    public static class Celse implements OnAnimationEventListener {
        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnAnimationEventListener
        public void onComplete() {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnAnimationEventListener
        public void onInterruptedByNewAnim() {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnAnimationEventListener
        public void onInterruptedByUser() {
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$for, reason: invalid class name */
    public class Cfor extends GestureDetector.SimpleOnGestureListener {
        public Cfor() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            SubsamplingScaleImageViewDragClose.this.performClick();
            return true;
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$goto, reason: invalid class name */
    public static class Cgoto implements OnImageEventListener {
        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onImageLoadError(Exception exc) {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onImageLoaded() {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onPreviewLoadError(Exception exc) {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onPreviewReleased() {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onReady() {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onTileLoadError(Exception exc) {
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$if, reason: invalid class name */
    public class Cif extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f8926do;

        public Cif(Context context) {
            this.f8926do = context;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (!SubsamplingScaleImageViewDragClose.this.f8869extends || !SubsamplingScaleImageViewDragClose.this.w || SubsamplingScaleImageViewDragClose.this.f8896volatile == null) {
                return super.onDoubleTapEvent(motionEvent);
            }
            SubsamplingScaleImageViewDragClose.this.setGestureDetector(this.f8926do);
            if (!SubsamplingScaleImageViewDragClose.this.f8871finally) {
                SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = SubsamplingScaleImageViewDragClose.this;
                subsamplingScaleImageViewDragClose.m(subsamplingScaleImageViewDragClose.u0(new PointF(motionEvent.getX(), motionEvent.getY())), new PointF(motionEvent.getX(), motionEvent.getY()));
                return true;
            }
            SubsamplingScaleImageViewDragClose.this.o = new PointF(motionEvent.getX(), motionEvent.getY());
            SubsamplingScaleImageViewDragClose.this.f8878interface = new PointF(SubsamplingScaleImageViewDragClose.this.f8896volatile.x, SubsamplingScaleImageViewDragClose.this.f8896volatile.y);
            SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose2 = SubsamplingScaleImageViewDragClose.this;
            subsamplingScaleImageViewDragClose2.f8887strictfp = subsamplingScaleImageViewDragClose2.f8865continue;
            SubsamplingScaleImageViewDragClose.this.h = true;
            SubsamplingScaleImageViewDragClose.this.f = true;
            SubsamplingScaleImageViewDragClose.this.q = -1.0f;
            SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose3 = SubsamplingScaleImageViewDragClose.this;
            subsamplingScaleImageViewDragClose3.t = subsamplingScaleImageViewDragClose3.u0(subsamplingScaleImageViewDragClose3.o);
            SubsamplingScaleImageViewDragClose.this.u = new PointF(motionEvent.getX(), motionEvent.getY());
            SubsamplingScaleImageViewDragClose.this.s = new PointF(SubsamplingScaleImageViewDragClose.this.t.x, SubsamplingScaleImageViewDragClose.this.t.y);
            SubsamplingScaleImageViewDragClose.this.r = false;
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!SubsamplingScaleImageViewDragClose.this.f8866default || !SubsamplingScaleImageViewDragClose.this.w || SubsamplingScaleImageViewDragClose.this.f8896volatile == null || motionEvent == null || motionEvent2 == null || ((Math.abs(motionEvent.getX() - motionEvent2.getX()) <= 50.0f && Math.abs(motionEvent.getY() - motionEvent2.getY()) <= 50.0f) || ((Math.abs(f) <= 500.0f && Math.abs(f2) <= 500.0f) || SubsamplingScaleImageViewDragClose.this.f))) {
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }
            PointF pointF = new PointF(SubsamplingScaleImageViewDragClose.this.f8896volatile.x + (f * 0.25f), SubsamplingScaleImageViewDragClose.this.f8896volatile.y + (f2 * 0.25f));
            new Ctry(SubsamplingScaleImageViewDragClose.this, new PointF(((SubsamplingScaleImageViewDragClose.this.getWidth() / 2) - pointF.x) / SubsamplingScaleImageViewDragClose.this.f8865continue, ((SubsamplingScaleImageViewDragClose.this.getHeight() / 2) - pointF.y) / SubsamplingScaleImageViewDragClose.this.f8865continue), (Cdo) null).m10662try(1).m10657this(false).m10655goto(3).m10660for();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            SubsamplingScaleImageViewDragClose.this.performClick();
            return true;
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$this, reason: invalid class name */
    public static class Cthis implements OnStateChangedListener {
        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnStateChangedListener
        public void onCenterChanged(PointF pointF, int i) {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnStateChangedListener
        public void onScaleChanged(float f, int i) {
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$try, reason: invalid class name */
    public final class Ctry {

        /* renamed from: case, reason: not valid java name */
        private int f8942case;

        /* renamed from: do, reason: not valid java name */
        private final float f8943do;

        /* renamed from: else, reason: not valid java name */
        private boolean f8944else;

        /* renamed from: for, reason: not valid java name */
        private final PointF f8945for;

        /* renamed from: goto, reason: not valid java name */
        private boolean f8946goto;

        /* renamed from: if, reason: not valid java name */
        private final PointF f8947if;

        /* renamed from: new, reason: not valid java name */
        private long f8948new;

        /* renamed from: this, reason: not valid java name */
        private OnAnimationEventListener f8949this;

        /* renamed from: try, reason: not valid java name */
        private int f8950try;

        public /* synthetic */ Ctry(SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, float f, PointF pointF, PointF pointF2, Cdo cdo) {
            this(f, pointF, pointF2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        /* renamed from: goto, reason: not valid java name */
        public Ctry m10655goto(int i) {
            this.f8942case = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        /* renamed from: this, reason: not valid java name */
        public Ctry m10657this(boolean z) {
            this.f8946goto = z;
            return this;
        }

        @NonNull
        /* renamed from: case, reason: not valid java name */
        public Ctry m10658case(boolean z) {
            this.f8944else = z;
            return this;
        }

        @NonNull
        /* renamed from: else, reason: not valid java name */
        public Ctry m10659else(OnAnimationEventListener onAnimationEventListener) {
            this.f8949this = onAnimationEventListener;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public void m10660for() {
            PointF pointFH;
            if (SubsamplingScaleImageViewDragClose.this.v != null && SubsamplingScaleImageViewDragClose.this.v.f8932const != null) {
                try {
                    SubsamplingScaleImageViewDragClose.this.v.f8932const.onInterruptedByNewAnim();
                } catch (Exception unused) {
                    String unused2 = SubsamplingScaleImageViewDragClose.i0;
                }
            }
            int paddingLeft = SubsamplingScaleImageViewDragClose.this.getPaddingLeft() + (((SubsamplingScaleImageViewDragClose.this.getWidth() - SubsamplingScaleImageViewDragClose.this.getPaddingRight()) - SubsamplingScaleImageViewDragClose.this.getPaddingLeft()) / 2);
            int paddingTop = SubsamplingScaleImageViewDragClose.this.getPaddingTop() + (((SubsamplingScaleImageViewDragClose.this.getHeight() - SubsamplingScaleImageViewDragClose.this.getPaddingBottom()) - SubsamplingScaleImageViewDragClose.this.getPaddingTop()) / 2);
            float fI = SubsamplingScaleImageViewDragClose.this.I(this.f8943do);
            if (this.f8946goto) {
                SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = SubsamplingScaleImageViewDragClose.this;
                PointF pointF = this.f8947if;
                pointFH = subsamplingScaleImageViewDragClose.H(pointF.x, pointF.y, fI, new PointF());
            } else {
                pointFH = this.f8947if;
            }
            Cdo cdo = null;
            SubsamplingScaleImageViewDragClose.this.v = new Cnew(cdo);
            SubsamplingScaleImageViewDragClose.this.v.f8933do = SubsamplingScaleImageViewDragClose.this.f8865continue;
            SubsamplingScaleImageViewDragClose.this.v.f8937if = fI;
            SubsamplingScaleImageViewDragClose.this.v.f8931class = System.currentTimeMillis();
            SubsamplingScaleImageViewDragClose.this.v.f8940try = pointFH;
            SubsamplingScaleImageViewDragClose.this.v.f8935for = SubsamplingScaleImageViewDragClose.this.getCenter();
            SubsamplingScaleImageViewDragClose.this.v.f8938new = pointFH;
            SubsamplingScaleImageViewDragClose.this.v.f8929case = SubsamplingScaleImageViewDragClose.this.k0(pointFH);
            SubsamplingScaleImageViewDragClose.this.v.f8934else = new PointF(paddingLeft, paddingTop);
            SubsamplingScaleImageViewDragClose.this.v.f8936goto = this.f8948new;
            SubsamplingScaleImageViewDragClose.this.v.f8939this = this.f8944else;
            SubsamplingScaleImageViewDragClose.this.v.f8928break = this.f8950try;
            SubsamplingScaleImageViewDragClose.this.v.f8930catch = this.f8942case;
            SubsamplingScaleImageViewDragClose.this.v.f8931class = System.currentTimeMillis();
            SubsamplingScaleImageViewDragClose.this.v.f8932const = this.f8949this;
            PointF pointF2 = this.f8945for;
            if (pointF2 != null) {
                float f = pointF2.x - (SubsamplingScaleImageViewDragClose.this.v.f8935for.x * fI);
                float f2 = this.f8945for.y - (SubsamplingScaleImageViewDragClose.this.v.f8935for.y * fI);
                Cbreak cbreak = new Cbreak(fI, new PointF(f, f2), cdo);
                SubsamplingScaleImageViewDragClose.this.t(true, cbreak);
                SubsamplingScaleImageViewDragClose.this.v.f8934else = new PointF(this.f8945for.x + (cbreak.f8898do.x - f), this.f8945for.y + (cbreak.f8898do.y - f2));
            }
            SubsamplingScaleImageViewDragClose.this.invalidate();
        }

        @NonNull
        /* renamed from: new, reason: not valid java name */
        public Ctry m10661new(long j) {
            this.f8948new = j;
            return this;
        }

        @NonNull
        /* renamed from: try, reason: not valid java name */
        public Ctry m10662try(int i) {
            if (SubsamplingScaleImageViewDragClose.l0.contains(Integer.valueOf(i))) {
                this.f8950try = i;
                return this;
            }
            throw new IllegalArgumentException("Unknown easing type: " + i);
        }

        public /* synthetic */ Ctry(SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, float f, PointF pointF, Cdo cdo) {
            this(f, pointF);
        }

        public /* synthetic */ Ctry(SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, float f, Cdo cdo) {
            this(f);
        }

        public /* synthetic */ Ctry(SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, PointF pointF, Cdo cdo) {
            this(pointF);
        }

        private Ctry(PointF pointF) {
            this.f8948new = 500L;
            this.f8950try = 2;
            this.f8942case = 1;
            this.f8944else = true;
            this.f8946goto = true;
            this.f8943do = SubsamplingScaleImageViewDragClose.this.f8865continue;
            this.f8947if = pointF;
            this.f8945for = null;
        }

        private Ctry(float f) {
            this.f8948new = 500L;
            this.f8950try = 2;
            this.f8942case = 1;
            this.f8944else = true;
            this.f8946goto = true;
            this.f8943do = f;
            this.f8947if = SubsamplingScaleImageViewDragClose.this.getCenter();
            this.f8945for = null;
        }

        private Ctry(float f, PointF pointF) {
            this.f8948new = 500L;
            this.f8950try = 2;
            this.f8942case = 1;
            this.f8944else = true;
            this.f8946goto = true;
            this.f8943do = f;
            this.f8947if = pointF;
            this.f8945for = null;
        }

        private Ctry(float f, PointF pointF, PointF pointF2) {
            this.f8948new = 500L;
            this.f8950try = 2;
            this.f8942case = 1;
            this.f8944else = true;
            this.f8946goto = true;
            this.f8943do = f;
            this.f8947if = pointF;
            this.f8945for = pointF2;
        }
    }

    public SubsamplingScaleImageViewDragClose(Context context, AttributeSet attributeSet) {
        int resourceId;
        String string;
        super(context, attributeSet);
        this.f8867do = new ReentrantReadWriteLock(true);
        this.f8880new = new float[8];
        this.f8895try = new float[8];
        this.f8892throw = 0;
        this.f8897while = 2.0f;
        this.f8876import = -1;
        this.f8879native = 1;
        this.f8884public = 1;
        this.f8885return = Integer.MAX_VALUE;
        this.f8886static = Integer.MAX_VALUE;
        this.f8889switch = AsyncTask.THREAD_POOL_EXECUTOR;
        this.f8893throws = true;
        this.f8866default = true;
        this.f8869extends = true;
        this.f8871finally = true;
        this.f8881package = 1.0f;
        this.f8882private = 1;
        this.f8859abstract = 500;
        this.c = J();
        this.m = new CompatDecoderFactory(SkiaImageDecoder.class);
        this.n = new CompatDecoderFactory(SkiaImageRegionDecoder.class);
        this.f8861case = getResources().getDisplayMetrics().density;
        setMinimumDpi(160);
        setDoubleTapZoomDpi(160);
        setMinimumTileDpi(320);
        setGestureDetector(context);
        this.I = ViewConfiguration.get(context).getScaledPagingTouchSlop();
        this.f8872for = new Handler(new Cdo());
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.SubsamplingScaleImageView);
            int i = R.styleable.SubsamplingScaleImageView_assetName;
            if (typedArrayObtainStyledAttributes.hasValue(i) && (string = typedArrayObtainStyledAttributes.getString(i)) != null && string.length() > 0) {
                setImage(wl0.m9208do(string).m9222import());
            }
            int i2 = R.styleable.SubsamplingScaleImageView_src;
            if (typedArrayObtainStyledAttributes.hasValue(i2) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i2, 0)) > 0) {
                setImage(wl0.m9209final(resourceId).m9222import());
            }
            int i3 = R.styleable.SubsamplingScaleImageView_panEnabled;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                setPanEnabled(typedArrayObtainStyledAttributes.getBoolean(i3, true));
            }
            int i4 = R.styleable.SubsamplingScaleImageView_zoomEnabled;
            if (typedArrayObtainStyledAttributes.hasValue(i4)) {
                setZoomEnabled(typedArrayObtainStyledAttributes.getBoolean(i4, true));
            }
            int i5 = R.styleable.SubsamplingScaleImageView_quickScaleEnabled;
            if (typedArrayObtainStyledAttributes.hasValue(i5)) {
                setQuickScaleEnabled(typedArrayObtainStyledAttributes.getBoolean(i5, true));
            }
            int i6 = R.styleable.SubsamplingScaleImageView_tileBackgroundColor;
            if (typedArrayObtainStyledAttributes.hasValue(i6)) {
                setTileBackgroundColor(typedArrayObtainStyledAttributes.getColor(i6, Color.argb(0, 0, 0, 0)));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f8874if = TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics());
    }

    private boolean B() {
        boolean z = true;
        if (this.f8891this != null && !this.f8860break) {
            return true;
        }
        Map<Integer, List<Ccatch>> map = this.f8870final;
        if (map == null) {
            return false;
        }
        for (Map.Entry<Integer, List<Ccatch>> entry : map.entrySet()) {
            if (entry.getKey().intValue() == this.f8864const) {
                for (Ccatch ccatch : entry.getValue()) {
                    if (ccatch.f8912new || ccatch.f8910for == null) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public PointF H(float f, float f2, float f3, @NonNull PointF pointF) {
        PointF pointFQ0 = q0(f, f2, f3);
        pointF.set(((getPaddingLeft() + (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2)) - pointFQ0.x) / f3, ((getPaddingTop() + (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2)) - pointFQ0.y) / f3);
        return pointF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float I(float f) {
        return Math.min(this.f8897while, Math.max(J(), f));
    }

    private float J() {
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int i = this.f8884public;
        if (i == 2 || i == 4) {
            return Math.max((getWidth() - paddingLeft) / a0(), (getHeight() - paddingBottom) / Z());
        }
        if (i == 3) {
            float f = this.c;
            if (f > 0.0f) {
                return f;
            }
        }
        return Math.min((getWidth() - paddingLeft) / a0(), (getHeight() - paddingBottom) / Z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void L(Bitmap bitmap, int i, boolean z) {
        OnImageEventListener onImageEventListener;
        k("onImageLoaded", new Object[0]);
        int i2 = this.f8890synchronized;
        if (i2 > 0 && this.a > 0 && (i2 != bitmap.getWidth() || this.a != bitmap.getHeight())) {
            W(false);
        }
        Bitmap bitmap2 = this.f8891this;
        if (bitmap2 != null && !this.f8862catch) {
            bitmap2.recycle();
        }
        if (this.f8891this != null && this.f8862catch && (onImageEventListener = this.y) != null) {
            onImageEventListener.onPreviewReleased();
        }
        this.f8860break = false;
        this.f8862catch = z;
        this.f8891this = bitmap;
        this.f8890synchronized = bitmap.getWidth();
        this.a = bitmap.getHeight();
        this.b = i;
        boolean zI = i();
        boolean zH = h();
        if (zI || zH) {
            invalidate();
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void M(Bitmap bitmap) {
        k("onPreviewLoaded", new Object[0]);
        if (this.f8891this == null && !this.x) {
            Rect rect = this.e;
            if (rect != null) {
                this.f8891this = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), this.e.height());
            } else {
                this.f8891this = bitmap;
            }
            this.f8860break = true;
            if (i()) {
                invalidate();
                requestLayout();
            }
            return;
        }
        bitmap.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void O() {
        Bitmap bitmap;
        k("onTileLoaded", new Object[0]);
        i();
        h();
        if (B() && (bitmap = this.f8891this) != null) {
            if (!this.f8862catch) {
                bitmap.recycle();
            }
            this.f8891this = null;
            OnImageEventListener onImageEventListener = this.y;
            if (onImageEventListener != null && this.f8862catch) {
                onImageEventListener.onPreviewReleased();
            }
            this.f8860break = false;
            this.f8862catch = false;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void P(ImageRegionDecoder imageRegionDecoder, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        k("onTilesInited sWidth=%d, sHeight=%d, sOrientation=%d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(this.f8892throw));
        int i7 = this.f8890synchronized;
        if (i7 > 0 && (i6 = this.a) > 0 && (i7 != i || i6 != i2)) {
            W(false);
            Bitmap bitmap = this.f8891this;
            if (bitmap != null) {
                if (!this.f8862catch) {
                    bitmap.recycle();
                }
                this.f8891this = null;
                OnImageEventListener onImageEventListener = this.y;
                if (onImageEventListener != null && this.f8862catch) {
                    onImageEventListener.onPreviewReleased();
                }
                this.f8860break = false;
                this.f8862catch = false;
            }
        }
        this.l = imageRegionDecoder;
        this.f8890synchronized = i;
        this.a = i2;
        this.b = i3;
        i();
        if (!h() && (i4 = this.f8885return) > 0 && i4 != Integer.MAX_VALUE && (i5 = this.f8886static) > 0 && i5 != Integer.MAX_VALUE && getWidth() > 0 && getHeight() > 0) {
            y(new Point(this.f8885return, this.f8886static));
        }
        invalidate();
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
    
        if (r1 != 262) goto L139;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0282  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean Q(@NonNull MotionEvent motionEvent) {
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
                } else if (this.i <= 0) {
                    z2 = false;
                    if (z2) {
                        this.f8872for.removeMessages(1);
                        invalidate();
                        return true;
                    }
                } else {
                    if (pointerCount >= 2) {
                        float fL = l(motionEvent.getX(0), motionEvent.getX(1), motionEvent.getY(0), motionEvent.getY(1));
                        float x = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
                        float y = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
                        if (this.f8869extends) {
                            PointF pointF = this.o;
                            if (l(pointF.x, x, pointF.y, y) > 5.0f || Math.abs(fL - this.p) > 5.0f || this.g) {
                                this.f = true;
                                this.g = true;
                                double d = this.f8865continue;
                                float fMin = Math.min(this.f8897while, (fL / this.p) * this.f8887strictfp);
                                this.f8865continue = fMin;
                                if (fMin <= J()) {
                                    this.p = fL;
                                    this.f8887strictfp = J();
                                    this.o.set(x, y);
                                    this.f8878interface.set(this.f8896volatile);
                                } else if (this.f8866default) {
                                    PointF pointF2 = this.o;
                                    float f = pointF2.x;
                                    PointF pointF3 = this.f8878interface;
                                    float f2 = f - pointF3.x;
                                    float f3 = pointF2.y - pointF3.y;
                                    float f4 = this.f8865continue;
                                    float f5 = this.f8887strictfp;
                                    float f6 = f2 * (f4 / f5);
                                    float f7 = f3 * (f4 / f5);
                                    PointF pointF4 = this.f8896volatile;
                                    pointF4.x = x - f6;
                                    pointF4.y = y - f7;
                                    double dZ = Z();
                                    Double.isNaN(d);
                                    Double.isNaN(dZ);
                                    if (dZ * d >= getHeight() || this.f8865continue * Z() < getHeight()) {
                                        double dA0 = a0();
                                        Double.isNaN(d);
                                        Double.isNaN(dA0);
                                        if (d * dA0 < getWidth() && this.f8865continue * a0() >= getWidth()) {
                                            s(true);
                                            this.o.set(x, y);
                                            this.f8878interface.set(this.f8896volatile);
                                            this.f8887strictfp = this.f8865continue;
                                            this.p = fL;
                                        }
                                    }
                                } else if (this.f8877instanceof != null) {
                                    this.f8896volatile.x = (getWidth() / 2) - (this.f8865continue * this.f8877instanceof.x);
                                    this.f8896volatile.y = (getHeight() / 2) - (this.f8865continue * this.f8877instanceof.y);
                                } else {
                                    this.f8896volatile.x = (getWidth() / 2) - (this.f8865continue * (a0() / 2));
                                    this.f8896volatile.y = (getHeight() / 2) - (this.f8865continue * (Z() / 2));
                                }
                                s(true);
                                U(this.f8893throws);
                                z2 = true;
                            }
                        }
                        z2 = false;
                    } else {
                        if (this.h) {
                            float fAbs = (Math.abs(this.u.y - motionEvent.getY()) * 2.0f) + this.f8874if;
                            if (this.q == -1.0f) {
                                this.q = fAbs;
                            }
                            float y2 = motionEvent.getY();
                            PointF pointF5 = this.s;
                            boolean z3 = y2 > pointF5.y;
                            pointF5.set(0.0f, motionEvent.getY());
                            float fAbs2 = Math.abs(1.0f - (fAbs / this.q)) * 0.5f;
                            if (fAbs2 > 0.03f || this.r) {
                                this.r = true;
                                float f8 = this.q > 0.0f ? z3 ? fAbs2 + 1.0f : 1.0f - fAbs2 : 1.0f;
                                double d2 = this.f8865continue;
                                float fMax = Math.max(J(), Math.min(this.f8897while, this.f8865continue * f8));
                                this.f8865continue = fMax;
                                if (this.f8866default) {
                                    PointF pointF6 = this.o;
                                    float f9 = pointF6.x;
                                    PointF pointF7 = this.f8878interface;
                                    float f10 = f9 - pointF7.x;
                                    float f11 = pointF6.y;
                                    float f12 = f11 - pointF7.y;
                                    float f13 = this.f8887strictfp;
                                    float f14 = f10 * (fMax / f13);
                                    float f15 = f12 * (fMax / f13);
                                    PointF pointF8 = this.f8896volatile;
                                    pointF8.x = f9 - f14;
                                    pointF8.y = f11 - f15;
                                    double dZ2 = Z();
                                    Double.isNaN(d2);
                                    Double.isNaN(dZ2);
                                    if (dZ2 * d2 >= getHeight() || this.f8865continue * Z() < getHeight()) {
                                        double dA02 = a0();
                                        Double.isNaN(d2);
                                        Double.isNaN(dA02);
                                        if (d2 * dA02 < getWidth() && this.f8865continue * a0() >= getWidth()) {
                                            s(true);
                                            this.o.set(k0(this.t));
                                            this.f8878interface.set(this.f8896volatile);
                                            this.f8887strictfp = this.f8865continue;
                                            fAbs = 0.0f;
                                        }
                                    }
                                } else if (this.f8877instanceof != null) {
                                    this.f8896volatile.x = (getWidth() / 2) - (this.f8865continue * this.f8877instanceof.x);
                                    this.f8896volatile.y = (getHeight() / 2) - (this.f8865continue * this.f8877instanceof.y);
                                } else {
                                    this.f8896volatile.x = (getWidth() / 2) - (this.f8865continue * (a0() / 2));
                                    this.f8896volatile.y = (getHeight() / 2) - (this.f8865continue * (Z() / 2));
                                }
                            }
                            this.q = fAbs;
                            s(true);
                            U(this.f8893throws);
                        } else {
                            if (!this.f) {
                                float fAbs3 = Math.abs(motionEvent.getX() - this.o.x);
                                float fAbs4 = Math.abs(motionEvent.getY() - this.o.y);
                                float f16 = this.f8861case * 5.0f;
                                if (fAbs3 > f16 || fAbs4 > f16 || this.g) {
                                    this.f8896volatile.x = this.f8878interface.x + (motionEvent.getX() - this.o.x);
                                    this.f8896volatile.y = this.f8878interface.y + (motionEvent.getY() - this.o.y);
                                    PointF pointF9 = this.f8896volatile;
                                    float f17 = pointF9.x;
                                    float f18 = pointF9.y;
                                    s(true);
                                    PointF pointF10 = this.f8896volatile;
                                    boolean z4 = f17 != pointF10.x;
                                    this.f8868else = z4;
                                    float f19 = pointF10.y;
                                    boolean z5 = f18 != f19;
                                    this.f8873goto = z5;
                                    boolean z6 = z4 && fAbs3 > fAbs4 && !this.g;
                                    boolean z7 = z5 && fAbs4 > fAbs3 && !this.g;
                                    boolean z8 = f18 == f19 && fAbs4 > 3.0f * f16;
                                    if (!z6 && !z7 && (!z4 || !z5 || z8 || this.g)) {
                                        this.g = true;
                                    } else if (fAbs3 > f16 || fAbs4 > f16) {
                                        this.i = 0;
                                        this.f8872for.removeMessages(1);
                                        V(false);
                                    }
                                    if (!this.f8866default) {
                                        PointF pointF11 = this.f8896volatile;
                                        PointF pointF12 = this.f8878interface;
                                        pointF11.x = pointF12.x;
                                        pointF11.y = pointF12.y;
                                        V(false);
                                    }
                                    U(this.f8893throws);
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
            this.f8872for.removeMessages(1);
            if (this.h) {
                this.h = false;
                if (!this.r) {
                    m(this.t, this.o);
                }
            }
            if (this.i <= 0 || !((z = this.f) || this.g)) {
                if (pointerCount == 1) {
                    this.f = false;
                    this.g = false;
                    this.i = 0;
                }
                return true;
            }
            if (z && pointerCount == 2) {
                this.g = true;
                PointF pointF13 = this.f8878interface;
                PointF pointF14 = this.f8896volatile;
                pointF13.set(pointF14.x, pointF14.y);
                if (motionEvent.getActionIndex() == 1) {
                    this.o.set(motionEvent.getX(0), motionEvent.getY(0));
                } else {
                    this.o.set(motionEvent.getX(1), motionEvent.getY(1));
                }
            }
            if (pointerCount < 3) {
                this.f = false;
            }
            if (pointerCount < 2) {
                this.g = false;
                this.i = 0;
            }
            U(true);
            return true;
        }
        this.v = null;
        V(true);
        this.i = Math.max(this.i, pointerCount);
        if (pointerCount >= 2) {
            if (this.f8869extends) {
                float fL2 = l(motionEvent.getX(0), motionEvent.getX(1), motionEvent.getY(0), motionEvent.getY(1));
                this.f8887strictfp = this.f8865continue;
                this.p = fL2;
                PointF pointF15 = this.f8878interface;
                PointF pointF16 = this.f8896volatile;
                pointF15.set(pointF16.x, pointF16.y);
                this.o.set((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f, (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f);
            } else {
                this.i = 0;
            }
            this.f8872for.removeMessages(1);
        } else if (!this.h) {
            PointF pointF17 = this.f8878interface;
            PointF pointF18 = this.f8896volatile;
            pointF17.set(pointF18.x, pointF18.y);
            this.o.set(motionEvent.getX(), motionEvent.getY());
            this.f8872for.sendEmptyMessageDelayed(1, 600L);
        }
        return true;
    }

    private void R() {
        Float f;
        if (getWidth() == 0 || getHeight() == 0 || this.f8890synchronized <= 0 || this.a <= 0) {
            return;
        }
        if (this.f8875implements != null && (f = this.f8894transient) != null) {
            this.f8865continue = f.floatValue();
            if (this.f8896volatile == null) {
                this.f8896volatile = new PointF();
            }
            this.f8896volatile.x = (getWidth() / 2) - (this.f8865continue * this.f8875implements.x);
            this.f8896volatile.y = (getHeight() / 2) - (this.f8865continue * this.f8875implements.y);
            this.f8875implements = null;
            this.f8894transient = null;
            s(true);
            U(true);
        }
        s(false);
    }

    private int S(int i) {
        return (int) (this.f8861case * i);
    }

    private void U(boolean z) {
        if (this.l == null || this.f8870final == null) {
            return;
        }
        int iMin = Math.min(this.f8864const, g(this.f8865continue));
        Iterator<Map.Entry<Integer, List<Ccatch>>> it = this.f8870final.entrySet().iterator();
        while (it.hasNext()) {
            for (Ccatch ccatch : it.next().getValue()) {
                if (ccatch.f8911if < iMin || (ccatch.f8911if > iMin && ccatch.f8911if != this.f8864const)) {
                    ccatch.f8913try = false;
                    if (ccatch.f8910for != null) {
                        ccatch.f8910for.recycle();
                        ccatch.f8910for = null;
                    }
                }
                if (ccatch.f8911if == iMin) {
                    if (p0(ccatch)) {
                        ccatch.f8913try = true;
                        if (!ccatch.f8912new && ccatch.f8910for == null && z) {
                            q(new Cclass(this, this.l, ccatch));
                        }
                    } else if (ccatch.f8911if != this.f8864const) {
                        ccatch.f8913try = false;
                        if (ccatch.f8910for != null) {
                            ccatch.f8910for.recycle();
                            ccatch.f8910for = null;
                        }
                    }
                } else if (ccatch.f8911if == this.f8864const) {
                    ccatch.f8913try = true;
                }
            }
        }
    }

    private void V(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private void W(boolean z) {
        OnImageEventListener onImageEventListener;
        k("reset newImage=" + z, new Object[0]);
        this.f8865continue = 0.0f;
        this.f8887strictfp = 0.0f;
        this.f8896volatile = null;
        this.f8878interface = null;
        this.f8883protected = null;
        this.f8894transient = Float.valueOf(0.0f);
        this.f8875implements = null;
        this.f8877instanceof = null;
        this.f = false;
        this.g = false;
        this.h = false;
        this.i = 0;
        this.f8864const = 0;
        this.o = null;
        this.p = 0.0f;
        this.q = 0.0f;
        this.r = false;
        this.t = null;
        this.s = null;
        this.u = null;
        this.v = null;
        this.F = null;
        this.G = null;
        this.H = null;
        if (z) {
            this.f8863class = null;
            this.f8867do.writeLock().lock();
            try {
                ImageRegionDecoder imageRegionDecoder = this.l;
                if (imageRegionDecoder != null) {
                    imageRegionDecoder.recycle();
                    this.l = null;
                }
                this.f8867do.writeLock().unlock();
                Bitmap bitmap = this.f8891this;
                if (bitmap != null && !this.f8862catch) {
                    bitmap.recycle();
                }
                if (this.f8891this != null && this.f8862catch && (onImageEventListener = this.y) != null) {
                    onImageEventListener.onPreviewReleased();
                }
                this.f8890synchronized = 0;
                this.a = 0;
                this.b = 0;
                this.d = null;
                this.e = null;
                this.w = false;
                this.x = false;
                this.f8891this = null;
                this.f8860break = false;
                this.f8862catch = false;
            } catch (Throwable th) {
                this.f8867do.writeLock().unlock();
                throw th;
            }
        }
        Map<Integer, List<Ccatch>> map = this.f8870final;
        if (map != null) {
            Iterator<Map.Entry<Integer, List<Ccatch>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                for (Ccatch ccatch : it.next().getValue()) {
                    ccatch.f8913try = false;
                    if (ccatch.f8910for != null) {
                        ccatch.f8910for.recycle();
                        ccatch.f8910for = null;
                    }
                }
            }
            this.f8870final = null;
        }
        setGestureDetector(getContext());
    }

    private void Y(ImageViewState imageViewState) {
        if (imageViewState == null || !j0.contains(Integer.valueOf(imageViewState.getOrientation()))) {
            return;
        }
        this.f8892throw = imageViewState.getOrientation();
        this.f8894transient = Float.valueOf(imageViewState.getScale());
        this.f8875implements = imageViewState.getCenter();
        invalidate();
    }

    private int Z() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.f8890synchronized : this.a;
    }

    private int a0() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.a : this.f8890synchronized;
    }

    private void b0(float f, PointF pointF, int i) {
        OnStateChangedListener onStateChangedListener = this.z;
        if (onStateChangedListener != null) {
            float f2 = this.f8865continue;
            if (f2 != f) {
                onStateChangedListener.onScaleChanged(f2, i);
            }
        }
        if (this.z == null || this.f8896volatile.equals(pointF)) {
            return;
        }
        this.z.onCenterChanged(getCenter(), i);
    }

    private void f0(float[] fArr, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
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
        if (this.f8876import > 0) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            f *= this.f8876import / ((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f);
        }
        int iA0 = (int) (a0() * f);
        int iZ = (int) (Z() * f);
        if (iA0 == 0 || iZ == 0) {
            return 32;
        }
        int i = 1;
        if (Z() > iZ || a0() > iA0) {
            iRound = Math.round(Z() / iZ);
            int iRound2 = Math.round(a0() / iA0);
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

    public static Bitmap.Config getPreferredBitmapConfig() {
        return p0;
    }

    @AnyThread
    private int getRequiredRotation() {
        int i = this.f8892throw;
        return i == -1 ? this.b : i;
    }

    private boolean h() {
        boolean zB = B();
        if (!this.x && zB) {
            R();
            this.x = true;
            K();
            OnImageEventListener onImageEventListener = this.y;
            if (onImageEventListener != null) {
                onImageEventListener.onImageLoaded();
            }
        }
        return zB;
    }

    private boolean i() {
        boolean z = getWidth() > 0 && getHeight() > 0 && this.f8890synchronized > 0 && this.a > 0 && (this.f8891this != null || B());
        if (!this.w && z) {
            R();
            this.w = true;
            N();
            OnImageEventListener onImageEventListener = this.y;
            if (onImageEventListener != null) {
                onImageEventListener.onReady();
            }
        }
        return z;
    }

    private void j() {
        if (this.B == null) {
            Paint paint = new Paint();
            this.B = paint;
            paint.setAntiAlias(true);
            this.B.setFilterBitmap(true);
            this.B.setDither(true);
        }
        if ((this.C == null || this.D == null) && this.f8888super) {
            Paint paint2 = new Paint();
            this.C = paint2;
            paint2.setTextSize(S(12));
            this.C.setColor(-65281);
            this.C.setStyle(Paint.Style.FILL);
            Paint paint3 = new Paint();
            this.D = paint3;
            paint3.setColor(-65281);
            this.D.setStyle(Paint.Style.STROKE);
            this.D.setStrokeWidth(S(1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @AnyThread
    public void k(String str, Object... objArr) {
        if (this.f8888super) {
            String.format(str, objArr);
        }
    }

    private float l(float f, float f2, float f3, float f4) {
        float f5 = f - f2;
        float f6 = f3 - f4;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(PointF pointF, PointF pointF2) {
        if (!this.f8866default) {
            PointF pointF3 = this.f8877instanceof;
            if (pointF3 != null) {
                pointF.x = pointF3.x;
                pointF.y = pointF3.y;
            } else {
                pointF.x = a0() / 2;
                pointF.y = Z() / 2;
            }
        }
        float fMin = Math.min(this.f8897while, this.f8881package);
        float f = this.f8865continue;
        double d = f;
        double d2 = fMin;
        Double.isNaN(d2);
        boolean z = d <= d2 * 0.9d || f == this.c;
        if (!z) {
            fMin = J();
        }
        float f2 = fMin;
        int i = this.f8882private;
        if (i == 3) {
            h0(f2, pointF);
        } else if (i == 2 || !z || !this.f8866default) {
            new Ctry(this, f2, pointF, (Cdo) null).m10658case(false).m10661new(this.f8859abstract).m10655goto(4).m10660for();
        } else if (i == 1) {
            new Ctry(this, f2, pointF, pointF2, null).m10658case(false).m10661new(this.f8859abstract).m10655goto(4).m10660for();
        }
        invalidate();
    }

    private void m0(@NonNull Rect rect, @NonNull Rect rect2) {
        rect2.set((int) n0(rect.left), (int) o0(rect.top), (int) n0(rect.right), (int) o0(rect.bottom));
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

    private float n0(float f) {
        PointF pointF = this.f8896volatile;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f * this.f8865continue) + pointF.x;
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

    private float o0(float f) {
        PointF pointF = this.f8896volatile;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f * this.f8865continue) + pointF.y;
    }

    private float p(long j, float f, float f2, long j2) {
        float f3 = j / j2;
        return ((-f2) * f3 * (f3 - 2.0f)) + f;
    }

    private boolean p0(Ccatch ccatch) {
        return w0(0.0f) <= ((float) ccatch.f8908do.right) && ((float) ccatch.f8908do.left) <= w0((float) getWidth()) && x0(0.0f) <= ((float) ccatch.f8908do.bottom) && ((float) ccatch.f8908do.top) <= x0((float) getHeight());
    }

    private void q(AsyncTask<Void, Void, ?> asyncTask) {
        asyncTask.executeOnExecutor(this.f8889switch, new Void[0]);
    }

    @NonNull
    private PointF q0(float f, float f2, float f3) {
        int paddingLeft = getPaddingLeft() + (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2);
        int paddingTop = getPaddingTop() + (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2);
        if (this.F == null) {
            this.F = new Cbreak(0.0f, new PointF(0.0f, 0.0f), null);
        }
        this.F.f8899if = f3;
        this.F.f8898do.set(paddingLeft - (f * f3), paddingTop - (f2 * f3));
        t(true, this.F);
        return this.F.f8898do;
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
            int i2 = this.a;
            rect2.set(i, i2 - rect.right, rect.bottom, i2 - rect.left);
        } else if (getRequiredRotation() != 180) {
            int i3 = this.f8890synchronized;
            rect2.set(i3 - rect.bottom, rect.left, i3 - rect.top, rect.right);
        } else {
            int i4 = this.f8890synchronized;
            int i5 = i4 - rect.right;
            int i6 = this.a;
            rect2.set(i5, i6 - rect.bottom, i4 - rect.left, i6 - rect.top);
        }
    }

    private void s(boolean z) {
        boolean z2;
        float f = 0.0f;
        if (this.f8896volatile == null) {
            z2 = true;
            this.f8896volatile = new PointF(0.0f, 0.0f);
        } else {
            z2 = false;
        }
        if (this.F == null) {
            this.F = new Cbreak(f, new PointF(0.0f, 0.0f), null);
        }
        this.F.f8899if = this.f8865continue;
        this.F.f8898do.set(this.f8896volatile);
        t(z, this.F);
        this.f8865continue = this.F.f8899if;
        this.f8896volatile.set(this.F.f8898do);
        if (!z2 || this.f8884public == 4) {
            return;
        }
        this.f8896volatile.set(q0(a0() / 2, Z() / 2, this.f8865continue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGestureDetector(Context context) {
        this.j = new GestureDetector(context, new Cif(context));
        this.k = new GestureDetector(context, new Cfor());
    }

    public static void setPreferredBitmapConfig(Bitmap.Config config) {
        p0 = config;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(boolean z, Cbreak cbreak) {
        float fMax;
        int iMax;
        float fMax2;
        if (this.f8879native == 2 && F()) {
            z = false;
        }
        PointF pointF = cbreak.f8898do;
        float fI = I(cbreak.f8899if);
        float fA0 = a0() * fI;
        float fZ = Z() * fI;
        if (this.f8879native == 3 && F()) {
            pointF.x = Math.max(pointF.x, (getWidth() / 2) - fA0);
            pointF.y = Math.max(pointF.y, (getHeight() / 2) - fZ);
        } else if (z) {
            pointF.x = Math.max(pointF.x, getWidth() - fA0);
            pointF.y = Math.max(pointF.y, getHeight() - fZ);
        } else {
            pointF.x = Math.max(pointF.x, -fA0);
            pointF.y = Math.max(pointF.y, -fZ);
        }
        float paddingLeft = (getPaddingLeft() > 0 || getPaddingRight() > 0) ? getPaddingLeft() / (getPaddingLeft() + getPaddingRight()) : 0.5f;
        float paddingTop = (getPaddingTop() > 0 || getPaddingBottom() > 0) ? getPaddingTop() / (getPaddingTop() + getPaddingBottom()) : 0.5f;
        if (this.f8879native == 3 && F()) {
            fMax = Math.max(0, getWidth() / 2);
            iMax = Math.max(0, getHeight() / 2);
        } else {
            if (z) {
                fMax = Math.max(0.0f, (getWidth() - fA0) * paddingLeft);
                fMax2 = Math.max(0.0f, (getHeight() - fZ) * paddingTop);
                pointF.x = Math.min(pointF.x, fMax);
                pointF.y = Math.min(pointF.y, fMax2);
                cbreak.f8899if = fI;
            }
            fMax = Math.max(0, getWidth());
            iMax = Math.max(0, getHeight());
        }
        fMax2 = iMax;
        pointF.x = Math.min(pointF.x, fMax);
        pointF.y = Math.min(pointF.y, fMax2);
        cbreak.f8899if = fI;
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
                int attributeInt = new ExifInterface(str.substring(7)).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
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
                if (!j0.contains(Integer.valueOf(i2)) || i2 == -1) {
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

    @NonNull
    private Point v(Canvas canvas) {
        return new Point(Math.min(canvas.getMaximumBitmapWidth(), this.f8885return), Math.min(canvas.getMaximumBitmapHeight(), this.f8886static));
    }

    private float w0(float f) {
        PointF pointF = this.f8896volatile;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f - pointF.x) / this.f8865continue;
    }

    private float x0(float f) {
        PointF pointF = this.f8896volatile;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f - pointF.y) / this.f8865continue;
    }

    private synchronized void y(@NonNull Point point) {
        k("initialiseBaseLayer maxTileDimensions=%dx%d", Integer.valueOf(point.x), Integer.valueOf(point.y));
        Cbreak cbreak = new Cbreak(0.0f, new PointF(0.0f, 0.0f), null);
        this.F = cbreak;
        t(true, cbreak);
        int iG = g(this.F.f8899if);
        this.f8864const = iG;
        if (iG > 1) {
            this.f8864const = iG / 2;
        }
        if (this.f8864const != 1 || this.d != null || a0() >= point.x || Z() >= point.y) {
            z(point);
            Iterator<Ccatch> it = this.f8870final.get(Integer.valueOf(this.f8864const)).iterator();
            while (it.hasNext()) {
                q(new Cclass(this, this.l, it.next()));
            }
            U(true);
        } else {
            this.l.recycle();
            this.l = null;
            q(new Ccase(this, getContext(), this.m, this.f8863class, false));
        }
    }

    private void z(Point point) {
        int i = 1;
        k("initialiseTileMap maxTileDimensions=%dx%d", Integer.valueOf(point.x), Integer.valueOf(point.y));
        this.f8870final = new LinkedHashMap();
        int i2 = this.f8864const;
        int i3 = 1;
        int i4 = 1;
        while (true) {
            int iA0 = a0() / i3;
            int iZ = Z() / i4;
            int i5 = iA0 / i2;
            int i6 = iZ / i2;
            while (true) {
                if (i5 + i3 + i <= point.x) {
                    double d = i5;
                    double width = getWidth();
                    Double.isNaN(width);
                    if (d <= width * 1.25d || i2 >= this.f8864const) {
                        break;
                    }
                }
                i3++;
                iA0 = a0() / i3;
                i5 = iA0 / i2;
                i = 1;
            }
            while (true) {
                if (i6 + i4 + i <= point.y) {
                    double d2 = i6;
                    double height = getHeight();
                    Double.isNaN(height);
                    if (d2 <= height * 1.25d || i2 >= this.f8864const) {
                        break;
                    }
                }
                i4++;
                iZ = Z() / i4;
                i6 = iZ / i2;
                i = 1;
            }
            ArrayList arrayList = new ArrayList(i3 * i4);
            int i7 = 0;
            while (i7 < i3) {
                int i8 = 0;
                while (i8 < i4) {
                    Ccatch ccatch = new Ccatch(null);
                    ccatch.f8911if = i2;
                    ccatch.f8913try = i2 == this.f8864const;
                    ccatch.f8908do = new Rect(i7 * iA0, i8 * iZ, i7 == i3 + (-1) ? a0() : (i7 + 1) * iA0, i8 == i4 + (-1) ? Z() : (i8 + 1) * iZ);
                    ccatch.f8907case = new Rect(0, 0, 0, 0);
                    ccatch.f8909else = new Rect(ccatch.f8908do);
                    arrayList.add(ccatch);
                    i8++;
                }
                i7++;
            }
            this.f8870final.put(Integer.valueOf(i2), arrayList);
            if (i2 == 1) {
                return;
            }
            i2 /= 2;
            i = 1;
        }
    }

    public boolean A() {
        return this.f8873goto;
    }

    public final boolean C() {
        return this.x;
    }

    public final boolean D() {
        return this.f8866default;
    }

    public final boolean E() {
        return this.f8871finally;
    }

    public final boolean F() {
        return this.w;
    }

    public final boolean G() {
        return this.f8869extends;
    }

    public void K() {
    }

    public void N() {
    }

    public void T() {
        W(true);
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
    }

    public final void X() {
        this.v = null;
        this.f8894transient = Float.valueOf(I(0.0f));
        if (F()) {
            this.f8875implements = new PointF(a0() / 2, Z() / 2);
        } else {
            this.f8875implements = new PointF(0.0f, 0.0f);
        }
        invalidate();
    }

    public final void c0(@NonNull wl0 wl0Var, wl0 wl0Var2) {
        d0(wl0Var, wl0Var2, null);
    }

    @Nullable
    public Ctry d(PointF pointF) {
        Cdo cdo = null;
        if (F()) {
            return new Ctry(this, pointF, cdo);
        }
        return null;
    }

    public final void d0(@NonNull wl0 wl0Var, wl0 wl0Var2, ImageViewState imageViewState) {
        Objects.requireNonNull(wl0Var, "imageSource must not be null");
        W(true);
        if (imageViewState != null) {
            Y(imageViewState);
        }
        if (wl0Var2 != null) {
            if (wl0Var.m9226try() != null) {
                throw new IllegalArgumentException("Preview image cannot be used when a bitmap is provided for the main image");
            }
            if (wl0Var.m9224this() <= 0 || wl0Var.m9220else() <= 0) {
                throw new IllegalArgumentException("Preview image cannot be used unless dimensions are provided for the main image");
            }
            this.f8890synchronized = wl0Var.m9224this();
            this.a = wl0Var.m9220else();
            this.e = wl0Var2.m9221goto();
            if (wl0Var2.m9226try() != null) {
                this.f8862catch = wl0Var2.m9218class();
                M(wl0Var2.m9226try());
            } else {
                Uri uriM9217catch = wl0Var2.m9217catch();
                if (uriM9217catch == null && wl0Var2.m9216case() != null) {
                    uriM9217catch = Uri.parse("android.resource://" + getContext().getPackageName() + on0.f4694final + wl0Var2.m9216case());
                }
                q(new Ccase(this, getContext(), this.m, uriM9217catch, true));
            }
        }
        if (wl0Var.m9226try() != null && wl0Var.m9221goto() != null) {
            L(Bitmap.createBitmap(wl0Var.m9226try(), wl0Var.m9221goto().left, wl0Var.m9221goto().top, wl0Var.m9221goto().width(), wl0Var.m9221goto().height()), 0, false);
            return;
        }
        if (wl0Var.m9226try() != null) {
            L(wl0Var.m9226try(), 0, wl0Var.m9218class());
            return;
        }
        this.d = wl0Var.m9221goto();
        Uri uriM9217catch2 = wl0Var.m9217catch();
        this.f8863class = uriM9217catch2;
        if (uriM9217catch2 == null && wl0Var.m9216case() != null) {
            this.f8863class = Uri.parse("android.resource://" + getContext().getPackageName() + on0.f4694final + wl0Var.m9216case());
        }
        if (wl0Var.m9215break() || this.d != null) {
            q(new Cconst(this, getContext(), this.n, this.f8863class));
        } else {
            q(new Ccase(this, getContext(), this.m, this.f8863class, false));
        }
    }

    @Nullable
    public Ctry e(float f) {
        Cdo cdo = null;
        if (F()) {
            return new Ctry(this, f, cdo);
        }
        return null;
    }

    public final void e0(@NonNull wl0 wl0Var, ImageViewState imageViewState) {
        d0(wl0Var, null, imageViewState);
    }

    @Nullable
    public Ctry f(float f, PointF pointF) {
        Cdo cdo = null;
        if (F()) {
            return new Ctry(this, f, pointF, cdo);
        }
        return null;
    }

    public void g0(int i, int i2) {
        this.f8885return = i;
        this.f8886static = i2;
    }

    public final int getAppliedOrientation() {
        return getRequiredRotation();
    }

    @Nullable
    public final PointF getCenter() {
        return s0(getWidth() / 2, getHeight() / 2);
    }

    public float getMaxScale() {
        return this.f8897while;
    }

    public int getMaxTouchCount() {
        return this.i;
    }

    public final float getMinScale() {
        return J();
    }

    public final int getOrientation() {
        return this.f8892throw;
    }

    public final int getSHeight() {
        return this.a;
    }

    public final int getSWidth() {
        return this.f8890synchronized;
    }

    public final float getScale() {
        return this.f8865continue;
    }

    @Nullable
    public final ImageViewState getState() {
        if (this.f8896volatile == null || this.f8890synchronized <= 0 || this.a <= 0) {
            return null;
        }
        return new ImageViewState(getScale(), getCenter(), getOrientation());
    }

    public final void h0(float f, @Nullable PointF pointF) {
        this.v = null;
        this.f8894transient = Float.valueOf(f);
        this.f8875implements = pointF;
        this.f8877instanceof = pointF;
        invalidate();
    }

    @Nullable
    public final PointF i0(float f, float f2) {
        return j0(f, f2, new PointF());
    }

    @Nullable
    public final PointF j0(float f, float f2, @NonNull PointF pointF) {
        if (this.f8896volatile == null) {
            return null;
        }
        pointF.set(n0(f), o0(f2));
        return pointF;
    }

    @Nullable
    public final PointF k0(PointF pointF) {
        return j0(pointF.x, pointF.y, new PointF());
    }

    @Nullable
    public final PointF l0(PointF pointF, @NonNull PointF pointF2) {
        return j0(pointF.x, pointF.y, pointF2);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        float height;
        int i2;
        int i3;
        super.onDraw(canvas);
        j();
        if (this.f8890synchronized == 0 || this.a == 0 || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.f8870final == null && this.l != null) {
            y(v(canvas));
        }
        if (i()) {
            R();
            Cnew cnew = this.v;
            if (cnew != null && cnew.f8929case != null) {
                float f = this.f8865continue;
                if (this.f8883protected == null) {
                    this.f8883protected = new PointF(0.0f, 0.0f);
                }
                this.f8883protected.set(this.f8896volatile);
                long jCurrentTimeMillis = System.currentTimeMillis() - this.v.f8931class;
                boolean z = jCurrentTimeMillis > this.v.f8936goto;
                long jMin = Math.min(jCurrentTimeMillis, this.v.f8936goto);
                this.f8865continue = n(this.v.f8928break, jMin, this.v.f8933do, this.v.f8937if - this.v.f8933do, this.v.f8936goto);
                float fN = n(this.v.f8928break, jMin, this.v.f8929case.x, this.v.f8934else.x - this.v.f8929case.x, this.v.f8936goto);
                float fN2 = n(this.v.f8928break, jMin, this.v.f8929case.y, this.v.f8934else.y - this.v.f8929case.y, this.v.f8936goto);
                this.f8896volatile.x -= n0(this.v.f8938new.x) - fN;
                this.f8896volatile.y -= o0(this.v.f8938new.y) - fN2;
                s(z || this.v.f8933do == this.v.f8937if);
                b0(f, this.f8883protected, this.v.f8930catch);
                U(z);
                if (z) {
                    if (this.v.f8932const != null) {
                        try {
                            this.v.f8932const.onComplete();
                        } catch (Exception unused) {
                        }
                    }
                    this.v = null;
                }
                invalidate();
            }
            if (this.f8870final == null || !B()) {
                i = 5;
                if (this.f8891this != null) {
                    float width = this.f8865continue;
                    if (this.f8860break) {
                        width *= this.f8890synchronized / r0.getWidth();
                        height = this.f8865continue * (this.a / this.f8891this.getHeight());
                    } else {
                        height = width;
                    }
                    if (this.G == null) {
                        this.G = new Matrix();
                    }
                    this.G.reset();
                    this.G.postScale(width, height);
                    this.G.postRotate(getRequiredRotation());
                    Matrix matrix = this.G;
                    PointF pointF = this.f8896volatile;
                    matrix.postTranslate(pointF.x, pointF.y);
                    if (getRequiredRotation() == 180) {
                        Matrix matrix2 = this.G;
                        float f2 = this.f8865continue;
                        matrix2.postTranslate(this.f8890synchronized * f2, f2 * this.a);
                    } else if (getRequiredRotation() == 90) {
                        this.G.postTranslate(this.f8865continue * this.a, 0.0f);
                    } else if (getRequiredRotation() == 270) {
                        this.G.postTranslate(0.0f, this.f8865continue * this.f8890synchronized);
                    }
                    if (this.E != null) {
                        if (this.H == null) {
                            this.H = new RectF();
                        }
                        this.H.set(0.0f, 0.0f, this.f8860break ? this.f8891this.getWidth() : this.f8890synchronized, this.f8860break ? this.f8891this.getHeight() : this.a);
                        this.G.mapRect(this.H);
                        canvas.drawRect(this.H, this.E);
                    }
                    canvas.drawBitmap(this.f8891this, this.G, this.B);
                }
            } else {
                int iMin = Math.min(this.f8864const, g(this.f8865continue));
                boolean z2 = false;
                for (Map.Entry<Integer, List<Ccatch>> entry : this.f8870final.entrySet()) {
                    if (entry.getKey().intValue() == iMin) {
                        for (Ccatch ccatch : entry.getValue()) {
                            if (ccatch.f8913try && (ccatch.f8912new || ccatch.f8910for == null)) {
                                z2 = true;
                            }
                        }
                    }
                }
                for (Map.Entry<Integer, List<Ccatch>> entry2 : this.f8870final.entrySet()) {
                    if (entry2.getKey().intValue() == iMin || z2) {
                        for (Ccatch ccatch2 : entry2.getValue()) {
                            m0(ccatch2.f8908do, ccatch2.f8907case);
                            if (ccatch2.f8912new || ccatch2.f8910for == null) {
                                i2 = iMin;
                                i3 = 5;
                                if (ccatch2.f8912new && this.f8888super) {
                                    canvas.drawText("LOADING", ccatch2.f8907case.left + S(5), ccatch2.f8907case.top + S(35), this.C);
                                }
                            } else {
                                if (this.E != null) {
                                    canvas.drawRect(ccatch2.f8907case, this.E);
                                }
                                if (this.G == null) {
                                    this.G = new Matrix();
                                }
                                this.G.reset();
                                i3 = 5;
                                i2 = iMin;
                                f0(this.f8880new, 0.0f, 0.0f, ccatch2.f8910for.getWidth(), 0.0f, ccatch2.f8910for.getWidth(), ccatch2.f8910for.getHeight(), 0.0f, ccatch2.f8910for.getHeight());
                                if (getRequiredRotation() == 0) {
                                    f0(this.f8895try, ccatch2.f8907case.left, ccatch2.f8907case.top, ccatch2.f8907case.right, ccatch2.f8907case.top, ccatch2.f8907case.right, ccatch2.f8907case.bottom, ccatch2.f8907case.left, ccatch2.f8907case.bottom);
                                } else if (getRequiredRotation() == 90) {
                                    f0(this.f8895try, ccatch2.f8907case.right, ccatch2.f8907case.top, ccatch2.f8907case.right, ccatch2.f8907case.bottom, ccatch2.f8907case.left, ccatch2.f8907case.bottom, ccatch2.f8907case.left, ccatch2.f8907case.top);
                                } else if (getRequiredRotation() == 180) {
                                    f0(this.f8895try, ccatch2.f8907case.right, ccatch2.f8907case.bottom, ccatch2.f8907case.left, ccatch2.f8907case.bottom, ccatch2.f8907case.left, ccatch2.f8907case.top, ccatch2.f8907case.right, ccatch2.f8907case.top);
                                } else if (getRequiredRotation() == 270) {
                                    f0(this.f8895try, ccatch2.f8907case.left, ccatch2.f8907case.bottom, ccatch2.f8907case.left, ccatch2.f8907case.top, ccatch2.f8907case.right, ccatch2.f8907case.top, ccatch2.f8907case.right, ccatch2.f8907case.bottom);
                                }
                                this.G.setPolyToPoly(this.f8880new, 0, this.f8895try, 0, 4);
                                canvas.drawBitmap(ccatch2.f8910for, this.G, this.B);
                                if (this.f8888super) {
                                    canvas.drawRect(ccatch2.f8907case, this.D);
                                }
                            }
                            if (ccatch2.f8913try && this.f8888super) {
                                canvas.drawText("ISS " + ccatch2.f8911if + " RECT " + ccatch2.f8908do.top + "," + ccatch2.f8908do.left + "," + ccatch2.f8908do.bottom + "," + ccatch2.f8908do.right, ccatch2.f8907case.left + S(i3), ccatch2.f8907case.top + S(15), this.C);
                            }
                            iMin = i2;
                        }
                    }
                    iMin = iMin;
                }
                i = 5;
            }
            if (this.f8888super) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scale: ");
                Locale locale = Locale.ENGLISH;
                sb.append(String.format(locale, "%.2f", Float.valueOf(this.f8865continue)));
                sb.append(" (");
                sb.append(String.format(locale, "%.2f", Float.valueOf(J())));
                sb.append(" - ");
                sb.append(String.format(locale, "%.2f", Float.valueOf(this.f8897while)));
                sb.append(")");
                canvas.drawText(sb.toString(), S(i), S(15), this.C);
                canvas.drawText("Translate: " + String.format(locale, "%.2f", Float.valueOf(this.f8896volatile.x)) + ":" + String.format(locale, "%.2f", Float.valueOf(this.f8896volatile.y)), S(i), S(30), this.C);
                PointF center = getCenter();
                canvas.drawText("Source center: " + String.format(locale, "%.2f", Float.valueOf(center.x)) + ":" + String.format(locale, "%.2f", Float.valueOf(center.y)), S(i), S(45), this.C);
                Cnew cnew2 = this.v;
                if (cnew2 != null) {
                    PointF pointFK0 = k0(cnew2.f8935for);
                    PointF pointFK02 = k0(this.v.f8940try);
                    PointF pointFK03 = k0(this.v.f8938new);
                    canvas.drawCircle(pointFK0.x, pointFK0.y, S(10), this.D);
                    this.D.setColor(-65536);
                    canvas.drawCircle(pointFK02.x, pointFK02.y, S(20), this.D);
                    this.D.setColor(QMUIProgressBar.f19440abstract);
                    canvas.drawCircle(pointFK03.x, pointFK03.y, S(25), this.D);
                    this.D.setColor(-16711681);
                    canvas.drawCircle(getWidth() / 2, getHeight() / 2, S(30), this.D);
                }
                if (this.o != null) {
                    this.D.setColor(-65536);
                    PointF pointF2 = this.o;
                    canvas.drawCircle(pointF2.x, pointF2.y, S(20), this.D);
                }
                if (this.t != null) {
                    this.D.setColor(QMUIProgressBar.f19440abstract);
                    canvas.drawCircle(n0(this.t.x), o0(this.t.y), S(35), this.D);
                }
                if (this.u != null && this.h) {
                    this.D.setColor(-16711681);
                    PointF pointF3 = this.u;
                    canvas.drawCircle(pointF3.x, pointF3.y, S(30), this.D);
                }
                this.D.setColor(-65281);
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
        if (this.f8890synchronized > 0 && this.a > 0) {
            if (z && z2) {
                size = a0();
                size2 = Z();
            } else if (z2) {
                double dZ = Z();
                double dA0 = a0();
                Double.isNaN(dZ);
                Double.isNaN(dA0);
                double d = dZ / dA0;
                double d2 = size;
                Double.isNaN(d2);
                size2 = (int) (d * d2);
            } else if (z) {
                double dA02 = a0();
                double dZ2 = Z();
                Double.isNaN(dA02);
                Double.isNaN(dZ2);
                double d3 = dA02 / dZ2;
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
        if (!this.w || center == null) {
            return;
        }
        this.v = null;
        this.f8894transient = Float.valueOf(this.f8865continue);
        this.f8875implements = center;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        GestureDetector gestureDetector;
        Cnew cnew = this.v;
        if (cnew != null && !cnew.f8939this) {
            V(true);
            return true;
        }
        Cnew cnew2 = this.v;
        if (cnew2 != null && cnew2.f8932const != null) {
            try {
                this.v.f8932const.onInterruptedByUser();
            } catch (Exception unused) {
            }
        }
        this.v = null;
        if (this.f8896volatile == null) {
            GestureDetector gestureDetector2 = this.k;
            if (gestureDetector2 != null) {
                gestureDetector2.onTouchEvent(motionEvent);
            }
            return true;
        }
        if (!this.h && ((gestureDetector = this.j) == null || gestureDetector.onTouchEvent(motionEvent))) {
            this.f = false;
            this.g = false;
            this.i = 0;
            return true;
        }
        if (this.f8878interface == null) {
            this.f8878interface = new PointF(0.0f, 0.0f);
        }
        if (this.f8883protected == null) {
            this.f8883protected = new PointF(0.0f, 0.0f);
        }
        if (this.o == null) {
            this.o = new PointF(0.0f, 0.0f);
        }
        float f = this.f8865continue;
        this.f8883protected.set(this.f8896volatile);
        boolean zQ = Q(motionEvent);
        b0(f, this.f8883protected, 2);
        return zQ || super.onTouchEvent(motionEvent);
    }

    public void r0(Rect rect, Rect rect2) {
        if (this.f8896volatile == null || !this.w) {
            return;
        }
        rect2.set((int) w0(rect.left), (int) x0(rect.top), (int) w0(rect.right), (int) x0(rect.bottom));
        r(rect2, rect2);
        rect2.set(Math.max(0, rect2.left), Math.max(0, rect2.top), Math.min(this.f8890synchronized, rect2.right), Math.min(this.a, rect2.bottom));
        Rect rect3 = this.d;
        if (rect3 != null) {
            rect2.offset(rect3.left, rect3.top);
        }
    }

    @Nullable
    public final PointF s0(float f, float f2) {
        return t0(f, f2, new PointF());
    }

    public final void setBitmapDecoderClass(@NonNull Class<? extends ImageDecoder> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.m = new CompatDecoderFactory(cls);
    }

    public final void setBitmapDecoderFactory(@NonNull DecoderFactory<? extends ImageDecoder> decoderFactory) {
        if (decoderFactory == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.m = decoderFactory;
    }

    public final void setDebug(boolean z) {
        this.f8888super = z;
    }

    public final void setDoubleTapZoomDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setDoubleTapZoomScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i);
    }

    public final void setDoubleTapZoomDuration(int i) {
        this.f8859abstract = Math.max(0, i);
    }

    public final void setDoubleTapZoomScale(float f) {
        this.f8881package = f;
    }

    public final void setDoubleTapZoomStyle(int i) {
        if (k0.contains(Integer.valueOf(i))) {
            this.f8882private = i;
            return;
        }
        throw new IllegalArgumentException("Invalid zoom style: " + i);
    }

    public void setEagerLoadingEnabled(boolean z) {
        this.f8893throws = z;
    }

    public void setExecutor(@NonNull Executor executor) {
        Objects.requireNonNull(executor, "Executor must not be null");
        this.f8889switch = executor;
    }

    public final void setImage(@NonNull wl0 wl0Var) {
        d0(wl0Var, null, null);
    }

    public final void setMaxScale(float f) {
        this.f8897while = f;
    }

    public void setMaxTileSize(int i) {
        this.f8885return = i;
        this.f8886static = i;
    }

    public final void setMaximumDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMinScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i);
    }

    public final void setMinScale(float f) {
        this.c = f;
    }

    public final void setMinimumDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMaxScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i);
    }

    public final void setMinimumScaleType(int i) {
        if (!n0.contains(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Invalid scale type: " + i);
        }
        this.f8884public = i;
        if (F()) {
            s(true);
            invalidate();
        }
    }

    public void setMinimumTileDpi(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f8876import = (int) Math.min((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f, i);
        if (F()) {
            W(false);
            invalidate();
        }
    }

    public void setOnImageEventListener(OnImageEventListener onImageEventListener) {
        this.y = onImageEventListener;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.A = onLongClickListener;
    }

    public void setOnStateChangedListener(OnStateChangedListener onStateChangedListener) {
        this.z = onStateChangedListener;
    }

    public final void setOrientation(int i) {
        if (!j0.contains(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Invalid orientation: " + i);
        }
        this.f8892throw = i;
        W(false);
        invalidate();
        requestLayout();
    }

    public final void setPanEnabled(boolean z) {
        PointF pointF;
        this.f8866default = z;
        if (z || (pointF = this.f8896volatile) == null) {
            return;
        }
        pointF.x = (getWidth() / 2) - (this.f8865continue * (a0() / 2));
        this.f8896volatile.y = (getHeight() / 2) - (this.f8865continue * (Z() / 2));
        if (F()) {
            U(true);
            invalidate();
        }
    }

    public final void setPanLimit(int i) {
        if (!m0.contains(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Invalid pan limit: " + i);
        }
        this.f8879native = i;
        if (F()) {
            s(true);
            invalidate();
        }
    }

    public final void setQuickScaleEnabled(boolean z) {
        this.f8871finally = z;
    }

    public final void setRegionDecoderClass(@NonNull Class<? extends ImageRegionDecoder> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.n = new CompatDecoderFactory(cls);
    }

    public final void setRegionDecoderFactory(@NonNull DecoderFactory<? extends ImageRegionDecoder> decoderFactory) {
        if (decoderFactory == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.n = decoderFactory;
    }

    public final void setTileBackgroundColor(int i) {
        if (Color.alpha(i) == 0) {
            this.E = null;
        } else {
            Paint paint = new Paint();
            this.E = paint;
            paint.setStyle(Paint.Style.FILL);
            this.E.setColor(i);
        }
        invalidate();
    }

    public final void setZoomEnabled(boolean z) {
        this.f8869extends = z;
    }

    @Nullable
    public final PointF t0(float f, float f2, @NonNull PointF pointF) {
        if (this.f8896volatile == null) {
            return null;
        }
        pointF.set(w0(f), x0(f2));
        return pointF;
    }

    @Nullable
    public final PointF u0(PointF pointF) {
        return t0(pointF.x, pointF.y, new PointF());
    }

    @Nullable
    public final PointF v0(PointF pointF, @NonNull PointF pointF2) {
        return t0(pointF.x, pointF.y, pointF2);
    }

    public final void w(RectF rectF) {
        if (F()) {
            float fA0 = this.f8865continue * a0();
            float fZ = this.f8865continue * Z();
            int i = this.f8879native;
            if (i == 3) {
                rectF.top = Math.max(0.0f, -(this.f8896volatile.y - (getHeight() / 2)));
                rectF.left = Math.max(0.0f, -(this.f8896volatile.x - (getWidth() / 2)));
                rectF.bottom = Math.max(0.0f, this.f8896volatile.y - ((getHeight() / 2) - fZ));
                rectF.right = Math.max(0.0f, this.f8896volatile.x - ((getWidth() / 2) - fA0));
                return;
            }
            if (i == 2) {
                rectF.top = Math.max(0.0f, -(this.f8896volatile.y - getHeight()));
                rectF.left = Math.max(0.0f, -(this.f8896volatile.x - getWidth()));
                rectF.bottom = Math.max(0.0f, this.f8896volatile.y + fZ);
                rectF.right = Math.max(0.0f, this.f8896volatile.x + fA0);
                return;
            }
            rectF.top = Math.max(0.0f, -this.f8896volatile.y);
            rectF.left = Math.max(0.0f, -this.f8896volatile.x);
            rectF.bottom = Math.max(0.0f, (fZ + this.f8896volatile.y) - getHeight());
            rectF.right = Math.max(0.0f, (fA0 + this.f8896volatile.x) - getWidth());
        }
    }

    public boolean x() {
        return (this.f8863class == null && this.f8891this == null) ? false : true;
    }

    public void y0(Rect rect) {
        if (this.f8896volatile == null || !this.w) {
            return;
        }
        rect.set(0, 0, getWidth(), getHeight());
        r0(rect, rect);
    }

    /* renamed from: cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: break, reason: not valid java name */
        private int f8928break;

        /* renamed from: case, reason: not valid java name */
        private PointF f8929case;

        /* renamed from: catch, reason: not valid java name */
        private int f8930catch;

        /* renamed from: class, reason: not valid java name */
        private long f8931class;

        /* renamed from: const, reason: not valid java name */
        private OnAnimationEventListener f8932const;

        /* renamed from: do, reason: not valid java name */
        private float f8933do;

        /* renamed from: else, reason: not valid java name */
        private PointF f8934else;

        /* renamed from: for, reason: not valid java name */
        private PointF f8935for;

        /* renamed from: goto, reason: not valid java name */
        private long f8936goto;

        /* renamed from: if, reason: not valid java name */
        private float f8937if;

        /* renamed from: new, reason: not valid java name */
        private PointF f8938new;

        /* renamed from: this, reason: not valid java name */
        private boolean f8939this;

        /* renamed from: try, reason: not valid java name */
        private PointF f8940try;

        private Cnew() {
            this.f8936goto = 500L;
            this.f8939this = true;
            this.f8928break = 2;
            this.f8930catch = 1;
            this.f8931class = System.currentTimeMillis();
        }

        public /* synthetic */ Cnew(Cdo cdo) {
            this();
        }
    }

    public SubsamplingScaleImageViewDragClose(Context context) {
        this(context, null);
    }
}
