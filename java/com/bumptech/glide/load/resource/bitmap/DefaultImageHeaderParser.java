package com.bumptech.glide.load.resource.bitmap;

import android.support.v4.cf1;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: break, reason: not valid java name */
    private static final int f10067break = 217;

    /* renamed from: case, reason: not valid java name */
    private static final int f10068case = 18761;

    /* renamed from: catch, reason: not valid java name */
    public static final int f10069catch = 255;

    /* renamed from: class, reason: not valid java name */
    public static final int f10070class = 225;

    /* renamed from: const, reason: not valid java name */
    private static final int f10071const = 274;

    /* renamed from: do, reason: not valid java name */
    private static final String f10072do = "DfltImageHeaderParser";

    /* renamed from: for, reason: not valid java name */
    private static final int f10075for = -1991225785;

    /* renamed from: if, reason: not valid java name */
    private static final int f10077if = 4671814;

    /* renamed from: import, reason: not valid java name */
    private static final int f10078import = -256;

    /* renamed from: native, reason: not valid java name */
    private static final int f10079native = 255;

    /* renamed from: new, reason: not valid java name */
    public static final int f10080new = 65496;

    /* renamed from: public, reason: not valid java name */
    private static final int f10081public = 88;

    /* renamed from: return, reason: not valid java name */
    private static final int f10082return = 76;

    /* renamed from: static, reason: not valid java name */
    private static final int f10083static = 16;

    /* renamed from: super, reason: not valid java name */
    private static final int f10084super = 1380533830;

    /* renamed from: switch, reason: not valid java name */
    private static final int f10085switch = 8;

    /* renamed from: this, reason: not valid java name */
    private static final int f10086this = 218;

    /* renamed from: throw, reason: not valid java name */
    private static final int f10087throw = 1464156752;

    /* renamed from: try, reason: not valid java name */
    private static final int f10088try = 19789;

    /* renamed from: while, reason: not valid java name */
    private static final int f10089while = 1448097792;

    /* renamed from: else, reason: not valid java name */
    private static final String f10073else = "Exif\u0000\u0000";

    /* renamed from: goto, reason: not valid java name */
    public static final byte[] f10076goto = f10073else.getBytes(Charset.forName("UTF-8"));

    /* renamed from: final, reason: not valid java name */
    private static final int[] f10074final = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public interface Reader {

        /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$Reader$do, reason: invalid class name */
        public static final class Cdo extends IOException {
            private static final long serialVersionUID = 1;

            public Cdo() {
                super("Unexpectedly reached end of a file");
            }
        }

        int getUInt16() throws IOException;

        short getUInt8() throws IOException;

        int read(byte[] bArr, int i) throws IOException;

        long skip(long j) throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$do, reason: invalid class name */
    public static final class Cdo implements Reader {

        /* renamed from: do, reason: not valid java name */
        private final ByteBuffer f10090do;

        public Cdo(ByteBuffer byteBuffer) {
            this.f10090do = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int getUInt16() throws Reader.Cdo {
            return (getUInt8() << 8) | getUInt8();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short getUInt8() throws Reader.Cdo {
            if (this.f10090do.remaining() >= 1) {
                return (short) (this.f10090do.get() & 255);
            }
            throw new Reader.Cdo();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int read(byte[] bArr, int i) {
            int iMin = Math.min(i, this.f10090do.remaining());
            if (iMin == 0) {
                return -1;
            }
            this.f10090do.get(bArr, 0, iMin);
            return iMin;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) {
            int iMin = (int) Math.min(this.f10090do.remaining(), j);
            ByteBuffer byteBuffer = this.f10090do;
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$for, reason: invalid class name */
    public static final class Cfor implements Reader {

        /* renamed from: do, reason: not valid java name */
        private final InputStream f10091do;

        public Cfor(InputStream inputStream) {
            this.f10091do = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int getUInt16() throws IOException {
            return (getUInt8() << 8) | getUInt8();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short getUInt8() throws IOException {
            int i = this.f10091do.read();
            if (i != -1) {
                return (short) i;
            }
            throw new Reader.Cdo();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int read(byte[] bArr, int i) throws IOException {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i && (i3 = this.f10091do.read(bArr, i2, i - i2)) != -1) {
                i2 += i3;
            }
            if (i2 == 0 && i3 == -1) {
                throw new Reader.Cdo();
            }
            return i2;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long jSkip = this.f10091do.skip(j2);
                if (jSkip <= 0) {
                    if (this.f10091do.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j2 -= jSkip;
            }
            return j - j2;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final ByteBuffer f10092do;

        public Cif(byte[] bArr, int i) {
            this.f10092do = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: for, reason: not valid java name */
        private boolean m11690for(int i, int i2) {
            return this.f10092do.remaining() - i >= i2;
        }

        /* renamed from: do, reason: not valid java name */
        public short m11691do(int i) {
            if (m11690for(i, 2)) {
                return this.f10092do.getShort(i);
            }
            return (short) -1;
        }

        /* renamed from: if, reason: not valid java name */
        public int m11692if(int i) {
            if (m11690for(i, 4)) {
                return this.f10092do.getInt(i);
            }
            return -1;
        }

        /* renamed from: new, reason: not valid java name */
        public int m11693new() {
            return this.f10092do.remaining();
        }

        /* renamed from: try, reason: not valid java name */
        public void m11694try(ByteOrder byteOrder) {
            this.f10092do.order(byteOrder);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private int m11682case(Reader reader) throws IOException {
        short uInt8;
        int uInt16;
        long j;
        long jSkip;
        do {
            short uInt82 = reader.getUInt8();
            if (uInt82 != 255) {
                if (Log.isLoggable(f10072do, 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unknown segmentId=");
                    sb.append((int) uInt82);
                }
                return -1;
            }
            uInt8 = reader.getUInt8();
            if (uInt8 == f10086this) {
                return -1;
            }
            if (uInt8 == f10067break) {
                Log.isLoggable(f10072do, 3);
                return -1;
            }
            uInt16 = reader.getUInt16() - 2;
            if (uInt8 == 225) {
                return uInt16;
            }
            j = uInt16;
            jSkip = reader.skip(j);
        } while (jSkip == j);
        if (Log.isLoggable(f10072do, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to skip enough data, type: ");
            sb2.append((int) uInt8);
            sb2.append(", wanted to skip: ");
            sb2.append(uInt16);
            sb2.append(", but actually skipped: ");
            sb2.append(jSkip);
        }
        return -1;
    }

    /* renamed from: do, reason: not valid java name */
    private static int m11683do(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    /* renamed from: else, reason: not valid java name */
    private static int m11684else(Cif cif) {
        ByteOrder byteOrder;
        short sM11691do = cif.m11691do(6);
        if (sM11691do != f10068case) {
            if (sM11691do != f10088try && Log.isLoggable(f10072do, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unknown endianness = ");
                sb.append((int) sM11691do);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        cif.m11694try(byteOrder);
        int iM11692if = cif.m11692if(10) + 6;
        short sM11691do2 = cif.m11691do(iM11692if);
        for (int i = 0; i < sM11691do2; i++) {
            int iM11683do = m11683do(iM11692if, i);
            short sM11691do3 = cif.m11691do(iM11683do);
            if (sM11691do3 == f10071const) {
                short sM11691do4 = cif.m11691do(iM11683do + 2);
                if (sM11691do4 >= 1 && sM11691do4 <= 12) {
                    int iM11692if2 = cif.m11692if(iM11683do + 4);
                    if (iM11692if2 < 0) {
                        Log.isLoggable(f10072do, 3);
                    } else {
                        if (Log.isLoggable(f10072do, 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Got tagIndex=");
                            sb2.append(i);
                            sb2.append(" tagType=");
                            sb2.append((int) sM11691do3);
                            sb2.append(" formatCode=");
                            sb2.append((int) sM11691do4);
                            sb2.append(" componentCount=");
                            sb2.append(iM11692if2);
                        }
                        int i2 = iM11692if2 + f10074final[sM11691do4];
                        if (i2 <= 4) {
                            int i3 = iM11683do + 8;
                            if (i3 >= 0 && i3 <= cif.m11693new()) {
                                if (i2 >= 0 && i2 + i3 <= cif.m11693new()) {
                                    return cif.m11691do(i3);
                                }
                                if (Log.isLoggable(f10072do, 3)) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("Illegal number of bytes for TI tag data tagType=");
                                    sb3.append((int) sM11691do3);
                                }
                            } else if (Log.isLoggable(f10072do, 3)) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("Illegal tagValueOffset=");
                                sb4.append(i3);
                                sb4.append(" tagType=");
                                sb4.append((int) sM11691do3);
                            }
                        } else if (Log.isLoggable(f10072do, 3)) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("Got byte count > 4, not orientation, continuing, formatCode=");
                            sb5.append((int) sM11691do4);
                        }
                    }
                } else if (Log.isLoggable(f10072do, 3)) {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Got invalid format code = ");
                    sb6.append((int) sM11691do4);
                }
            }
        }
        return -1;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private ImageHeaderParser.ImageType m11685for(Reader reader) throws IOException {
        try {
            int uInt16 = reader.getUInt16();
            if (uInt16 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int uInt8 = (uInt16 << 8) | reader.getUInt8();
            if (uInt8 == f10077if) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int uInt82 = (uInt8 << 8) | reader.getUInt8();
            if (uInt82 == f10075for) {
                reader.skip(21L);
                try {
                    return reader.getUInt8() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.Cdo unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (uInt82 != f10084super) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            reader.skip(4L);
            if (((reader.getUInt16() << 16) | reader.getUInt16()) != f10087throw) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int uInt162 = (reader.getUInt16() << 16) | reader.getUInt16();
            if ((uInt162 & (-256)) != f10089while) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i = uInt162 & 255;
            if (i == 88) {
                reader.skip(4L);
                return (reader.getUInt8() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            if (i != 76) {
                return ImageHeaderParser.ImageType.WEBP;
            }
            reader.skip(4L);
            return (reader.getUInt8() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
        } catch (Reader.Cdo unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private int m11686goto(Reader reader, byte[] bArr, int i) throws IOException {
        int i2 = reader.read(bArr, i);
        if (i2 == i) {
            if (m11689try(bArr, i)) {
                return m11684else(new Cif(bArr, i));
            }
            Log.isLoggable(f10072do, 3);
            return -1;
        }
        if (Log.isLoggable(f10072do, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to read exif segment data, length: ");
            sb.append(i);
            sb.append(", actually read: ");
            sb.append(i2);
        }
        return -1;
    }

    /* renamed from: if, reason: not valid java name */
    private int m11687if(Reader reader, ArrayPool arrayPool) throws IOException {
        try {
            int uInt16 = reader.getUInt16();
            if (!m11688new(uInt16)) {
                if (Log.isLoggable(f10072do, 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Parser doesn't handle magic number: ");
                    sb.append(uInt16);
                }
                return -1;
            }
            int iM11682case = m11682case(reader);
            if (iM11682case == -1) {
                Log.isLoggable(f10072do, 3);
                return -1;
            }
            byte[] bArr = (byte[]) arrayPool.get(iM11682case, byte[].class);
            try {
                return m11686goto(reader, bArr, iM11682case);
            } finally {
                arrayPool.put(bArr);
            }
        } catch (Reader.Cdo unused) {
            return -1;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m11688new(int i) {
        return (i & f10080new) == 65496 || i == f10088try || i == f10068case;
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m11689try(byte[] bArr, int i) {
        boolean z = bArr != null && i > f10076goto.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = f10076goto;
                if (i2 >= bArr2.length) {
                    break;
                }
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
                i2++;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int getOrientation(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        return m11687if(new Cfor((InputStream) cf1.m900new(inputStream)), (ArrayPool) cf1.m900new(arrayPool));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull InputStream inputStream) throws IOException {
        return m11685for(new Cfor((InputStream) cf1.m900new(inputStream)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull ByteBuffer byteBuffer) throws IOException {
        return m11685for(new Cdo((ByteBuffer) cf1.m900new(byteBuffer)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int getOrientation(@NonNull ByteBuffer byteBuffer, @NonNull ArrayPool arrayPool) throws IOException {
        return m11687if(new Cdo((ByteBuffer) cf1.m900new(byteBuffer)), (ArrayPool) cf1.m900new(arrayPool));
    }
}
