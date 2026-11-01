package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: com.bumptech.glide.gifdecoder.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew implements GifDecoder {

    /* renamed from: default, reason: not valid java name */
    private static final int f9405default = -1;

    /* renamed from: extends, reason: not valid java name */
    private static final int f9406extends = 4;

    /* renamed from: finally, reason: not valid java name */
    private static final int f9407finally = 255;

    /* renamed from: package, reason: not valid java name */
    @ColorInt
    private static final int f9408package = 0;

    /* renamed from: static, reason: not valid java name */
    private static final String f9409static = "new";

    /* renamed from: switch, reason: not valid java name */
    private static final int f9410switch = 4096;

    /* renamed from: throws, reason: not valid java name */
    private static final int f9411throws = -1;

    /* renamed from: break, reason: not valid java name */
    private byte[] f9412break;

    /* renamed from: case, reason: not valid java name */
    private Cfor f9413case;

    /* renamed from: catch, reason: not valid java name */
    @ColorInt
    private int[] f9414catch;

    /* renamed from: class, reason: not valid java name */
    private int f9415class;

    /* renamed from: const, reason: not valid java name */
    private Cif f9416const;

    /* renamed from: do, reason: not valid java name */
    @ColorInt
    private int[] f9417do;

    /* renamed from: else, reason: not valid java name */
    private short[] f9418else;

    /* renamed from: final, reason: not valid java name */
    private Bitmap f9419final;

    /* renamed from: for, reason: not valid java name */
    private final GifDecoder.BitmapProvider f9420for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f9421goto;

    /* renamed from: if, reason: not valid java name */
    @ColorInt
    private final int[] f9422if;

    /* renamed from: import, reason: not valid java name */
    private int f9423import;

    /* renamed from: native, reason: not valid java name */
    private int f9424native;

    /* renamed from: new, reason: not valid java name */
    private ByteBuffer f9425new;

    /* renamed from: public, reason: not valid java name */
    @Nullable
    private Boolean f9426public;

    /* renamed from: return, reason: not valid java name */
    @NonNull
    private Bitmap.Config f9427return;

    /* renamed from: super, reason: not valid java name */
    private boolean f9428super;

    /* renamed from: this, reason: not valid java name */
    private byte[] f9429this;

    /* renamed from: throw, reason: not valid java name */
    private int f9430throw;

    /* renamed from: try, reason: not valid java name */
    private byte[] f9431try;

    /* renamed from: while, reason: not valid java name */
    private int f9432while;

    public Cnew(@NonNull GifDecoder.BitmapProvider bitmapProvider, Cif cif, ByteBuffer byteBuffer) {
        this(bitmapProvider, cif, byteBuffer, 1);
    }

    /* renamed from: case, reason: not valid java name */
    private Bitmap m11200case() {
        Boolean bool = this.f9426public;
        Bitmap bitmapObtain = this.f9420for.obtain(this.f9424native, this.f9423import, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f9427return);
        bitmapObtain.setHasAlpha(true);
        return bitmapObtain;
    }

    @ColorInt
    /* renamed from: do, reason: not valid java name */
    private int m11201do(int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = i; i9 < this.f9432while + i; i9++) {
            byte[] bArr = this.f9412break;
            if (i9 >= bArr.length || i9 >= i2) {
                break;
            }
            int i10 = this.f9417do[bArr[i9] & 255];
            if (i10 != 0) {
                i4 += (i10 >> 24) & 255;
                i5 += (i10 >> 16) & 255;
                i6 += (i10 >> 8) & 255;
                i7 += i10 & 255;
                i8++;
            }
        }
        int i11 = i + i3;
        for (int i12 = i11; i12 < this.f9432while + i11; i12++) {
            byte[] bArr2 = this.f9412break;
            if (i12 >= bArr2.length || i12 >= i2) {
                break;
            }
            int i13 = this.f9417do[bArr2[i12] & 255];
            if (i13 != 0) {
                i4 += (i13 >> 24) & 255;
                i5 += (i13 >> 16) & 255;
                i6 += (i13 >> 8) & 255;
                i7 += i13 & 255;
                i8++;
            }
        }
        if (i8 == 0) {
            return 0;
        }
        return ((i4 / i8) << 24) | ((i5 / i8) << 16) | ((i6 / i8) << 8) | (i7 / i8);
    }

    /* renamed from: else, reason: not valid java name */
    private int m11202else() {
        int iM11204goto = m11204goto();
        if (iM11204goto <= 0) {
            return iM11204goto;
        }
        ByteBuffer byteBuffer = this.f9425new;
        byteBuffer.get(this.f9431try, 0, Math.min(iM11204goto, byteBuffer.remaining()));
        return iM11204goto;
    }

    /* renamed from: for, reason: not valid java name */
    private void m11203for(Cdo cdo) {
        Cdo cdo2 = cdo;
        int[] iArr = this.f9414catch;
        int i = cdo2.f9363new;
        int i2 = cdo2.f9362if;
        int i3 = cdo2.f9360for;
        int i4 = cdo2.f9358do;
        boolean z = this.f9415class == 0;
        int i5 = this.f9424native;
        byte[] bArr = this.f9412break;
        int[] iArr2 = this.f9417do;
        int i6 = 0;
        byte b = -1;
        while (i6 < i) {
            int i7 = (i6 + i2) * i5;
            int i8 = i7 + i4;
            int i9 = i8 + i3;
            int i10 = i7 + i5;
            if (i10 < i9) {
                i9 = i10;
            }
            int i11 = cdo2.f9360for * i6;
            int i12 = i8;
            while (i12 < i9) {
                byte b2 = bArr[i11];
                int i13 = i;
                int i14 = b2 & 255;
                if (i14 != b) {
                    int i15 = iArr2[i14];
                    if (i15 != 0) {
                        iArr[i12] = i15;
                    } else {
                        b = b2;
                    }
                }
                i11++;
                i12++;
                i = i13;
            }
            i6++;
            cdo2 = cdo;
        }
        Boolean bool = this.f9426public;
        this.f9426public = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.f9426public == null && z && b != -1));
    }

    /* renamed from: goto, reason: not valid java name */
    private int m11204goto() {
        return this.f9425new.get() & 255;
    }

    /* renamed from: if, reason: not valid java name */
    private void m11205if(Cdo cdo) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = this.f9414catch;
        int i6 = cdo.f9363new;
        int i7 = this.f9432while;
        int i8 = i6 / i7;
        int i9 = cdo.f9362if / i7;
        int i10 = cdo.f9360for / i7;
        int i11 = cdo.f9358do / i7;
        boolean z = this.f9415class == 0;
        int i12 = this.f9424native;
        int i13 = this.f9423import;
        byte[] bArr = this.f9412break;
        int[] iArr2 = this.f9417do;
        Boolean bool = this.f9426public;
        int i14 = 8;
        int i15 = 0;
        int i16 = 0;
        int i17 = 1;
        while (i15 < i8) {
            Boolean bool2 = bool;
            if (cdo.f9365try) {
                if (i16 >= i8) {
                    i = i8;
                    int i18 = i17 + 1;
                    if (i18 == 2) {
                        i17 = i18;
                        i16 = 4;
                    } else if (i18 == 3) {
                        i17 = i18;
                        i16 = 2;
                        i14 = 4;
                    } else if (i18 != 4) {
                        i17 = i18;
                    } else {
                        i17 = i18;
                        i16 = 1;
                        i14 = 2;
                    }
                } else {
                    i = i8;
                }
                i2 = i16 + i14;
            } else {
                i = i8;
                i2 = i16;
                i16 = i15;
            }
            int i19 = i16 + i9;
            boolean z2 = i7 == 1;
            if (i19 < i13) {
                int i20 = i19 * i12;
                int i21 = i20 + i11;
                int i22 = i21 + i10;
                int i23 = i20 + i12;
                if (i23 < i22) {
                    i22 = i23;
                }
                i3 = i2;
                int i24 = i15 * i7 * cdo.f9360for;
                if (z2) {
                    int i25 = i21;
                    while (i25 < i22) {
                        int i26 = i9;
                        int i27 = iArr2[bArr[i24] & 255];
                        if (i27 != 0) {
                            iArr[i25] = i27;
                        } else if (z && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i24 += i7;
                        i25++;
                        i9 = i26;
                    }
                } else {
                    i5 = i9;
                    int i28 = ((i22 - i21) * i7) + i24;
                    int i29 = i21;
                    while (true) {
                        i4 = i10;
                        if (i29 < i22) {
                            int iM11201do = m11201do(i24, i28, cdo.f9360for);
                            if (iM11201do != 0) {
                                iArr[i29] = iM11201do;
                            } else if (z && bool2 == null) {
                                bool2 = Boolean.TRUE;
                            }
                            i24 += i7;
                            i29++;
                            i10 = i4;
                        }
                    }
                    bool = bool2;
                    i15++;
                    i9 = i5;
                    i10 = i4;
                    i8 = i;
                    i16 = i3;
                }
            } else {
                i3 = i2;
            }
            i5 = i9;
            i4 = i10;
            bool = bool2;
            i15++;
            i9 = i5;
            i10 = i4;
            i8 = i;
            i16 = i3;
        }
        Boolean bool3 = bool;
        if (this.f9426public == null) {
            this.f9426public = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [short] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* renamed from: new, reason: not valid java name */
    private void m11206new(Cdo cdo) {
        int i;
        int i2;
        short s;
        Cnew cnew = this;
        if (cdo != null) {
            cnew.f9425new.position(cdo.f9355break);
        }
        if (cdo == null) {
            Cif cif = cnew.f9416const;
            i = cif.f9393case;
            i2 = cif.f9398else;
        } else {
            i = cdo.f9360for;
            i2 = cdo.f9363new;
        }
        int i3 = i * i2;
        byte[] bArr = cnew.f9412break;
        if (bArr == null || bArr.length < i3) {
            cnew.f9412break = cnew.f9420for.obtainByteArray(i3);
        }
        byte[] bArr2 = cnew.f9412break;
        if (cnew.f9418else == null) {
            cnew.f9418else = new short[4096];
        }
        short[] sArr = cnew.f9418else;
        if (cnew.f9421goto == null) {
            cnew.f9421goto = new byte[4096];
        }
        byte[] bArr3 = cnew.f9421goto;
        if (cnew.f9429this == null) {
            cnew.f9429this = new byte[4097];
        }
        byte[] bArr4 = cnew.f9429this;
        int iM11204goto = m11204goto();
        int i4 = 1 << iM11204goto;
        int i5 = i4 + 1;
        int i6 = i4 + 2;
        int i7 = iM11204goto + 1;
        int i8 = (1 << i7) - 1;
        int i9 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            sArr[i10] = 0;
            bArr3[i10] = (byte) i10;
        }
        byte[] bArr5 = cnew.f9431try;
        int i11 = i7;
        int i12 = i6;
        int i13 = i8;
        int iM11202else = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = -1;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            if (i9 >= i3) {
                break;
            }
            if (iM11202else == 0) {
                iM11202else = m11202else();
                if (iM11202else <= 0) {
                    cnew.f9430throw = 3;
                    break;
                }
                i14 = 0;
            }
            i16 += (bArr5[i14] & 255) << i15;
            i14++;
            iM11202else--;
            int i21 = i15 + 8;
            int i22 = i12;
            int i23 = i11;
            int i24 = i18;
            int i25 = i7;
            int i26 = i19;
            while (true) {
                if (i21 < i23) {
                    i18 = i24;
                    i12 = i22;
                    i15 = i21;
                    cnew = this;
                    i19 = i26;
                    i7 = i25;
                    i11 = i23;
                    break;
                }
                int i27 = i6;
                int i28 = i16 & i13;
                i16 >>= i23;
                i21 -= i23;
                if (i28 == i4) {
                    i13 = i8;
                    i23 = i25;
                    i22 = i27;
                    i6 = i22;
                    i24 = -1;
                } else {
                    if (i28 == i5) {
                        i15 = i21;
                        i19 = i26;
                        i12 = i22;
                        i7 = i25;
                        i6 = i27;
                        i18 = i24;
                        i11 = i23;
                        cnew = this;
                        break;
                    }
                    if (i24 == -1) {
                        bArr2[i17] = bArr3[i28];
                        i17++;
                        i9++;
                        i24 = i28;
                        i26 = i24;
                        i6 = i27;
                        i21 = i21;
                    } else {
                        if (i28 >= i22) {
                            bArr4[i20] = (byte) i26;
                            i20++;
                            s = i24;
                        } else {
                            s = i28;
                        }
                        while (s >= i4) {
                            bArr4[i20] = bArr3[s];
                            i20++;
                            s = sArr[s];
                        }
                        i26 = bArr3[s] & 255;
                        byte b = (byte) i26;
                        bArr2[i17] = b;
                        while (true) {
                            i17++;
                            i9++;
                            if (i20 <= 0) {
                                break;
                            }
                            i20--;
                            bArr2[i17] = bArr4[i20];
                        }
                        byte[] bArr6 = bArr4;
                        if (i22 < 4096) {
                            sArr[i22] = (short) i24;
                            bArr3[i22] = b;
                            i22++;
                            if ((i22 & i13) == 0 && i22 < 4096) {
                                i23++;
                                i13 += i22;
                            }
                        }
                        i24 = i28;
                        i6 = i27;
                        i21 = i21;
                        bArr4 = bArr6;
                    }
                }
            }
        }
        Arrays.fill(bArr2, i17, i3, (byte) 0);
    }

    /* renamed from: this, reason: not valid java name */
    private Bitmap m11207this(Cdo cdo, Cdo cdo2) {
        int i;
        int i2;
        Bitmap bitmap;
        int[] iArr = this.f9414catch;
        int i3 = 0;
        if (cdo2 == null) {
            Bitmap bitmap2 = this.f9419final;
            if (bitmap2 != null) {
                this.f9420for.release(bitmap2);
            }
            this.f9419final = null;
            Arrays.fill(iArr, 0);
        }
        if (cdo2 != null && cdo2.f9359else == 3 && this.f9419final == null) {
            Arrays.fill(iArr, 0);
        }
        if (cdo2 != null && (i2 = cdo2.f9359else) > 0) {
            if (i2 == 2) {
                if (!cdo.f9356case) {
                    Cif cif = this.f9416const;
                    int i4 = cif.f9395class;
                    if (cdo.f9357catch == null || cif.f9392break != cdo.f9361goto) {
                        i3 = i4;
                    }
                }
                int i5 = cdo2.f9363new;
                int i6 = this.f9432while;
                int i7 = i5 / i6;
                int i8 = cdo2.f9362if / i6;
                int i9 = cdo2.f9360for / i6;
                int i10 = cdo2.f9358do / i6;
                int i11 = this.f9424native;
                int i12 = (i8 * i11) + i10;
                int i13 = (i7 * i11) + i12;
                while (i12 < i13) {
                    int i14 = i12 + i9;
                    for (int i15 = i12; i15 < i14; i15++) {
                        iArr[i15] = i3;
                    }
                    i12 += this.f9424native;
                }
            } else if (i2 == 3 && (bitmap = this.f9419final) != null) {
                int i16 = this.f9424native;
                bitmap.getPixels(iArr, 0, i16, 0, 0, i16, this.f9423import);
            }
        }
        m11206new(cdo);
        if (cdo.f9365try || this.f9432while != 1) {
            m11205if(cdo);
        } else {
            m11203for(cdo);
        }
        if (this.f9428super && ((i = cdo.f9359else) == 0 || i == 1)) {
            if (this.f9419final == null) {
                this.f9419final = m11200case();
            }
            Bitmap bitmap3 = this.f9419final;
            int i17 = this.f9424native;
            bitmap3.setPixels(iArr, 0, i17, 0, 0, i17, this.f9423import);
        }
        Bitmap bitmapM11200case = m11200case();
        int i18 = this.f9424native;
        bitmapM11200case.setPixels(iArr, 0, i18, 0, 0, i18, this.f9423import);
        return bitmapM11200case;
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    private Cfor m11208try() {
        if (this.f9413case == null) {
            this.f9413case = new Cfor();
        }
        return this.f9413case;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void advance() {
        this.f9415class = (this.f9415class + 1) % this.f9416const.f9399for;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void clear() {
        this.f9416const = null;
        byte[] bArr = this.f9412break;
        if (bArr != null) {
            this.f9420for.release(bArr);
        }
        int[] iArr = this.f9414catch;
        if (iArr != null) {
            this.f9420for.release(iArr);
        }
        Bitmap bitmap = this.f9419final;
        if (bitmap != null) {
            this.f9420for.release(bitmap);
        }
        this.f9419final = null;
        this.f9425new = null;
        this.f9426public = null;
        byte[] bArr2 = this.f9431try;
        if (bArr2 != null) {
            this.f9420for.release(bArr2);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getByteSize() {
        return this.f9425new.limit() + this.f9412break.length + (this.f9414catch.length * 4);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getCurrentFrameIndex() {
        return this.f9415class;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @NonNull
    public ByteBuffer getData() {
        return this.f9425new;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getDelay(int i) {
        if (i >= 0) {
            Cif cif = this.f9416const;
            if (i < cif.f9399for) {
                return cif.f9404try.get(i).f9364this;
            }
        }
        return -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getFrameCount() {
        return this.f9416const.f9399for;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getHeight() {
        return this.f9416const.f9398else;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Deprecated
    public int getLoopCount() {
        int i = this.f9416const.f9396const;
        if (i == -1) {
            return 1;
        }
        return i;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNetscapeLoopCount() {
        return this.f9416const.f9396const;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getNextDelay() {
        int i;
        if (this.f9416const.f9399for <= 0 || (i = this.f9415class) < 0) {
            return 0;
        }
        return getDelay(i);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Nullable
    public synchronized Bitmap getNextFrame() {
        if (this.f9416const.f9399for <= 0 || this.f9415class < 0) {
            if (Log.isLoggable(f9409static, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to decode frame, frameCount=");
                sb.append(this.f9416const.f9399for);
                sb.append(", framePointer=");
                sb.append(this.f9415class);
            }
            this.f9430throw = 1;
        }
        int i = this.f9430throw;
        if (i != 1 && i != 2) {
            this.f9430throw = 0;
            if (this.f9431try == null) {
                this.f9431try = this.f9420for.obtainByteArray(255);
            }
            Cdo cdo = this.f9416const.f9404try.get(this.f9415class);
            int i2 = this.f9415class - 1;
            Cdo cdo2 = i2 >= 0 ? this.f9416const.f9404try.get(i2) : null;
            int[] iArr = cdo.f9357catch;
            if (iArr == null) {
                iArr = this.f9416const.f9397do;
            }
            this.f9417do = iArr;
            if (iArr == null) {
                if (Log.isLoggable(f9409static, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("No valid color table found for frame #");
                    sb2.append(this.f9415class);
                }
                this.f9430throw = 1;
                return null;
            }
            if (cdo.f9356case) {
                System.arraycopy(iArr, 0, this.f9422if, 0, iArr.length);
                int[] iArr2 = this.f9422if;
                this.f9417do = iArr2;
                iArr2[cdo.f9361goto] = 0;
                if (cdo.f9359else == 2 && this.f9415class == 0) {
                    this.f9426public = Boolean.TRUE;
                }
            }
            return m11207this(cdo, cdo2);
        }
        if (Log.isLoggable(f9409static, 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to decode frame, status=");
            sb3.append(this.f9430throw);
        }
        return null;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getStatus() {
        return this.f9430throw;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getTotalIterationCount() {
        int i = this.f9416const.f9396const;
        if (i == -1) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        return i + 1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int getWidth() {
        return this.f9416const.f9393case;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int read(@Nullable InputStream inputStream, int i) throws IOException {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i2 = inputStream.read(bArr, 0, 16384);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException unused) {
            }
        } else {
            this.f9430throw = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
        }
        return this.f9430throw;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void resetFrameIndex() {
        this.f9415class = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull Cif cif, @NonNull byte[] bArr) {
        setData(cif, ByteBuffer.wrap(bArr));
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void setDefaultBitmapConfig(@NonNull Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f9427return = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    public Cnew(@NonNull GifDecoder.BitmapProvider bitmapProvider, Cif cif, ByteBuffer byteBuffer, int i) {
        this(bitmapProvider);
        setData(cif, byteBuffer, i);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull Cif cif, @NonNull ByteBuffer byteBuffer) {
        setData(cif, byteBuffer, 1);
    }

    public Cnew(@NonNull GifDecoder.BitmapProvider bitmapProvider) {
        this.f9422if = new int[256];
        this.f9427return = Bitmap.Config.ARGB_8888;
        this.f9420for = bitmapProvider;
        this.f9416const = new Cif();
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized void setData(@NonNull Cif cif, @NonNull ByteBuffer byteBuffer, int i) {
        if (i > 0) {
            int iHighestOneBit = Integer.highestOneBit(i);
            this.f9430throw = 0;
            this.f9416const = cif;
            this.f9415class = -1;
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f9425new = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            this.f9425new.order(ByteOrder.LITTLE_ENDIAN);
            this.f9428super = false;
            Iterator<Cdo> it = cif.f9404try.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().f9359else == 3) {
                    this.f9428super = true;
                    break;
                }
            }
            this.f9432while = iHighestOneBit;
            int i2 = cif.f9393case;
            this.f9424native = i2 / iHighestOneBit;
            int i3 = cif.f9398else;
            this.f9423import = i3 / iHighestOneBit;
            this.f9412break = this.f9420for.obtainByteArray(i2 * i3);
            this.f9414catch = this.f9420for.obtainIntArray(this.f9424native * this.f9423import);
        } else {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public synchronized int read(@Nullable byte[] bArr) {
        Cif cifM11194new = m11208try().m11193import(bArr).m11194new();
        this.f9416const = cifM11194new;
        if (bArr != null) {
            setData(cifM11194new, bArr);
        }
        return this.f9430throw;
    }
}
