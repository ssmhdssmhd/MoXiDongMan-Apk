package okhttp3.dnsoverhttps;

import android.support.v4.ab2;
import android.support.v4.m41;
import java.io.EOFException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.collections.Cthrows;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Cstatic;
import okio.Buffer;
import okio.ByteString;
import okio.Utf8;
import org.apache.commons.lang3.Ctry;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\nR\u0016\u0010\u0011\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0012R\u001e\u0010\u0019\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lokhttp3/dnsoverhttps/DnsRecordCodec;", "", "Lokio/Buffer;", "source", "Landroid/support/v4/ub2;", "skipName", "", "host", "", "type", "Lokio/ByteString;", "encodeQuery", "hostname", "byteString", "", "Ljava/net/InetAddress;", "decodeAnswers", "SERVFAIL", OptRuntime.GeneratorState.resumptionPoint_TYPE, "NXDOMAIN", "TYPE_A", "TYPE_AAAA", "TYPE_PTR", "Ljava/nio/charset/Charset;", "kotlin.jvm.PlatformType", "ASCII", "Ljava/nio/charset/Charset;", "<init>", "()V", "okhttp-dnsoverhttps"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class DnsRecordCodec {
    private static final int NXDOMAIN = 3;
    private static final int SERVFAIL = 2;
    public static final int TYPE_A = 1;
    public static final int TYPE_AAAA = 28;
    private static final int TYPE_PTR = 12;
    public static final DnsRecordCodec INSTANCE = new DnsRecordCodec();
    private static final Charset ASCII = StandardCharsets.US_ASCII;

    private DnsRecordCodec() {
    }

    private final void skipName(Buffer buffer) throws EOFException {
        byte b = buffer.readByte();
        if (b < 0) {
            buffer.skip(1L);
            return;
        }
        while (b > 0) {
            buffer.skip(b);
            b = buffer.readByte();
        }
    }

    @m41
    public final List<InetAddress> decodeAnswers(@m41 String hostname, @m41 ByteString byteString) throws Exception {
        Csuper.m30700throw(hostname, "hostname");
        Csuper.m30700throw(byteString, "byteString");
        ArrayList arrayList = new ArrayList();
        Buffer buffer = new Buffer();
        buffer.write(byteString);
        buffer.readShort();
        int i = buffer.readShort() & ab2.f80for;
        if (!((i >> 15) != 0)) {
            throw new IllegalArgumentException("not a response".toString());
        }
        int i2 = i & 15;
        if (i2 == 3) {
            throw new UnknownHostException(hostname + ": NXDOMAIN");
        }
        if (i2 == 2) {
            throw new UnknownHostException(hostname + ": SERVFAIL");
        }
        int i3 = buffer.readShort() & ab2.f80for;
        int i4 = buffer.readShort() & ab2.f80for;
        buffer.readShort();
        buffer.readShort();
        for (int i5 = 0; i5 < i3; i5++) {
            skipName(buffer);
            buffer.readShort();
            buffer.readShort();
        }
        for (int i6 = 0; i6 < i4; i6++) {
            skipName(buffer);
            int i7 = buffer.readShort() & ab2.f80for;
            buffer.readShort();
            buffer.readInt();
            int i8 = buffer.readShort() & ab2.f80for;
            if (i7 == 1 || i7 == 28) {
                byte[] bArr = new byte[i8];
                buffer.read(bArr);
                InetAddress byAddress = InetAddress.getByAddress(bArr);
                Csuper.m30696super(byAddress, "InetAddress.getByAddress(bytes)");
                arrayList.add(byAddress);
            } else {
                buffer.skip(i8);
            }
        }
        return arrayList;
    }

    @m41
    public final ByteString encodeQuery(@m41 String host, int i) {
        List<String> listM30175continue;
        Csuper.m30700throw(host, "host");
        Buffer buffer = new Buffer();
        buffer.writeShort(0);
        buffer.writeShort(256);
        buffer.writeShort(1);
        buffer.writeShort(0);
        buffer.writeShort(0);
        buffer.writeShort(0);
        Buffer buffer2 = new Buffer();
        List listF4 = Cstatic.f4(host, new char[]{Ctry.f28883do}, false, 0, 6, null);
        if (listF4.isEmpty()) {
            listM30175continue = Cthrow.m30175continue();
        } else {
            ListIterator listIterator = listF4.listIterator(listF4.size());
            while (listIterator.hasPrevious()) {
                if (!(((String) listIterator.previous()).length() == 0)) {
                    listM30175continue = Cthrows.J4(listF4, listIterator.nextIndex() + 1);
                    break;
                }
            }
            listM30175continue = Cthrow.m30175continue();
        }
        for (String str : listM30175continue) {
            long jSize$default = Utf8.size$default(str, 0, 0, 3, null);
            if (!(jSize$default == ((long) str.length()))) {
                throw new IllegalArgumentException(("non-ascii hostname: " + host).toString());
            }
            buffer2.writeByte((int) jSize$default);
            buffer2.writeUtf8(str);
        }
        buffer2.writeByte(0);
        buffer2.copyTo(buffer, 0L, buffer2.size());
        buffer.writeShort(i);
        buffer.writeShort(1);
        return buffer.readByteString();
    }
}
