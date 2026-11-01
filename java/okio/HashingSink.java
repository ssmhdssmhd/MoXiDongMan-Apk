package okio;

import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.m41;
import android.support.v4.qy0;
import android.support.v4.rx;
import android.support.v4.ub2;
import android.support.v4.wp0;
import android.support.v4.z41;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0019\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016B\u0019\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0015\u0010\u0019B\u0019\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u001aB!\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\t\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0015\u0010\u001cJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u000f\u0010\f\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0013\u0010\f\u001a\u00020\t8G@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\u000b¨\u0006\u001e"}, d2 = {"Lokio/HashingSink;", "Lokio/ForwardingSink;", "Lokio/Sink;", "Lokio/Buffer;", "source", "", "byteCount", "Landroid/support/v4/ub2;", "write", "Lokio/ByteString;", "-deprecated_hash", "()Lokio/ByteString;", "hash", "Ljava/security/MessageDigest;", "messageDigest", "Ljava/security/MessageDigest;", "Ljavax/crypto/Mac;", "mac", "Ljavax/crypto/Mac;", "sink", "digest", "<init>", "(Lokio/Sink;Ljava/security/MessageDigest;)V", "", "algorithm", "(Lokio/Sink;Ljava/lang/String;)V", "(Lokio/Sink;Ljavax/crypto/Mac;)V", "key", "(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V", "Companion", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class HashingSink extends ForwardingSink implements Sink {

    @m41
    public static final Companion Companion = new Companion(null);

    @z41
    private final Mac mac;

    @z41
    private final MessageDigest messageDigest;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0007J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0007J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0007¨\u0006\u0010"}, d2 = {"Lokio/HashingSink$Companion;", "", "Lokio/Sink;", "sink", "Lokio/HashingSink;", "md5", "sha1", "sha256", "sha512", "Lokio/ByteString;", "key", "hmacSha1", "hmacSha256", "hmacSha512", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        @m41
        @aq0
        public final HashingSink hmacSha1(@m41 Sink sink, @m41 ByteString key) {
            Csuper.m30700throw(sink, "sink");
            Csuper.m30700throw(key, "key");
            return new HashingSink(sink, key, "HmacSHA1");
        }

        @m41
        @aq0
        public final HashingSink hmacSha256(@m41 Sink sink, @m41 ByteString key) {
            Csuper.m30700throw(sink, "sink");
            Csuper.m30700throw(key, "key");
            return new HashingSink(sink, key, "HmacSHA256");
        }

        @m41
        @aq0
        public final HashingSink hmacSha512(@m41 Sink sink, @m41 ByteString key) {
            Csuper.m30700throw(sink, "sink");
            Csuper.m30700throw(key, "key");
            return new HashingSink(sink, key, "HmacSHA512");
        }

        @m41
        @aq0
        public final HashingSink md5(@m41 Sink sink) {
            Csuper.m30700throw(sink, "sink");
            return new HashingSink(sink, "MD5");
        }

        @m41
        @aq0
        public final HashingSink sha1(@m41 Sink sink) {
            Csuper.m30700throw(sink, "sink");
            return new HashingSink(sink, qy0.f5539case);
        }

        @m41
        @aq0
        public final HashingSink sha256(@m41 Sink sink) {
            Csuper.m30700throw(sink, "sink");
            return new HashingSink(sink, "SHA-256");
        }

        @m41
        @aq0
        public final HashingSink sha512(@m41 Sink sink) {
            Csuper.m30700throw(sink, "sink");
            return new HashingSink(sink, "SHA-512");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(@m41 Sink sink, @m41 MessageDigest digest) {
        super(sink);
        Csuper.m30700throw(sink, "sink");
        Csuper.m30700throw(digest, "digest");
        this.messageDigest = digest;
        this.mac = null;
    }

    @m41
    @aq0
    public static final HashingSink hmacSha1(@m41 Sink sink, @m41 ByteString byteString) {
        return Companion.hmacSha1(sink, byteString);
    }

    @m41
    @aq0
    public static final HashingSink hmacSha256(@m41 Sink sink, @m41 ByteString byteString) {
        return Companion.hmacSha256(sink, byteString);
    }

    @m41
    @aq0
    public static final HashingSink hmacSha512(@m41 Sink sink, @m41 ByteString byteString) {
        return Companion.hmacSha512(sink, byteString);
    }

    @m41
    @aq0
    public static final HashingSink md5(@m41 Sink sink) {
        return Companion.md5(sink);
    }

    @m41
    @aq0
    public static final HashingSink sha1(@m41 Sink sink) {
        return Companion.sha1(sink);
    }

    @m41
    @aq0
    public static final HashingSink sha256(@m41 Sink sink) {
        return Companion.sha256(sink);
    }

    @m41
    @aq0
    public static final HashingSink sha512(@m41 Sink sink) {
        return Companion.sha512(sink);
    }

    @m41
    @wp0(name = "-deprecated_hash")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "hash", imports = {}))
    public final ByteString b() {
        return hash();
    }

    @m41
    @wp0(name = "hash")
    public final ByteString hash() throws IllegalStateException {
        byte[] result;
        MessageDigest messageDigest = this.messageDigest;
        if (messageDigest != null) {
            result = messageDigest.digest();
        } else {
            Mac mac = this.mac;
            Csuper.m30672const(mac);
            result = mac.doFinal();
        }
        Csuper.m30696super(result, "result");
        return new ByteString(result);
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@m41 Buffer source, long j) throws IllegalStateException, IOException {
        Csuper.m30700throw(source, "source");
        _UtilKt.checkOffsetAndCount(source.size(), 0L, j);
        Segment segment = source.head;
        Csuper.m30672const(segment);
        long j2 = 0;
        while (j2 < j) {
            int iMin = (int) Math.min(j - j2, segment.limit - segment.pos);
            MessageDigest messageDigest = this.messageDigest;
            if (messageDigest != null) {
                messageDigest.update(segment.data, segment.pos, iMin);
            } else {
                Mac mac = this.mac;
                Csuper.m30672const(mac);
                mac.update(segment.data, segment.pos, iMin);
            }
            j2 += iMin;
            segment = segment.next;
            Csuper.m30672const(segment);
        }
        super.write(source, j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSink(@m41 Sink sink, @m41 String algorithm) throws NoSuchAlgorithmException {
        Csuper.m30700throw(sink, "sink");
        Csuper.m30700throw(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Csuper.m30696super(messageDigest, "getInstance(algorithm)");
        this(sink, messageDigest);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(@m41 Sink sink, @m41 Mac mac) {
        super(sink);
        Csuper.m30700throw(sink, "sink");
        Csuper.m30700throw(mac, "mac");
        this.mac = mac;
        this.messageDigest = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSink(@m41 Sink sink, @m41 ByteString key, @m41 String algorithm) throws NoSuchAlgorithmException, InvalidKeyException {
        Csuper.m30700throw(sink, "sink");
        Csuper.m30700throw(key, "key");
        Csuper.m30700throw(algorithm, "algorithm");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            ub2 ub2Var = ub2.f6820do;
            Csuper.m30696super(mac, "try {\n      Mac.getInsta…rgumentException(e)\n    }");
            this(sink, mac);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
