package com.yalantis.ucrop.util;

import android.media.ExifInterface;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public class ImageHeaderParser {

    /* renamed from: break, reason: not valid java name */
    private static final int f23070break = 217;

    /* renamed from: case, reason: not valid java name */
    private static final int f23071case = 18761;

    /* renamed from: catch, reason: not valid java name */
    private static final int f23072catch = 255;

    /* renamed from: class, reason: not valid java name */
    private static final int f23073class = 225;

    /* renamed from: const, reason: not valid java name */
    private static final int f23074const = 274;

    /* renamed from: for, reason: not valid java name */
    public static final int f23077for = -1;

    /* renamed from: if, reason: not valid java name */
    private static final String f23079if = "ImageHeaderParser";

    /* renamed from: new, reason: not valid java name */
    private static final int f23080new = 65496;

    /* renamed from: this, reason: not valid java name */
    private static final int f23081this = 218;

    /* renamed from: try, reason: not valid java name */
    private static final int f23082try = 19789;

    /* renamed from: do, reason: not valid java name */
    private final Reader f23083do;

    /* renamed from: else, reason: not valid java name */
    private static final String f23075else = "Exif\u0000\u0000";

    /* renamed from: goto, reason: not valid java name */
    private static final byte[] f23078goto = f23075else.getBytes(Charset.forName("UTF-8"));

    /* renamed from: final, reason: not valid java name */
    private static final int[] f23076final = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public interface Reader {
        int getUInt16() throws IOException;

        short getUInt8() throws IOException;

        int read(byte[] bArr, int i) throws IOException;

        long skip(long j) throws IOException;
    }

    /* renamed from: com.yalantis.ucrop.util.ImageHeaderParser$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final ByteBuffer f23084do;

        public Cdo(byte[] bArr, int i) {
            this.f23084do = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: do, reason: not valid java name */
        public short m27483do(int i) {
            return this.f23084do.getShort(i);
        }

        /* renamed from: for, reason: not valid java name */
        public int m27484for() {
            return this.f23084do.remaining();
        }

        /* renamed from: if, reason: not valid java name */
        public int m27485if(int i) {
            return this.f23084do.getInt(i);
        }

        /* renamed from: new, reason: not valid java name */
        public void m27486new(ByteOrder byteOrder) {
            this.f23084do.order(byteOrder);
        }
    }

    /* renamed from: com.yalantis.ucrop.util.ImageHeaderParser$if, reason: invalid class name */
    public static class Cif implements Reader {

        /* renamed from: do, reason: not valid java name */
        private final InputStream f23085do;

        public Cif(InputStream inputStream) {
            this.f23085do = inputStream;
        }

        @Override // com.yalantis.ucrop.util.ImageHeaderParser.Reader
        public int getUInt16() throws IOException {
            return ((this.f23085do.read() << 8) & 65280) | (this.f23085do.read() & 255);
        }

        @Override // com.yalantis.ucrop.util.ImageHeaderParser.Reader
        public short getUInt8() throws IOException {
            return (short) (this.f23085do.read() & 255);
        }

        @Override // com.yalantis.ucrop.util.ImageHeaderParser.Reader
        public int read(byte[] bArr, int i) throws IOException {
            int i2 = i;
            while (i2 > 0) {
                int i3 = this.f23085do.read(bArr, i - i2, i2);
                if (i3 == -1) {
                    break;
                }
                i2 -= i3;
            }
            return i - i2;
        }

        @Override // com.yalantis.ucrop.util.ImageHeaderParser.Reader
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long jSkip = this.f23085do.skip(j2);
                if (jSkip <= 0) {
                    if (this.f23085do.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j2 -= jSkip;
            }
            return j - j2;
        }
    }

    public ImageHeaderParser(InputStream inputStream) {
        this.f23083do = new Cif(inputStream);
    }

    /* renamed from: case, reason: not valid java name */
    private int m27475case() throws IOException {
        short uInt8;
        int uInt16;
        long j;
        long jSkip;
        do {
            short uInt82 = this.f23083do.getUInt8();
            if (uInt82 != 255) {
                if (Log.isLoggable(f23079if, 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unknown segmentId=");
                    sb.append((int) uInt82);
                }
                return -1;
            }
            uInt8 = this.f23083do.getUInt8();
            if (uInt8 == f23081this) {
                return -1;
            }
            if (uInt8 == f23070break) {
                Log.isLoggable(f23079if, 3);
                return -1;
            }
            uInt16 = this.f23083do.getUInt16() - 2;
            if (uInt8 == 225) {
                return uInt16;
            }
            j = uInt16;
            jSkip = this.f23083do.skip(j);
        } while (jSkip == j);
        if (Log.isLoggable(f23079if, 3)) {
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
    private static int m27476do(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    /* renamed from: else, reason: not valid java name */
    private static int m27477else(Cdo cdo) {
        ByteOrder byteOrder;
        short sM27483do = cdo.m27483do(6);
        if (sM27483do == f23082try) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (sM27483do == f23071case) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable(f23079if, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unknown endianness = ");
                sb.append((int) sM27483do);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        cdo.m27486new(byteOrder);
        int iM27485if = cdo.m27485if(10) + 6;
        short sM27483do2 = cdo.m27483do(iM27485if);
        for (int i = 0; i < sM27483do2; i++) {
            int iM27476do = m27476do(iM27485if, i);
            short sM27483do3 = cdo.m27483do(iM27476do);
            if (sM27483do3 == f23074const) {
                short sM27483do4 = cdo.m27483do(iM27476do + 2);
                if (sM27483do4 >= 1 && sM27483do4 <= 12) {
                    int iM27485if2 = cdo.m27485if(iM27476do + 4);
                    if (iM27485if2 < 0) {
                        Log.isLoggable(f23079if, 3);
                    } else {
                        if (Log.isLoggable(f23079if, 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Got tagIndex=");
                            sb2.append(i);
                            sb2.append(" tagType=");
                            sb2.append((int) sM27483do3);
                            sb2.append(" formatCode=");
                            sb2.append((int) sM27483do4);
                            sb2.append(" componentCount=");
                            sb2.append(iM27485if2);
                        }
                        int i2 = iM27485if2 + f23076final[sM27483do4];
                        if (i2 <= 4) {
                            int i3 = iM27476do + 8;
                            if (i3 >= 0 && i3 <= cdo.m27484for()) {
                                if (i2 >= 0 && i2 + i3 <= cdo.m27484for()) {
                                    return cdo.m27483do(i3);
                                }
                                if (Log.isLoggable(f23079if, 3)) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("Illegal number of bytes for TI tag data tagType=");
                                    sb3.append((int) sM27483do3);
                                }
                            } else if (Log.isLoggable(f23079if, 3)) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("Illegal tagValueOffset=");
                                sb4.append(i3);
                                sb4.append(" tagType=");
                                sb4.append((int) sM27483do3);
                            }
                        } else if (Log.isLoggable(f23079if, 3)) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("Got byte count > 4, not orientation, continuing, formatCode=");
                            sb5.append((int) sM27483do4);
                        }
                    }
                } else if (Log.isLoggable(f23079if, 3)) {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Got invalid format code = ");
                    sb6.append((int) sM27483do4);
                }
            }
        }
        return -1;
    }

    /* renamed from: goto, reason: not valid java name */
    private int m27478goto(byte[] bArr, int i) throws IOException {
        int i2 = this.f23083do.read(bArr, i);
        if (i2 == i) {
            if (m27481try(bArr, i)) {
                return m27477else(new Cdo(bArr, i));
            }
            Log.isLoggable(f23079if, 3);
            return -1;
        }
        if (Log.isLoggable(f23079if, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to read exif segment data, length: ");
            sb.append(i);
            sb.append(", actually read: ");
            sb.append(i2);
        }
        return -1;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m27479if(ExifInterface exifInterface, int i, int i2, String str) throws IOException {
        String[] strArr = {androidx.exifinterface.media.ExifInterface.TAG_F_NUMBER, androidx.exifinterface.media.ExifInterface.TAG_DATETIME, androidx.exifinterface.media.ExifInterface.TAG_DATETIME_DIGITIZED, androidx.exifinterface.media.ExifInterface.TAG_EXPOSURE_TIME, androidx.exifinterface.media.ExifInterface.TAG_FLASH, androidx.exifinterface.media.ExifInterface.TAG_FOCAL_LENGTH, androidx.exifinterface.media.ExifInterface.TAG_GPS_ALTITUDE, androidx.exifinterface.media.ExifInterface.TAG_GPS_ALTITUDE_REF, androidx.exifinterface.media.ExifInterface.TAG_GPS_DATESTAMP, androidx.exifinterface.media.ExifInterface.TAG_GPS_LATITUDE, androidx.exifinterface.media.ExifInterface.TAG_GPS_LATITUDE_REF, androidx.exifinterface.media.ExifInterface.TAG_GPS_LONGITUDE, androidx.exifinterface.media.ExifInterface.TAG_GPS_LONGITUDE_REF, androidx.exifinterface.media.ExifInterface.TAG_GPS_PROCESSING_METHOD, androidx.exifinterface.media.ExifInterface.TAG_GPS_TIMESTAMP, androidx.exifinterface.media.ExifInterface.TAG_ISO_SPEED_RATINGS, androidx.exifinterface.media.ExifInterface.TAG_MAKE, androidx.exifinterface.media.ExifInterface.TAG_MODEL, androidx.exifinterface.media.ExifInterface.TAG_SUBSEC_TIME, androidx.exifinterface.media.ExifInterface.TAG_SUBSEC_TIME_DIGITIZED, androidx.exifinterface.media.ExifInterface.TAG_SUBSEC_TIME_ORIGINAL, androidx.exifinterface.media.ExifInterface.TAG_WHITE_BALANCE};
        try {
            ExifInterface exifInterface2 = new ExifInterface(str);
            if (exifInterface != null) {
                for (int i3 = 0; i3 < 22; i3++) {
                    String str2 = strArr[i3];
                    String attribute = exifInterface.getAttribute(str2);
                    if (!TextUtils.isEmpty(attribute)) {
                        exifInterface2.setAttribute(str2, attribute);
                    }
                }
            }
            exifInterface2.setAttribute(androidx.exifinterface.media.ExifInterface.TAG_IMAGE_WIDTH, String.valueOf(i));
            exifInterface2.setAttribute(androidx.exifinterface.media.ExifInterface.TAG_IMAGE_LENGTH, String.valueOf(i2));
            exifInterface2.setAttribute(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, "0");
            exifInterface2.saveAttributes();
        } catch (IOException e) {
            e.getMessage();
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m27480new(int i) {
        return (i & 65496) == 65496 || i == f23082try || i == f23071case;
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m27481try(byte[] bArr, int i) {
        boolean z = bArr != null && i > f23078goto.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = f23078goto;
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

    /* renamed from: for, reason: not valid java name */
    public int m27482for() throws IOException {
        int uInt16 = this.f23083do.getUInt16();
        if (m27480new(uInt16)) {
            int iM27475case = m27475case();
            if (iM27475case != -1) {
                return m27478goto(new byte[iM27475case], iM27475case);
            }
            Log.isLoggable(f23079if, 3);
            return -1;
        }
        if (Log.isLoggable(f23079if, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Parser doesn't handle magic number: ");
            sb.append(uInt16);
        }
        return -1;
    }
}
