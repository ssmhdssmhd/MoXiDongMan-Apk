package com.luck.picture.lib.compress;

import android.graphics.BitmapFactory;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* renamed from: com.luck.picture.lib.compress.do, reason: invalid class name */
/* loaded from: classes2.dex */
enum Cdo {
    SINGLE;


    /* renamed from: do, reason: not valid java name */
    private static final String f18625do = "Luban";

    /* renamed from: if, reason: not valid java name */
    private static final String f18627if = ".jpg";
    private final byte[] JPEG_SIGNATURE = {-1, -40, -1};

    Cdo() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x005c, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005f, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0060, code lost:
    
        r3 = 0;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m22978do(byte[] bArr) {
        int i;
        int iM22979for;
        int i2;
        if (bArr == null) {
            return 0;
        }
        int i3 = 0;
        while (true) {
            if (i3 + 3 >= bArr.length) {
                break;
            }
            int i4 = i3 + 1;
            if ((bArr[i3] & 255) != 255) {
                break;
            }
            int i5 = bArr[i4] & 255;
            if (i5 != 255) {
                i4++;
                if (i5 != 216 && i5 != 1) {
                    if (i5 != 217 && i5 != 218) {
                        int iM22979for2 = m22979for(bArr, i4, 2, false);
                        if (iM22979for2 >= 2 && (i2 = i4 + iM22979for2) <= bArr.length) {
                            if (i5 == 225 && iM22979for2 >= 8 && m22979for(bArr, i4 + 2, 4, false) == 1165519206 && m22979for(bArr, i4 + 6, 2, false) == 0) {
                                i3 = i4 + 8;
                                i = iM22979for2 - 8;
                                break;
                            }
                            i3 = i2;
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            i3 = i4;
        }
        if (i <= 8 || !((iM22979for = m22979for(bArr, i3, 4, false)) == 1229531648 || iM22979for == 1296891946)) {
            return 0;
        }
        boolean z = iM22979for == 1229531648;
        int iM22979for3 = m22979for(bArr, i3 + 4, 4, z) + 2;
        if (iM22979for3 >= 10 && iM22979for3 <= i) {
            int i6 = i3 + iM22979for3;
            int i7 = i - iM22979for3;
            int iM22979for4 = m22979for(bArr, i6 - 2, 2, z);
            while (true) {
                int i8 = iM22979for4 - 1;
                if (iM22979for4 <= 0 || i7 < 12) {
                    break;
                }
                if (m22979for(bArr, i6, 2, z) == 274) {
                    int iM22979for5 = m22979for(bArr, i6 + 8, 2, z);
                    if (iM22979for5 == 3) {
                        return 180;
                    }
                    if (iM22979for5 != 6) {
                        return iM22979for5 != 8 ? 0 : 270;
                    }
                    return 90;
                }
                i6 += 12;
                i7 -= 12;
                iM22979for4 = i8;
            }
        }
        return 0;
    }

    /* renamed from: for, reason: not valid java name */
    private int m22979for(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        if (z) {
            i += i2 - 1;
            i3 = -1;
        } else {
            i3 = 1;
        }
        int i4 = 0;
        while (true) {
            int i5 = i2 - 1;
            if (i2 <= 0) {
                return i4;
            }
            i4 = (bArr[i] & 255) | (i4 << 8);
            i += i3;
            i2 = i5;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m22980if(byte[] bArr) {
        if (bArr == null || bArr.length < 3) {
            return false;
        }
        return Arrays.equals(this.JPEG_SIGNATURE, new byte[]{bArr[0], bArr[1], bArr[2]});
    }

    /* renamed from: new, reason: not valid java name */
    private byte[] m22981new(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                try {
                    int i = inputStream.read(bArr, 0, 4096);
                    if (i != -1) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    } else {
                        try {
                            break;
                        } catch (IOException unused) {
                        }
                    }
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            } catch (Exception unused3) {
                byte[] bArr2 = new byte[0];
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused4) {
                }
                return bArr2;
            }
        }
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public String extSuffix(InputStreamProvider inputStreamProvider) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStreamProvider.open(), null, options);
            return options.outMimeType.replace("image/", ".");
        } catch (Exception unused) {
            return f18627if;
        }
    }

    public int getOrientation(InputStream inputStream) {
        return m22978do(m22981new(inputStream));
    }

    public boolean isJPG(InputStream inputStream) {
        return m22980if(m22981new(inputStream));
    }

    public boolean needCompress(int i, String str) {
        if (i <= 0 || TextUtils.isEmpty(str)) {
            return true;
        }
        File file = new File(str);
        return file.exists() && file.length() > ((long) (i << 10));
    }
}
