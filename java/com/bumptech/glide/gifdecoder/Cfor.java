package com.bumptech.glide.gifdecoder;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* renamed from: com.bumptech.glide.gifdecoder.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor {

    /* renamed from: break, reason: not valid java name */
    private static final int f9366break = 249;

    /* renamed from: case, reason: not valid java name */
    private static final int f9367case = 255;

    /* renamed from: catch, reason: not valid java name */
    private static final int f9368catch = 255;

    /* renamed from: class, reason: not valid java name */
    private static final int f9369class = 254;

    /* renamed from: const, reason: not valid java name */
    private static final int f9370const = 1;

    /* renamed from: else, reason: not valid java name */
    private static final int f9371else = 44;

    /* renamed from: final, reason: not valid java name */
    private static final int f9372final = 28;

    /* renamed from: goto, reason: not valid java name */
    private static final int f9373goto = 33;

    /* renamed from: import, reason: not valid java name */
    private static final int f9374import = 64;

    /* renamed from: native, reason: not valid java name */
    private static final int f9375native = 7;

    /* renamed from: public, reason: not valid java name */
    private static final int f9376public = 128;

    /* renamed from: return, reason: not valid java name */
    private static final int f9377return = 7;

    /* renamed from: static, reason: not valid java name */
    public static final int f9378static = 2;

    /* renamed from: super, reason: not valid java name */
    private static final int f9379super = 2;

    /* renamed from: switch, reason: not valid java name */
    public static final int f9380switch = 10;

    /* renamed from: this, reason: not valid java name */
    private static final int f9381this = 59;

    /* renamed from: throw, reason: not valid java name */
    private static final int f9382throw = 1;

    /* renamed from: throws, reason: not valid java name */
    private static final int f9383throws = 256;

    /* renamed from: try, reason: not valid java name */
    private static final String f9384try = "GifHeaderParser";

    /* renamed from: while, reason: not valid java name */
    private static final int f9385while = 128;

    /* renamed from: for, reason: not valid java name */
    private Cif f9387for;

    /* renamed from: if, reason: not valid java name */
    private ByteBuffer f9388if;

    /* renamed from: do, reason: not valid java name */
    private final byte[] f9386do = new byte[256];

    /* renamed from: new, reason: not valid java name */
    private int f9389new = 0;

    /* renamed from: break, reason: not valid java name */
    private void m11176break(int i) {
        boolean z = false;
        while (!z && !m11184if() && this.f9387for.f9399for <= i) {
            int iM11190try = m11190try();
            if (iM11190try == 33) {
                int iM11190try2 = m11190try();
                if (iM11190try2 == 1) {
                    m11185native();
                } else if (iM11190try2 == f9366break) {
                    this.f9387for.f9402new = new Cdo();
                    m11178catch();
                } else if (iM11190try2 == 254) {
                    m11185native();
                } else if (iM11190try2 != 255) {
                    m11185native();
                } else {
                    m11181else();
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < 11; i2++) {
                        sb.append((char) this.f9386do[i2]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        m11182final();
                    } else {
                        m11185native();
                    }
                }
            } else if (iM11190try == 44) {
                Cif cif = this.f9387for;
                if (cif.f9402new == null) {
                    cif.f9402new = new Cdo();
                }
                m11177case();
            } else if (iM11190try != 59) {
                this.f9387for.f9401if = 1;
            } else {
                z = true;
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    private void m11177case() {
        this.f9387for.f9402new.f9358do = m11187super();
        this.f9387for.f9402new.f9362if = m11187super();
        this.f9387for.f9402new.f9360for = m11187super();
        this.f9387for.f9402new.f9363new = m11187super();
        int iM11190try = m11190try();
        boolean z = (iM11190try & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iM11190try & 7) + 1);
        Cdo cdo = this.f9387for.f9402new;
        cdo.f9365try = (iM11190try & 64) != 0;
        if (z) {
            cdo.f9357catch = m11183goto(iPow);
        } else {
            cdo.f9357catch = null;
        }
        this.f9387for.f9402new.f9355break = this.f9388if.position();
        m11186public();
        if (m11184if()) {
            return;
        }
        Cif cif = this.f9387for;
        cif.f9399for++;
        cif.f9404try.add(cif.f9402new);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m11178catch() {
        m11190try();
        int iM11190try = m11190try();
        Cdo cdo = this.f9387for.f9402new;
        int i = (iM11190try & 28) >> 2;
        cdo.f9359else = i;
        if (i == 0) {
            cdo.f9359else = 1;
        }
        cdo.f9356case = (iM11190try & 1) != 0;
        int iM11187super = m11187super();
        if (iM11187super < 2) {
            iM11187super = 10;
        }
        Cdo cdo2 = this.f9387for.f9402new;
        cdo2.f9364this = iM11187super * 10;
        cdo2.f9361goto = m11190try();
        m11190try();
    }

    /* renamed from: class, reason: not valid java name */
    private void m11179class() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) m11190try());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f9387for.f9401if = 1;
            return;
        }
        m11180const();
        if (!this.f9387for.f9400goto || m11184if()) {
            return;
        }
        Cif cif = this.f9387for;
        cif.f9397do = m11183goto(cif.f9403this);
        Cif cif2 = this.f9387for;
        cif2.f9395class = cif2.f9397do[cif2.f9392break];
    }

    /* renamed from: const, reason: not valid java name */
    private void m11180const() {
        this.f9387for.f9393case = m11187super();
        this.f9387for.f9398else = m11187super();
        int iM11190try = m11190try();
        Cif cif = this.f9387for;
        cif.f9400goto = (iM11190try & 128) != 0;
        cif.f9403this = (int) Math.pow(2.0d, (iM11190try & 7) + 1);
        this.f9387for.f9392break = m11190try();
        this.f9387for.f9394catch = m11190try();
    }

    /* renamed from: else, reason: not valid java name */
    private void m11181else() {
        int iM11190try = m11190try();
        this.f9389new = iM11190try;
        if (iM11190try <= 0) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            try {
                i2 = this.f9389new;
                if (i >= i2) {
                    return;
                }
                i2 -= i;
                this.f9388if.get(this.f9386do, i, i2);
                i += i2;
            } catch (Exception unused) {
                if (Log.isLoggable(f9384try, 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error Reading Block n: ");
                    sb.append(i);
                    sb.append(" count: ");
                    sb.append(i2);
                    sb.append(" blockSize: ");
                    sb.append(this.f9389new);
                }
                this.f9387for.f9401if = 1;
                return;
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m11182final() {
        do {
            m11181else();
            byte[] bArr = this.f9386do;
            if (bArr[0] == 1) {
                this.f9387for.f9396const = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f9389new <= 0) {
                return;
            }
        } while (!m11184if());
    }

    @Nullable
    /* renamed from: goto, reason: not valid java name */
    private int[] m11183goto(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f9388if.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                int i5 = i4 + 1;
                int i6 = i5 + 1;
                int i7 = i2 + 1;
                iArr[i2] = ((bArr[i3] & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3 = i6;
                i2 = i7;
            }
        } catch (BufferUnderflowException unused) {
            Log.isLoggable(f9384try, 3);
            this.f9387for.f9401if = 1;
        }
        return iArr;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m11184if() {
        return this.f9387for.f9401if != 0;
    }

    /* renamed from: native, reason: not valid java name */
    private void m11185native() {
        int iM11190try;
        do {
            iM11190try = m11190try();
            this.f9388if.position(Math.min(this.f9388if.position() + iM11190try, this.f9388if.limit()));
        } while (iM11190try > 0);
    }

    /* renamed from: public, reason: not valid java name */
    private void m11186public() {
        m11190try();
        m11185native();
    }

    /* renamed from: super, reason: not valid java name */
    private int m11187super() {
        return this.f9388if.getShort();
    }

    /* renamed from: this, reason: not valid java name */
    private void m11188this() {
        m11176break(Integer.MAX_VALUE);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m11189throw() {
        this.f9388if = null;
        Arrays.fill(this.f9386do, (byte) 0);
        this.f9387for = new Cif();
        this.f9389new = 0;
    }

    /* renamed from: try, reason: not valid java name */
    private int m11190try() {
        try {
            return this.f9388if.get() & 255;
        } catch (Exception unused) {
            this.f9387for.f9401if = 1;
            return 0;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m11191do() {
        this.f9388if = null;
        this.f9387for = null;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m11192for() {
        m11179class();
        if (!m11184if()) {
            m11176break(2);
        }
        return this.f9387for.f9399for > 1;
    }

    /* renamed from: import, reason: not valid java name */
    public Cfor m11193import(@Nullable byte[] bArr) {
        if (bArr != null) {
            m11195while(ByteBuffer.wrap(bArr));
        } else {
            this.f9388if = null;
            this.f9387for.f9401if = 2;
        }
        return this;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public Cif m11194new() {
        if (this.f9388if == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (m11184if()) {
            return this.f9387for;
        }
        m11179class();
        if (!m11184if()) {
            m11188this();
            Cif cif = this.f9387for;
            if (cif.f9399for < 0) {
                cif.f9401if = 1;
            }
        }
        return this.f9387for;
    }

    /* renamed from: while, reason: not valid java name */
    public Cfor m11195while(@NonNull ByteBuffer byteBuffer) {
        m11189throw();
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f9388if = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.f9388if.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
