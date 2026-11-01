package okio;

import android.support.v4.al;
import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.m41;
import android.support.v4.qy0;
import android.support.v4.rx;
import android.support.v4.tp0;
import android.support.v4.wp0;
import android.support.v4.xp0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Objects;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import okio.internal._ByteStringKt;
import org.apache.commons.lang3.Cclass;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0017\b\u0016\u0018\u0000 e2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001eB\u0011\b\u0000\u0012\u0006\u0010W\u001a\u000202¢\u0006\u0004\bc\u0010dJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\nH\u0016J\u0006\u0010\u0010\u001a\u00020\u0000J\u0006\u0010\u0011\u001a\u00020\u0000J\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0000J\u0017\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\nH\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0016J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0016J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0016J\u001f\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0000H\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u001f\u001a\u00020\nH\u0016J\b\u0010 \u001a\u00020\nH\u0016J\b\u0010!\u001a\u00020\u0000H\u0016J\b\u0010\"\u001a\u00020\u0000H\u0016J\u001c\u0010&\u001a\u00020\u00002\b\b\u0002\u0010$\u001a\u00020#2\b\b\u0002\u0010%\u001a\u00020#H\u0017J\u0017\u0010+\u001a\u00020(2\u0006\u0010'\u001a\u00020#H\u0010¢\u0006\u0004\b)\u0010*J\u0018\u0010.\u001a\u00020(2\u0006\u0010,\u001a\u00020#H\u0087\u0002¢\u0006\u0004\b-\u0010*J\u000f\u00101\u001a\u00020#H\u0010¢\u0006\u0004\b/\u00100J\b\u00103\u001a\u000202H\u0016J\u000f\u00106\u001a\u000202H\u0010¢\u0006\u0004\b4\u00105J\b\u00108\u001a\u000207H\u0016J\u0010\u0010:\u001a\u00020\u00052\u0006\u0010\b\u001a\u000209H\u0016J'\u0010:\u001a\u00020\u00052\u0006\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020#2\u0006\u0010>\u001a\u00020#H\u0010¢\u0006\u0004\b?\u0010@J(\u0010D\u001a\u00020C2\u0006\u0010=\u001a\u00020#2\u0006\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020#2\u0006\u0010>\u001a\u00020#H\u0016J(\u0010D\u001a\u00020C2\u0006\u0010=\u001a\u00020#2\u0006\u0010A\u001a\u0002022\u0006\u0010B\u001a\u00020#2\u0006\u0010>\u001a\u00020#H\u0016J,\u0010G\u001a\u00020\u00052\b\b\u0002\u0010=\u001a\u00020#2\u0006\u0010E\u001a\u0002022\b\b\u0002\u0010F\u001a\u00020#2\u0006\u0010>\u001a\u00020#H\u0016J\u000e\u0010I\u001a\u00020C2\u0006\u0010H\u001a\u00020\u0000J\u000e\u0010I\u001a\u00020C2\u0006\u0010H\u001a\u000202J\u000e\u0010K\u001a\u00020C2\u0006\u0010J\u001a\u00020\u0000J\u000e\u0010K\u001a\u00020C2\u0006\u0010J\u001a\u000202J\u001a\u0010M\u001a\u00020#2\u0006\u0010A\u001a\u00020\u00002\b\b\u0002\u0010L\u001a\u00020#H\u0007J\u001a\u0010M\u001a\u00020#2\u0006\u0010A\u001a\u0002022\b\b\u0002\u0010L\u001a\u00020#H\u0017J\u001a\u0010N\u001a\u00020#2\u0006\u0010A\u001a\u00020\u00002\b\b\u0002\u0010L\u001a\u00020#H\u0007J\u001a\u0010N\u001a\u00020#2\u0006\u0010A\u001a\u0002022\b\b\u0002\u0010L\u001a\u00020#H\u0017J\u0013\u0010P\u001a\u00020C2\b\u0010A\u001a\u0004\u0018\u00010OH\u0096\u0002J\b\u0010Q\u001a\u00020#H\u0016J\u0011\u0010R\u001a\u00020#2\u0006\u0010A\u001a\u00020\u0000H\u0096\u0002J\b\u0010S\u001a\u00020\nH\u0016J\u0017\u0010-\u001a\u00020(2\u0006\u0010,\u001a\u00020#H\u0007¢\u0006\u0004\bT\u0010*J\u000f\u0010V\u001a\u00020#H\u0007¢\u0006\u0004\bU\u00100R\u001c\u0010W\u001a\u0002028\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u00105R\"\u0010Q\u001a\u00020#8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bQ\u0010Z\u001a\u0004\b[\u00100\"\u0004\b\\\u0010]R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\u0013\u0010V\u001a\u00020#8G@\u0006¢\u0006\u0006\u001a\u0004\bV\u00100¨\u0006f"}, d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", "", "Ljava/io/ObjectInputStream;", "in", "Landroid/support/v4/ub2;", "readObject", "Ljava/io/ObjectOutputStream;", "out", "writeObject", "", "utf8", "Ljava/nio/charset/Charset;", "charset", TypedValues.Custom.S_STRING, "base64", "md5", "sha1", "sha256", "sha512", "algorithm", "digest$okio", "(Ljava/lang/String;)Lokio/ByteString;", "digest", "key", "hmacSha1", "hmacSha256", "hmacSha512", "hmac$okio", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmac", "base64Url", "hex", "toAsciiLowercase", "toAsciiUppercase", "", "beginIndex", "endIndex", "substring", "pos", "", "internalGet$okio", "(I)B", "internalGet", "index", "getByte", "get", "getSize$okio", "()I", "getSize", "", "toByteArray", "internalArray$okio", "()[B", "internalArray", "Ljava/nio/ByteBuffer;", "asByteBuffer", "Ljava/io/OutputStream;", "write", "Lokio/Buffer;", "buffer", TypedValues.Cycle.S_WAVE_OFFSET, "byteCount", "write$okio", "(Lokio/Buffer;II)V", "other", "otherOffset", "", "rangeEquals", TypedValues.Attributes.S_TARGET, "targetOffset", "copyInto", "prefix", "startsWith", "suffix", "endsWith", "fromIndex", "indexOf", "lastIndexOf", "", "equals", "hashCode", "compareTo", "toString", "-deprecated_getByte", "-deprecated_size", "size", "data", "[B", "getData$okio", OptRuntime.GeneratorState.resumptionPoint_TYPE, "getHashCode$okio", "setHashCode$okio", "(I)V", "Ljava/lang/String;", "getUtf8$okio", "()Ljava/lang/String;", "setUtf8$okio", "(Ljava/lang/String;)V", "<init>", "([B)V", "Companion", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable<ByteString> {

    @m41
    public static final Companion Companion = new Companion(null);

    @m41
    @tp0
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;

    @m41
    private final byte[] data;
    private transient int hashCode;

    @z41
    private transient String utf8;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b+\u0010,J\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00020\u0002\"\u00020\u0003H\u0007J'\u0010\u000b\u001a\u00020\u0005*\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0006\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u0005*\u00020\fH\u0007¢\u0006\u0004\b\u0006\u0010\rJ\f\u0010\u000f\u001a\u00020\u0005*\u00020\u000eH\u0007J\u001d\u0010\u0014\u001a\u00020\u0005*\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0015\u001a\u0004\u0018\u00010\u0005*\u00020\u000eH\u0007J\f\u0010\u0016\u001a\u00020\u0005*\u00020\u000eH\u0007J\u001b\u0010\u001a\u001a\u00020\u0005*\u00020\u00172\u0006\u0010\t\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001b\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u001e\u0010\u001dJ\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u001f\u0010\u0013J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000eH\u0007¢\u0006\u0004\b \u0010\u001dJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\fH\u0007¢\u0006\u0004\b\"\u0010\rJ'\u0010\u0006\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\"\u0010\nJ\u001f\u0010\u0018\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u0007H\u0007¢\u0006\u0004\b%\u0010\u0019R\u0016\u0010&\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lokio/ByteString$Companion;", "", "", "", "data", "Lokio/ByteString;", "of", "", TypedValues.Cycle.S_WAVE_OFFSET, "byteCount", "([BII)Lokio/ByteString;", "toByteString", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)Lokio/ByteString;", "", "encodeUtf8", "Ljava/nio/charset/Charset;", "charset", "encodeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;", "encode", "decodeBase64", "decodeHex", "Ljava/io/InputStream;", "read", "(Ljava/io/InputStream;I)Lokio/ByteString;", "readByteString", TypedValues.Custom.S_STRING, "-deprecated_decodeBase64", "(Ljava/lang/String;)Lokio/ByteString;", "-deprecated_decodeHex", "-deprecated_encodeString", "-deprecated_encodeUtf8", "buffer", "-deprecated_of", "array", "inputstream", "-deprecated_read", "EMPTY", "Lokio/ByteString;", "", "serialVersionUID", "J", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        public static /* synthetic */ ByteString encodeString$default(Companion companion, String str, Charset charset, int i, Object obj) {
            if ((i & 1) != 0) {
                charset = al.f191do;
            }
            return companion.encodeString(str, charset);
        }

        public static /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = bArr.length;
            }
            return companion.of(bArr, i, i2);
        }

        @wp0(name = "-deprecated_decodeBase64")
        @z41
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "string.decodeBase64()", imports = {"okio.ByteString.Companion.decodeBase64"}))
        public final ByteString a(@m41 String string) {
            Csuper.m30700throw(string, "string");
            return decodeBase64(string);
        }

        @m41
        @wp0(name = "-deprecated_decodeHex")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "string.decodeHex()", imports = {"okio.ByteString.Companion.decodeHex"}))
        public final ByteString b(@m41 String string) {
            Csuper.m30700throw(string, "string");
            return decodeHex(string);
        }

        @m41
        @wp0(name = "-deprecated_encodeString")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "string.encode(charset)", imports = {"okio.ByteString.Companion.encode"}))
        public final ByteString c(@m41 String string, @m41 Charset charset) {
            Csuper.m30700throw(string, "string");
            Csuper.m30700throw(charset, "charset");
            return encodeString(string, charset);
        }

        @m41
        @wp0(name = "-deprecated_encodeUtf8")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "string.encodeUtf8()", imports = {"okio.ByteString.Companion.encodeUtf8"}))
        public final ByteString d(@m41 String string) {
            Csuper.m30700throw(string, "string");
            return encodeUtf8(string);
        }

        @aq0
        @z41
        public final ByteString decodeBase64(@m41 String str) {
            Csuper.m30700throw(str, "<this>");
            byte[] bArrDecodeBase64ToArray = _Base64Kt.decodeBase64ToArray(str);
            if (bArrDecodeBase64ToArray != null) {
                return new ByteString(bArrDecodeBase64ToArray);
            }
            return null;
        }

        @m41
        @aq0
        public final ByteString decodeHex(@m41 String str) {
            Csuper.m30700throw(str, "<this>");
            int i = 0;
            if (!(str.length() % 2 == 0)) {
                throw new IllegalArgumentException(Csuper.m30690private("Unexpected hex string: ", str).toString());
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            int i2 = length - 1;
            if (i2 >= 0) {
                while (true) {
                    int i3 = i + 1;
                    int i4 = i * 2;
                    bArr[i] = (byte) ((_ByteStringKt.decodeHexDigit(str.charAt(i4)) << 4) + _ByteStringKt.decodeHexDigit(str.charAt(i4 + 1)));
                    if (i3 > i2) {
                        break;
                    }
                    i = i3;
                }
            }
            return new ByteString(bArr);
        }

        @m41
        @wp0(name = "-deprecated_of")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "buffer.toByteString()", imports = {"okio.ByteString.Companion.toByteString"}))
        public final ByteString e(@m41 ByteBuffer buffer) {
            Csuper.m30700throw(buffer, "buffer");
            return of(buffer);
        }

        @m41
        @aq0
        @wp0(name = "encodeString")
        public final ByteString encodeString(@m41 String str, @m41 Charset charset) {
            Csuper.m30700throw(str, "<this>");
            Csuper.m30700throw(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
            return new ByteString(bytes);
        }

        @m41
        @aq0
        public final ByteString encodeUtf8(@m41 String str) {
            Csuper.m30700throw(str, "<this>");
            ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
            byteString.setUtf8$okio(str);
            return byteString;
        }

        @m41
        @wp0(name = "-deprecated_read")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "inputstream.readByteString(byteCount)", imports = {"okio.ByteString.Companion.readByteString"}))
        public final ByteString g(@m41 InputStream inputstream, int i) {
            Csuper.m30700throw(inputstream, "inputstream");
            return read(inputstream, i);
        }

        @m41
        @aq0
        @wp0(name = "of")
        public final ByteString of(@m41 ByteBuffer byteBuffer) {
            Csuper.m30700throw(byteBuffer, "<this>");
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }

        @m41
        @aq0
        @wp0(name = "read")
        public final ByteString read(@m41 InputStream inputStream, int i) throws IOException {
            Csuper.m30700throw(inputStream, "<this>");
            int i2 = 0;
            if (!(i >= 0)) {
                throw new IllegalArgumentException(Csuper.m30690private("byteCount < 0: ", Integer.valueOf(i)).toString());
            }
            byte[] bArr = new byte[i];
            while (i2 < i) {
                int i3 = inputStream.read(bArr, i2, i - i2);
                if (i3 == -1) {
                    throw new EOFException();
                }
                i2 += i3;
            }
            return new ByteString(bArr);
        }

        @m41
        @wp0(name = "-deprecated_of")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "array.toByteString(offset, byteCount)", imports = {"okio.ByteString.Companion.toByteString"}))
        public final ByteString f(@m41 byte[] array, int i, int i2) {
            Csuper.m30700throw(array, "array");
            return of(array, i, i2);
        }

        @m41
        @aq0
        public final ByteString of(@m41 byte... data) {
            Csuper.m30700throw(data, "data");
            byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
            Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
            return new ByteString(bArrCopyOf);
        }

        @m41
        @aq0
        @wp0(name = "of")
        public final ByteString of(@m41 byte[] bArr, int i, int i2) {
            Csuper.m30700throw(bArr, "<this>");
            _UtilKt.checkOffsetAndCount(bArr.length, i, i2);
            return new ByteString(Ccatch.T0(bArr, i, i2 + i));
        }
    }

    public ByteString(@m41 byte[] data) {
        Csuper.m30700throw(data, "data");
        this.data = data;
    }

    public static /* synthetic */ void copyInto$default(ByteString byteString, int i, byte[] bArr, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copyInto");
        }
        if ((i4 & 1) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        byteString.copyInto(i, bArr, i2, i3);
    }

    @aq0
    @z41
    public static final ByteString decodeBase64(@m41 String str) {
        return Companion.decodeBase64(str);
    }

    @m41
    @aq0
    public static final ByteString decodeHex(@m41 String str) {
        return Companion.decodeHex(str);
    }

    @m41
    @aq0
    @wp0(name = "encodeString")
    public static final ByteString encodeString(@m41 String str, @m41 Charset charset) {
        return Companion.encodeString(str, charset);
    }

    @m41
    @aq0
    public static final ByteString encodeUtf8(@m41 String str) {
        return Companion.encodeUtf8(str);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, ByteString byteString2, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return byteString.indexOf(byteString2, i);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, ByteString byteString2, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i2 & 2) != 0) {
            i = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.lastIndexOf(byteString2, i);
    }

    @m41
    @aq0
    @wp0(name = "of")
    public static final ByteString of(@m41 ByteBuffer byteBuffer) {
        return Companion.of(byteBuffer);
    }

    @m41
    @aq0
    public static final ByteString of(@m41 byte... bArr) {
        return Companion.of(bArr);
    }

    @m41
    @aq0
    @wp0(name = "of")
    public static final ByteString of(@m41 byte[] bArr, int i, int i2) {
        return Companion.of(bArr, i, i2);
    }

    @m41
    @aq0
    @wp0(name = "read")
    public static final ByteString read(@m41 InputStream inputStream, int i) throws IOException {
        return Companion.read(inputStream, i);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException, IllegalArgumentException {
        ByteString byteString = Companion.read(objectInputStream, objectInputStream.readInt());
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, byteString.data);
    }

    public static /* synthetic */ ByteString substring$default(ByteString byteString, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
        }
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.substring(i, i2);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    @wp0(name = "-deprecated_getByte")
    @Cfor(level = Ctry.ERROR, message = "moved to operator function", replaceWith = @an1(expression = "this[index]", imports = {}))
    public final byte a(int i) {
        return getByte(i);
    }

    @m41
    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(this.data).asReadOnlyBuffer();
        Csuper.m30696super(byteBufferAsReadOnlyBuffer, "wrap(data).asReadOnlyBuffer()");
        return byteBufferAsReadOnlyBuffer;
    }

    @wp0(name = "-deprecated_size")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "size", imports = {}))
    public final int b() {
        return size();
    }

    @m41
    public String base64() {
        return _Base64Kt.encodeBase64$default(getData$okio(), null, 1, null);
    }

    @m41
    public String base64Url() {
        return _Base64Kt.encodeBase64(getData$okio(), _Base64Kt.getBASE64_URL_SAFE());
    }

    public void copyInto(int i, @m41 byte[] target, int i2, int i3) {
        Csuper.m30700throw(target, "target");
        Ccatch.j0(getData$okio(), target, i2, i, i3 + i);
    }

    @m41
    public ByteString digest$okio(@m41 String algorithm) throws NoSuchAlgorithmException {
        Csuper.m30700throw(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(getData$okio(), 0, size());
        byte[] digestBytes = messageDigest.digest();
        Csuper.m30696super(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    public final boolean endsWith(@m41 ByteString suffix) {
        Csuper.m30700throw(suffix, "suffix");
        return rangeEquals(size() - suffix.size(), suffix, 0, suffix.size());
    }

    public boolean equals(@z41 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == getData$okio().length && byteString.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    @wp0(name = "getByte")
    public final byte getByte(int i) {
        return internalGet$okio(i);
    }

    @m41
    public final byte[] getData$okio() {
        return this.data;
    }

    public final int getHashCode$okio() {
        return this.hashCode;
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    @z41
    public final String getUtf8$okio() {
        return this.utf8;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int iHashCode = Arrays.hashCode(getData$okio());
        setHashCode$okio(iHashCode);
        return iHashCode;
    }

    @m41
    public String hex() {
        char[] cArr = new char[getData$okio().length * 2];
        byte[] data$okio = getData$okio();
        int length = data$okio.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = data$okio[i];
            i++;
            int i3 = i2 + 1;
            cArr[i2] = _ByteStringKt.getHEX_DIGIT_CHARS()[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = _ByteStringKt.getHEX_DIGIT_CHARS()[b & 15];
        }
        return Creturn.G0(cArr);
    }

    @m41
    public ByteString hmac$okio(@m41 String algorithm, @m41 ByteString key) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        Csuper.m30700throw(algorithm, "algorithm");
        Csuper.m30700throw(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            byte[] bArrDoFinal = mac.doFinal(this.data);
            Csuper.m30696super(bArrDoFinal, "mac.doFinal(data)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @m41
    public ByteString hmacSha1(@m41 ByteString key) {
        Csuper.m30700throw(key, "key");
        return hmac$okio("HmacSHA1", key);
    }

    @m41
    public ByteString hmacSha256(@m41 ByteString key) {
        Csuper.m30700throw(key, "key");
        return hmac$okio("HmacSHA256", key);
    }

    @m41
    public ByteString hmacSha512(@m41 ByteString key) {
        Csuper.m30700throw(key, "key");
        return hmac$okio("HmacSHA512", key);
    }

    @xp0
    public final int indexOf(@m41 ByteString other) {
        Csuper.m30700throw(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    @xp0
    public final int indexOf(@m41 ByteString other, int i) {
        Csuper.m30700throw(other, "other");
        return indexOf(other.internalArray$okio(), i);
    }

    @xp0
    public final int indexOf(@m41 byte[] other) {
        Csuper.m30700throw(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    @m41
    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public byte internalGet$okio(int i) {
        return getData$okio()[i];
    }

    @xp0
    public final int lastIndexOf(@m41 ByteString other) {
        Csuper.m30700throw(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    @xp0
    public final int lastIndexOf(@m41 ByteString other, int i) {
        Csuper.m30700throw(other, "other");
        return lastIndexOf(other.internalArray$okio(), i);
    }

    @xp0
    public final int lastIndexOf(@m41 byte[] other) {
        Csuper.m30700throw(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    @m41
    public final ByteString md5() {
        return digest$okio("MD5");
    }

    public boolean rangeEquals(int i, @m41 ByteString other, int i2, int i3) {
        Csuper.m30700throw(other, "other");
        return other.rangeEquals(i2, getData$okio(), i, i3);
    }

    public final void setHashCode$okio(int i) {
        this.hashCode = i;
    }

    public final void setUtf8$okio(@z41 String str) {
        this.utf8 = str;
    }

    @m41
    public final ByteString sha1() {
        return digest$okio(qy0.f5539case);
    }

    @m41
    public final ByteString sha256() {
        return digest$okio("SHA-256");
    }

    @m41
    public final ByteString sha512() {
        return digest$okio("SHA-512");
    }

    @wp0(name = "size")
    public final int size() {
        return getSize$okio();
    }

    public final boolean startsWith(@m41 ByteString prefix) {
        Csuper.m30700throw(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.size());
    }

    @m41
    public String string(@m41 Charset charset) {
        Csuper.m30700throw(charset, "charset");
        return new String(this.data, charset);
    }

    @m41
    @xp0
    public final ByteString substring() {
        return substring$default(this, 0, 0, 3, null);
    }

    @m41
    @xp0
    public final ByteString substring(int i) {
        return substring$default(this, i, 0, 2, null);
    }

    @m41
    @xp0
    public ByteString substring(int i, int i2) {
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
        if (iResolveDefaultParameter <= getData$okio().length) {
            if (iResolveDefaultParameter - i >= 0) {
                return (i == 0 && iResolveDefaultParameter == getData$okio().length) ? this : new ByteString(Ccatch.T0(getData$okio(), i, iResolveDefaultParameter));
            }
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
    }

    @m41
    public ByteString toAsciiLowercase() {
        byte b;
        for (int i = 0; i < getData$okio().length; i++) {
            byte b2 = getData$okio()[i];
            byte b3 = (byte) 65;
            if (b2 >= b3 && b2 <= (b = (byte) 90)) {
                byte[] data$okio = getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b4 = bArrCopyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i2] = (byte) (b4 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return this;
    }

    @m41
    public ByteString toAsciiUppercase() {
        byte b;
        for (int i = 0; i < getData$okio().length; i++) {
            byte b2 = getData$okio()[i];
            byte b3 = (byte) 97;
            if (b2 >= b3 && b2 <= (b = (byte) 122)) {
                byte[] data$okio = getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b2 - 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b4 = bArrCopyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i2] = (byte) (b4 - 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return this;
    }

    @m41
    public byte[] toByteArray() {
        byte[] data$okio = getData$okio();
        byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
        Csuper.m30696super(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return bArrCopyOf;
    }

    @m41
    public String toString() {
        String str;
        if (getData$okio().length == 0) {
            str = "[size=0]";
        } else {
            int iCodePointIndexToCharIndex = _ByteStringKt.codePointIndexToCharIndex(getData$okio(), 64);
            if (iCodePointIndexToCharIndex != -1) {
                String strUtf8 = utf8();
                Objects.requireNonNull(strUtf8, "null cannot be cast to non-null type java.lang.String");
                String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
                Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String strX1 = Creturn.x1(Creturn.x1(Creturn.x1(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), Cclass.f28656new, "\\r", false, 4, null);
                if (iCodePointIndexToCharIndex >= strUtf8.length()) {
                    return "[text=" + strX1 + ']';
                }
                return "[size=" + getData$okio().length + " text=" + strX1 + "…]";
            }
            if (getData$okio().length > 64) {
                StringBuilder sb = new StringBuilder();
                sb.append("[size=");
                sb.append(getData$okio().length);
                sb.append(" hex=");
                int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, 64);
                if (iResolveDefaultParameter <= getData$okio().length) {
                    if (!(iResolveDefaultParameter + 0 >= 0)) {
                        throw new IllegalArgumentException("endIndex < beginIndex".toString());
                    }
                    sb.append((iResolveDefaultParameter == getData$okio().length ? this : new ByteString(Ccatch.T0(getData$okio(), 0, iResolveDefaultParameter))).hex());
                    sb.append("…]");
                    return sb.toString();
                }
                throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
            }
            str = "[hex=" + hex() + ']';
        }
        return str;
    }

    @m41
    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(internalArray$okio());
        setUtf8$okio(utf8String);
        return utf8String;
    }

    public void write(@m41 OutputStream out) throws IOException {
        Csuper.m30700throw(out, "out");
        out.write(this.data);
    }

    public void write$okio(@m41 Buffer buffer, int i, int i2) {
        Csuper.m30700throw(buffer, "buffer");
        _ByteStringKt.commonWrite(this, buffer, i, i2);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, byte[] bArr, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return byteString.indexOf(bArr, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int compareTo(@m41 ByteString other) {
        Csuper.m30700throw(other, "other");
        int size = size();
        int size2 = other.size();
        int iMin = Math.min(size, size2);
        for (int i = 0; i < iMin; i++) {
            int i2 = getByte(i) & 255;
            int i3 = other.getByte(i) & 255;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        if (size < size2) {
        }
    }

    public final boolean endsWith(@m41 byte[] suffix) {
        Csuper.m30700throw(suffix, "suffix");
        return rangeEquals(size() - suffix.length, suffix, 0, suffix.length);
    }

    @xp0
    public int indexOf(@m41 byte[] other, int i) {
        Csuper.m30700throw(other, "other");
        int length = getData$okio().length - other.length;
        int iMax = Math.max(i, 0);
        if (iMax <= length) {
            while (true) {
                int i2 = iMax + 1;
                if (_UtilKt.arrayRangeEquals(getData$okio(), iMax, other, 0, other.length)) {
                    return iMax;
                }
                if (iMax == length) {
                    break;
                }
                iMax = i2;
            }
        }
        return -1;
    }

    @xp0
    public int lastIndexOf(@m41 byte[] other, int i) {
        Csuper.m30700throw(other, "other");
        int iMin = Math.min(_UtilKt.resolveDefaultParameter(this, i), getData$okio().length - other.length);
        if (iMin >= 0) {
            while (true) {
                int i2 = iMin - 1;
                if (_UtilKt.arrayRangeEquals(getData$okio(), iMin, other, 0, other.length)) {
                    return iMin;
                }
                if (i2 < 0) {
                    break;
                }
                iMin = i2;
            }
        }
        return -1;
    }

    public boolean rangeEquals(int i, @m41 byte[] other, int i2, int i3) {
        Csuper.m30700throw(other, "other");
        return i >= 0 && i <= getData$okio().length - i3 && i2 >= 0 && i2 <= other.length - i3 && _UtilKt.arrayRangeEquals(getData$okio(), i, other, i2, i3);
    }

    public final boolean startsWith(@m41 byte[] prefix) {
        Csuper.m30700throw(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.length);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, byte[] bArr, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i2 & 2) != 0) {
            i = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.lastIndexOf(bArr, i);
    }
}
