package com.google.common.net;

import android.support.v4.ab2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Csuper;
import com.google.common.base.Splitter;
import com.google.common.collect.r1;
import com.google.common.hash.Cconst;
import com.google.common.primitives.Cthis;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.Ctry;

@li0
@o8
/* renamed from: com.google.common.net.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final int f15477do = 4;

    /* renamed from: if, reason: not valid java name */
    private static final int f15479if = 8;

    /* renamed from: for, reason: not valid java name */
    private static final Splitter f15478for = Splitter.m14989goto(Ctry.f28883do).m14995case(4);

    /* renamed from: new, reason: not valid java name */
    private static final Splitter f15480new = Splitter.m14989goto(':').m14995case(10);

    /* renamed from: try, reason: not valid java name */
    private static final Inet4Address f15481try = (Inet4Address) m17432else("127.0.0.1");

    /* renamed from: case, reason: not valid java name */
    private static final Inet4Address f15476case = (Inet4Address) m17432else("0.0.0.0");

    @o8
    /* renamed from: com.google.common.net.if$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final Inet4Address f15482do;

        /* renamed from: for, reason: not valid java name */
        private final int f15483for;

        /* renamed from: if, reason: not valid java name */
        private final Inet4Address f15484if;

        /* renamed from: new, reason: not valid java name */
        private final int f15485new;

        public Cdo(@b51 Inet4Address inet4Address, @b51 Inet4Address inet4Address2, int i, int i2) {
            af1.m202catch(i >= 0 && i <= 65535, "port '%s' is out of range (0 <= port <= 0xffff)", i);
            af1.m202catch(i2 >= 0 && i2 <= 65535, "flags '%s' is out of range (0 <= flags <= 0xffff)", i2);
            this.f15482do = (Inet4Address) Csuper.m15183do(inet4Address, Cif.f15476case);
            this.f15484if = (Inet4Address) Csuper.m15183do(inet4Address2, Cif.f15476case);
            this.f15483for = i;
            this.f15485new = i2;
        }

        /* renamed from: do, reason: not valid java name */
        public Inet4Address m17462do() {
            return this.f15484if;
        }

        /* renamed from: for, reason: not valid java name */
        public int m17463for() {
            return this.f15483for;
        }

        /* renamed from: if, reason: not valid java name */
        public int m17464if() {
            return this.f15485new;
        }

        /* renamed from: new, reason: not valid java name */
        public Inet4Address m17465new() {
            return this.f15482do;
        }
    }

    private Cif() {
    }

    public static BigInteger a(InetAddress inetAddress) {
        return new BigInteger(1, inetAddress.getAddress());
    }

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m17423abstract(Inet6Address inet6Address) {
        if (m17460volatile(inet6Address)) {
            return false;
        }
        byte[] address = inet6Address.getAddress();
        return (address[8] | 3) == 3 && address[9] == 0 && address[10] == 94 && address[11] == -2;
    }

    public static String b(InetAddress inetAddress) {
        if (!(inetAddress instanceof Inet6Address)) {
            return m17454synchronized(inetAddress);
        }
        return "[" + m17454synchronized(inetAddress) + "]";
    }

    /* renamed from: break, reason: not valid java name */
    private static IllegalArgumentException m17424break(String str, Object... objArr) {
        return new IllegalArgumentException(String.format(Locale.ROOT, str, objArr));
    }

    /* renamed from: case, reason: not valid java name */
    public static InetAddress m17425case(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        int length = address.length - 1;
        while (length >= 0 && address[length] == 0) {
            address[length] = -1;
            length--;
        }
        af1.m225return(length >= 0, "Decrementing %s would wrap.", inetAddress);
        address[length] = (byte) (address[length] - 1);
        return m17438if(address);
    }

    /* renamed from: catch, reason: not valid java name */
    private static InetAddress m17426catch(BigInteger bigInteger, boolean z) {
        af1.m235try(bigInteger.signum() >= 0, "BigInteger must be greater than or equal to 0");
        int i = z ? 16 : 4;
        byte[] byteArray = bigInteger.toByteArray();
        byte[] bArr = new byte[i];
        int iMax = Math.max(0, byteArray.length - i);
        int length = byteArray.length - iMax;
        int i2 = i - length;
        for (int i3 = 0; i3 < iMax; i3++) {
            if (byteArray[i3] != 0) {
                throw m17424break("BigInteger cannot be converted to InetAddress because it has more than %d bytes: %s", Integer.valueOf(i), bigInteger);
            }
        }
        System.arraycopy(byteArray, iMax, bArr, i2, length);
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static Inet4Address m17427class(BigInteger bigInteger) {
        return (Inet4Address) m17426catch(bigInteger, false);
    }

    /* renamed from: const, reason: not valid java name */
    public static Inet6Address m17428const(BigInteger bigInteger) {
        return (Inet6Address) m17426catch(bigInteger, true);
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m17429continue(String str) {
        byte[] bArrM17433extends = m17433extends(str);
        if (bArrM17433extends == null || bArrM17433extends.length != 16) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i >= 10) {
                for (int i2 = 10; i2 < 12; i2++) {
                    if (bArrM17433extends[i2] != -1) {
                        return false;
                    }
                }
                return true;
            }
            if (bArrM17433extends[i] != 0) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static InetAddress m17430default(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        int length = address.length - 1;
        while (true) {
            if (length < 0 || address[length] != -1) {
                break;
            }
            address[length] = 0;
            length--;
        }
        af1.m225return(length >= 0, "Incrementing %s would wrap.", inetAddress);
        address[length] = (byte) (address[length] + 1);
        return m17438if(address);
    }

    /* renamed from: else, reason: not valid java name */
    public static InetAddress m17432else(String str) {
        byte[] bArrM17433extends = m17433extends(str);
        if (bArrM17433extends != null) {
            return m17438if(bArrM17433extends);
        }
        throw m17424break("'%s' is not an IP string literal.", str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0032, code lost:
    
        if (r3 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0034, code lost:
    
        if (r2 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0036, code lost:
    
        r9 = m17459try(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003a, code lost:
    
        if (r9 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003c, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
    
        if (r1 == (-1)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003f, code lost:
    
        r9 = r9.substring(0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:
    
        return m17441instanceof(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0048, code lost:
    
        if (r2 == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004e, code lost:
    
        return m17439implements(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004f, code lost:
    
        return null;
     */
    @b51
    /* renamed from: extends, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] m17433extends(String str) {
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            if (i >= str.length()) {
                i = -1;
                break;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt == '.') {
                z = true;
            } else if (cCharAt == ':') {
                if (z) {
                    return null;
                }
                z2 = true;
            } else {
                if (cCharAt == '%') {
                    break;
                }
                if (Character.digit(cCharAt, 16) == -1) {
                    return null;
                }
            }
            i++;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static Inet4Address m17434final(int i) {
        return m17448public(Cthis.m17696private(i));
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m17435finally(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        return address[0] == 32 && address[1] == 2;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m17436for(InetAddress inetAddress) {
        return com.google.common.io.Ctry.m17178goto(m17461while(inetAddress).getAddress()).readInt();
    }

    /* renamed from: goto, reason: not valid java name */
    public static InetAddress m17437goto(String str) {
        InetAddress inetAddressM17455this = m17455this(str);
        if (inetAddressM17455this != null) {
            return inetAddressM17455this;
        }
        throw m17424break("Not a valid URI IP literal: '%s'", str);
    }

    /* renamed from: if, reason: not valid java name */
    private static InetAddress m17438if(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError(e);
        }
    }

    @b51
    /* renamed from: implements, reason: not valid java name */
    private static byte[] m17439implements(String str) {
        byte[] bArr = new byte[4];
        try {
            Iterator<String> it = f15478for.m14997final(str).iterator();
            int i = 0;
            while (it.hasNext()) {
                int i2 = i + 1;
                bArr[i] = m17458transient(it.next());
                i = i2;
            }
            if (i == 4) {
                return bArr;
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static Inet4Address m17440import(Inet6Address inet6Address) {
        af1.m225return(m17445package(inet6Address), "Address '%s' is not IPv4-compatible.", m17454synchronized(inet6Address));
        return m17448public(Arrays.copyOfRange(inet6Address.getAddress(), 12, 16));
    }

    @b51
    /* renamed from: instanceof, reason: not valid java name */
    private static byte[] m17441instanceof(String str) {
        int size;
        int size2;
        List<String> listM15002super = f15480new.m15002super(str);
        if (listM15002super.size() < 3 || listM15002super.size() > 9) {
            return null;
        }
        int i = -1;
        for (int i2 = 1; i2 < listM15002super.size() - 1; i2++) {
            if (listM15002super.get(i2).length() == 0) {
                if (i >= 0) {
                    return null;
                }
                i = i2;
            }
        }
        if (i >= 0) {
            size2 = (listM15002super.size() - i) - 1;
            if (listM15002super.get(0).length() == 0) {
                size = i - 1;
                if (size != 0) {
                    return null;
                }
            } else {
                size = i;
            }
            if (((String) r1.m16204switch(listM15002super)).length() == 0 && size2 - 1 != 0) {
                return null;
            }
        } else {
            size = listM15002super.size();
            size2 = 0;
        }
        int i3 = 8 - (size + size2);
        if (i < 0 ? i3 != 0 : i3 < 1) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        for (int i4 = 0; i4 < size; i4++) {
            try {
                byteBufferAllocate.putShort(m17447protected(listM15002super.get(i4)));
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        for (int i5 = 0; i5 < i3; i5++) {
            byteBufferAllocate.putShort((short) 0);
        }
        while (size2 > 0) {
            byteBufferAllocate.putShort(m17447protected(listM15002super.get(listM15002super.size() - size2)));
            size2--;
        }
        return byteBufferAllocate.array();
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m17442interface(String str) {
        return m17455this(str) != null;
    }

    /* renamed from: native, reason: not valid java name */
    public static Inet4Address m17443native(Inet6Address inet6Address) {
        if (m17445package(inet6Address)) {
            return m17440import(inet6Address);
        }
        if (m17435finally(inet6Address)) {
            return m17456throw(inet6Address);
        }
        if (m17460volatile(inet6Address)) {
            return m17450static(inet6Address).m17462do();
        }
        throw m17424break("'%s' has no embedded IPv4 address.", m17454synchronized(inet6Address));
    }

    /* renamed from: new, reason: not valid java name */
    private static void m17444new(int[] iArr) {
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < iArr.length + 1; i4++) {
            if (i4 >= iArr.length || iArr[i4] != 0) {
                if (i3 >= 0) {
                    int i5 = i4 - i3;
                    if (i5 > i) {
                        i2 = i3;
                        i = i5;
                    }
                    i3 = -1;
                }
            } else if (i3 < 0) {
                i3 = i4;
            }
        }
        if (i >= 2) {
            Arrays.fill(iArr, i2, i + i2, -1);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m17445package(Inet6Address inet6Address) {
        if (!inet6Address.isIPv4CompatibleAddress()) {
            return false;
        }
        byte[] address = inet6Address.getAddress();
        return (address[12] == 0 && address[13] == 0 && address[14] == 0 && (address[15] == 0 || address[15] == 1)) ? false : true;
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m17446private(String str) {
        return m17433extends(str) != null;
    }

    /* renamed from: protected, reason: not valid java name */
    private static short m17447protected(String str) throws NumberFormatException {
        int i = Integer.parseInt(str, 16);
        if (i <= 65535) {
            return (short) i;
        }
        throw new NumberFormatException();
    }

    /* renamed from: public, reason: not valid java name */
    private static Inet4Address m17448public(byte[] bArr) {
        af1.m202catch(bArr.length == 4, "Byte array has invalid length for an IPv4 address: %s != 4.", bArr.length);
        return (Inet4Address) m17438if(bArr);
    }

    /* renamed from: return, reason: not valid java name */
    public static Inet4Address m17449return(Inet6Address inet6Address) {
        af1.m225return(m17423abstract(inet6Address), "Address '%s' is not an ISATAP address.", m17454synchronized(inet6Address));
        return m17448public(Arrays.copyOfRange(inet6Address.getAddress(), 12, 16));
    }

    /* renamed from: static, reason: not valid java name */
    public static Cdo m17450static(Inet6Address inet6Address) {
        af1.m225return(m17460volatile(inet6Address), "Address '%s' is not a Teredo address.", m17454synchronized(inet6Address));
        byte[] address = inet6Address.getAddress();
        Inet4Address inet4AddressM17448public = m17448public(Arrays.copyOfRange(address, 4, 8));
        int i = com.google.common.io.Ctry.m17188this(address, 8).readShort() & ab2.f80for;
        int i2 = 65535 & (com.google.common.io.Ctry.m17188this(address, 10).readShort() ^ (-1));
        byte[] bArrCopyOfRange = Arrays.copyOfRange(address, 12, 16);
        for (int i3 = 0; i3 < bArrCopyOfRange.length; i3++) {
            bArrCopyOfRange[i3] = (byte) (bArrCopyOfRange[i3] ^ (-1));
        }
        return new Cdo(inet4AddressM17448public, m17448public(bArrCopyOfRange), i2, i);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m17451strictfp(InetAddress inetAddress) {
        for (byte b : inetAddress.getAddress()) {
            if (b != -1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    public static InetAddress m17452super(byte[] bArr) throws UnknownHostException {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[(bArr.length - i) - 1];
        }
        return InetAddress.getByAddress(bArr2);
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m17453switch(Inet6Address inet6Address) {
        return m17445package(inet6Address) || m17435finally(inet6Address) || m17460volatile(inet6Address);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static String m17454synchronized(InetAddress inetAddress) {
        af1.m205continue(inetAddress);
        if (inetAddress instanceof Inet4Address) {
            return inetAddress.getHostAddress();
        }
        af1.m220new(inetAddress instanceof Inet6Address);
        byte[] address = inetAddress.getAddress();
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            int i2 = i * 2;
            iArr[i] = Cthis.m17679catch((byte) 0, (byte) 0, address[i2], address[i2 + 1]);
        }
        m17444new(iArr);
        return m17457throws(iArr);
    }

    @b51
    /* renamed from: this, reason: not valid java name */
    private static InetAddress m17455this(String str) {
        int i;
        af1.m205continue(str);
        if (str.startsWith("[") && str.endsWith("]")) {
            str = str.substring(1, str.length() - 1);
            i = 16;
        } else {
            i = 4;
        }
        byte[] bArrM17433extends = m17433extends(str);
        if (bArrM17433extends == null || bArrM17433extends.length != i) {
            return null;
        }
        return m17438if(bArrM17433extends);
    }

    /* renamed from: throw, reason: not valid java name */
    public static Inet4Address m17456throw(Inet6Address inet6Address) {
        af1.m225return(m17435finally(inet6Address), "Address '%s' is not a 6to4 address.", m17454synchronized(inet6Address));
        return m17448public(Arrays.copyOfRange(inet6Address.getAddress(), 2, 6));
    }

    /* renamed from: throws, reason: not valid java name */
    private static String m17457throws(int[] iArr) {
        StringBuilder sb = new StringBuilder(39);
        int i = 0;
        boolean z = false;
        while (i < iArr.length) {
            boolean z2 = iArr[i] >= 0;
            if (z2) {
                if (z) {
                    sb.append(':');
                }
                sb.append(Integer.toHexString(iArr[i]));
            } else if (i == 0 || z) {
                sb.append("::");
            }
            i++;
            z = z2;
        }
        return sb.toString();
    }

    /* renamed from: transient, reason: not valid java name */
    private static byte m17458transient(String str) throws NumberFormatException {
        int i = Integer.parseInt(str);
        if (i > 255 || (str.startsWith("0") && str.length() > 1)) {
            throw new NumberFormatException();
        }
        return (byte) i;
    }

    @b51
    /* renamed from: try, reason: not valid java name */
    private static String m17459try(String str) {
        int iLastIndexOf = str.lastIndexOf(58) + 1;
        String strSubstring = str.substring(0, iLastIndexOf);
        byte[] bArrM17439implements = m17439implements(str.substring(iLastIndexOf));
        if (bArrM17439implements == null) {
            return null;
        }
        return strSubstring + Integer.toHexString(((bArrM17439implements[0] & 255) << 8) | (bArrM17439implements[1] & 255)) + ":" + Integer.toHexString((bArrM17439implements[3] & 255) | ((bArrM17439implements[2] & 255) << 8));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static boolean m17460volatile(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        return address[0] == 32 && address[1] == 1 && address[2] == 0 && address[3] == 0;
    }

    /* renamed from: while, reason: not valid java name */
    public static Inet4Address m17461while(InetAddress inetAddress) {
        boolean z;
        if (inetAddress instanceof Inet4Address) {
            return (Inet4Address) inetAddress;
        }
        byte[] address = inetAddress.getAddress();
        int i = 0;
        while (true) {
            if (i >= 15) {
                z = true;
                break;
            }
            if (address[i] != 0) {
                z = false;
                break;
            }
            i++;
        }
        if (z && address[15] == 1) {
            return f15481try;
        }
        if (z && address[15] == 0) {
            return f15476case;
        }
        Inet6Address inet6Address = (Inet6Address) inetAddress;
        int iAsInt = Cconst.m16902default().hashLong(m17453switch(inet6Address) ? m17443native(inet6Address).hashCode() : ByteBuffer.wrap(inet6Address.getAddress(), 0, 8).getLong()).asInt() | (-536870912);
        if (iAsInt == -1) {
            iAsInt = -2;
        }
        return m17448public(Cthis.m17696private(iAsInt));
    }
}
