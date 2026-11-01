package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.cf1;
import android.support.v4.dn1;
import android.support.v4.ht;
import android.support.v4.s51;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Celse;
import com.bumptech.glide.Cgoto;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.request.transition.Transition;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class GifFrameLoader {

    /* renamed from: break, reason: not valid java name */
    private Cdo f10210break;

    /* renamed from: case, reason: not valid java name */
    private boolean f10211case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f10212catch;

    /* renamed from: class, reason: not valid java name */
    private Cdo f10213class;

    /* renamed from: const, reason: not valid java name */
    private Bitmap f10214const;

    /* renamed from: do, reason: not valid java name */
    private final GifDecoder f10215do;

    /* renamed from: else, reason: not valid java name */
    private boolean f10216else;

    /* renamed from: final, reason: not valid java name */
    private Transformation<Bitmap> f10217final;

    /* renamed from: for, reason: not valid java name */
    private final List<FrameCallback> f10218for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f10219goto;

    /* renamed from: if, reason: not valid java name */
    private final Handler f10220if;

    /* renamed from: import, reason: not valid java name */
    private int f10221import;

    /* renamed from: native, reason: not valid java name */
    private int f10222native;

    /* renamed from: new, reason: not valid java name */
    public final Cgoto f10223new;

    /* renamed from: super, reason: not valid java name */
    private Cdo f10224super;

    /* renamed from: this, reason: not valid java name */
    private Celse<Bitmap> f10225this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private OnEveryFrameListener f10226throw;

    /* renamed from: try, reason: not valid java name */
    private final BitmapPool f10227try;

    /* renamed from: while, reason: not valid java name */
    private int f10228while;

    public interface FrameCallback {
        void onFrameReady();
    }

    @VisibleForTesting
    public interface OnEveryFrameListener {
        void onFrameReady();
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.GifFrameLoader$do, reason: invalid class name */
    public static class Cdo extends ht<Bitmap> {

        /* renamed from: case, reason: not valid java name */
        private final long f10229case;

        /* renamed from: else, reason: not valid java name */
        private Bitmap f10230else;

        /* renamed from: new, reason: not valid java name */
        private final Handler f10231new;

        /* renamed from: try, reason: not valid java name */
        public final int f10232try;

        public Cdo(Handler handler, int i, long j) {
            this.f10231new = handler;
            this.f10232try = i;
            this.f10229case = j;
        }

        /* renamed from: do, reason: not valid java name */
        public Bitmap m11831do() {
            return this.f10230else;
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
            this.f10230else = bitmap;
            this.f10231new.sendMessageAtTime(this.f10231new.obtainMessage(1, this), this.f10229case);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
            this.f10230else = null;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.gif.GifFrameLoader$if, reason: invalid class name */
    public class Cif implements Handler.Callback {

        /* renamed from: for, reason: not valid java name */
        public static final int f10233for = 2;

        /* renamed from: if, reason: not valid java name */
        public static final int f10234if = 1;

        public Cif() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                GifFrameLoader.this.m11827super((Cdo) message.obj);
                return true;
            }
            if (i != 2) {
                return false;
            }
            GifFrameLoader.this.f10223new.m11225this((Cdo) message.obj);
            return false;
        }
    }

    public GifFrameLoader(Glide glide, GifDecoder gifDecoder, int i, int i2, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this(glide.m11053else(), Glide.m11032abstract(glide.m11064this()), gifDecoder, null, m11809catch(Glide.m11032abstract(glide.m11064this()), i, i2), transformation, bitmap);
    }

    /* renamed from: catch, reason: not valid java name */
    private static Celse<Bitmap> m11809catch(Cgoto cgoto, int i, int i2) {
        return cgoto.mo6031new().mo11166do(dn1.b0(Ccase.f9736if).U(true).K(true).z(i, i2));
    }

    /* renamed from: else, reason: not valid java name */
    private static Key m11810else() {
        return new s51(Double.valueOf(Math.random()));
    }

    /* renamed from: final, reason: not valid java name */
    private void m11811final() {
        if (!this.f10211case || this.f10216else) {
            return;
        }
        if (this.f10219goto) {
            cf1.m897do(this.f10224super == null, "Pending target must be null when starting from the first frame");
            this.f10215do.resetFrameIndex();
            this.f10219goto = false;
        }
        Cdo cdo = this.f10224super;
        if (cdo != null) {
            this.f10224super = null;
            m11827super(cdo);
            return;
        }
        this.f10216else = true;
        long jUptimeMillis = SystemClock.uptimeMillis() + this.f10215do.getNextDelay();
        this.f10215do.advance();
        this.f10213class = new Cdo(this.f10220if, this.f10215do.getCurrentFrameIndex(), jUptimeMillis);
        this.f10225this.mo11166do(dn1.s0(m11810else())).load(this.f10215do).j0(this.f10213class);
    }

    /* renamed from: native, reason: not valid java name */
    private void m11812native() {
        if (this.f10211case) {
            return;
        }
        this.f10211case = true;
        this.f10212catch = false;
        m11811final();
    }

    /* renamed from: public, reason: not valid java name */
    private void m11813public() {
        this.f10211case = false;
    }

    /* renamed from: throw, reason: not valid java name */
    private void m11814throw() {
        Bitmap bitmap = this.f10214const;
        if (bitmap != null) {
            this.f10227try.put(bitmap);
            this.f10214const = null;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public int m11815break() {
        return this.f10215do.getTotalIterationCount();
    }

    /* renamed from: case, reason: not valid java name */
    public int m11816case() {
        return this.f10215do.getFrameCount();
    }

    /* renamed from: class, reason: not valid java name */
    public int m11817class() {
        return this.f10215do.getByteSize() + this.f10228while;
    }

    /* renamed from: const, reason: not valid java name */
    public int m11818const() {
        return this.f10221import;
    }

    /* renamed from: do, reason: not valid java name */
    public void m11819do() {
        this.f10218for.clear();
        m11814throw();
        m11813public();
        Cdo cdo = this.f10210break;
        if (cdo != null) {
            this.f10223new.m11225this(cdo);
            this.f10210break = null;
        }
        Cdo cdo2 = this.f10213class;
        if (cdo2 != null) {
            this.f10223new.m11225this(cdo2);
            this.f10213class = null;
        }
        Cdo cdo3 = this.f10224super;
        if (cdo3 != null) {
            this.f10223new.m11225this(cdo3);
            this.f10224super = null;
        }
        this.f10215do.clear();
        this.f10212catch = true;
    }

    /* renamed from: for, reason: not valid java name */
    public Bitmap m11820for() {
        Cdo cdo = this.f10210break;
        return cdo != null ? cdo.m11831do() : this.f10214const;
    }

    /* renamed from: goto, reason: not valid java name */
    public Transformation<Bitmap> m11821goto() {
        return this.f10217final;
    }

    /* renamed from: if, reason: not valid java name */
    public ByteBuffer m11822if() {
        return this.f10215do.getData().asReadOnlyBuffer();
    }

    /* renamed from: import, reason: not valid java name */
    public void m11823import() {
        cf1.m897do(!this.f10211case, "Can't restart a running animation");
        this.f10219goto = true;
        Cdo cdo = this.f10224super;
        if (cdo != null) {
            this.f10223new.m11225this(cdo);
            this.f10224super = null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public int m11824new() {
        Cdo cdo = this.f10210break;
        if (cdo != null) {
            return cdo.f10232try;
        }
        return -1;
    }

    /* renamed from: return, reason: not valid java name */
    public void m11825return(FrameCallback frameCallback) {
        if (this.f10212catch) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.f10218for.contains(frameCallback)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = this.f10218for.isEmpty();
        this.f10218for.add(frameCallback);
        if (zIsEmpty) {
            m11812native();
        }
    }

    @VisibleForTesting
    public void setOnEveryFrameReadyListener(@Nullable OnEveryFrameListener onEveryFrameListener) {
        this.f10226throw = onEveryFrameListener;
    }

    /* renamed from: static, reason: not valid java name */
    public void m11826static(FrameCallback frameCallback) {
        this.f10218for.remove(frameCallback);
        if (this.f10218for.isEmpty()) {
            m11813public();
        }
    }

    @VisibleForTesting
    /* renamed from: super, reason: not valid java name */
    public void m11827super(Cdo cdo) {
        OnEveryFrameListener onEveryFrameListener = this.f10226throw;
        if (onEveryFrameListener != null) {
            onEveryFrameListener.onFrameReady();
        }
        this.f10216else = false;
        if (this.f10212catch) {
            this.f10220if.obtainMessage(2, cdo).sendToTarget();
            return;
        }
        if (!this.f10211case) {
            this.f10224super = cdo;
            return;
        }
        if (cdo.m11831do() != null) {
            m11814throw();
            Cdo cdo2 = this.f10210break;
            this.f10210break = cdo;
            for (int size = this.f10218for.size() - 1; size >= 0; size--) {
                this.f10218for.get(size).onFrameReady();
            }
            if (cdo2 != null) {
                this.f10220if.obtainMessage(2, cdo2).sendToTarget();
            }
        }
        m11811final();
    }

    /* renamed from: this, reason: not valid java name */
    public int m11828this() {
        return this.f10222native;
    }

    /* renamed from: try, reason: not valid java name */
    public Bitmap m11829try() {
        return this.f10214const;
    }

    /* renamed from: while, reason: not valid java name */
    public void m11830while(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f10217final = (Transformation) cf1.m900new(transformation);
        this.f10214const = (Bitmap) cf1.m900new(bitmap);
        this.f10225this = this.f10225this.mo11166do(new dn1().N(transformation));
        this.f10228while = com.bumptech.glide.util.Ccase.m12047goto(bitmap);
        this.f10221import = bitmap.getWidth();
        this.f10222native = bitmap.getHeight();
    }

    public GifFrameLoader(BitmapPool bitmapPool, Cgoto cgoto, GifDecoder gifDecoder, Handler handler, Celse<Bitmap> celse, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f10218for = new ArrayList();
        this.f10223new = cgoto;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new Cif()) : handler;
        this.f10227try = bitmapPool;
        this.f10220if = handler;
        this.f10225this = celse;
        this.f10215do = gifDecoder;
        m11830while(transformation, bitmap);
    }
}
