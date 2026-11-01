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

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u0000 \u001c2\u00020\u00012\u00020\u0002:\u0001\u001cB\u0019\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0015B\u0019\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0014\u0010\u0018B\u0019\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0019B!\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\b\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0014\u0010\u001bJ\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u000f\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\nR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0013\u0010\u000b\u001a\u00020\b8G@\u0006¢\u0006\u0006\u001a\u0004\b\u000b\u0010\n¨\u0006\u001d"}, d2 = {"Lokio/HashingSource;", "Lokio/ForwardingSource;", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "Lokio/ByteString;", "-deprecated_hash", "()Lokio/ByteString;", "hash", "Ljava/security/MessageDigest;", "messageDigest", "Ljava/security/MessageDigest;", "Ljavax/crypto/Mac;", "mac", "Ljavax/crypto/Mac;", "source", "digest", "<init>", "(Lokio/Source;Ljava/security/MessageDigest;)V", "", "algorithm", "(Lokio/Source;Ljava/lang/String;)V", "(Lokio/Source;Ljavax/crypto/Mac;)V", "key", "(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V", "Companion", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class HashingSource extends ForwardingSource implements Source {

    @m41
    public static final Companion Companion = new Companion(null);

    @z41
    private final Mac mac;

    @z41
    private final MessageDigest messageDigest;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0007J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0007J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0007¨\u0006\u0010"}, d2 = {"Lokio/HashingSource$Companion;", "", "Lokio/Source;", "source", "Lokio/HashingSource;", "md5", "sha1", "sha256", "sha512", "Lokio/ByteString;", "key", "hmacSha1", "hmacSha256", "hmacSha512", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        @m41
        @aq0
        public final HashingSource hmacSha1(@m41 Source source, @m41 ByteString key) {
            Csuper.m30700throw(source, "source");
            Csuper.m30700throw(key, "key");
            return new HashingSource(source, key, "HmacSHA1");
        }

        @m41
        @aq0
        public final HashingSource hmacSha256(@m41 Source source, @m41 ByteString key) {
            Csuper.m30700throw(source, "source");
            Csuper.m30700throw(key, "key");
            return new HashingSource(source, key, "HmacSHA256");
        }

        @m41
        @aq0
        public final HashingSource hmacSha512(@m41 Source source, @m41 ByteString key) {
            Csuper.m30700throw(source, "source");
            Csuper.m30700throw(key, "key");
            return new HashingSource(source, key, "HmacSHA512");
        }

        @m41
        @aq0
        public final HashingSource md5(@m41 Source source) {
            Csuper.m30700throw(source, "source");
            return new HashingSource(source, "MD5");
        }

        @m41
        @aq0
        public final HashingSource sha1(@m41 Source source) {
            Csuper.m30700throw(source, "source");
            return new HashingSource(source, qy0.f5539case);
        }

        @m41
        @aq0
        public final HashingSource sha256(@m41 Source source) {
            Csuper.m30700throw(source, "source");
            return new HashingSource(source, "SHA-256");
        }

        @m41
        @aq0
        public final HashingSource sha512(@m41 Source source) {
            Csuper.m30700throw(source, "source");
            return new HashingSource(source, "SHA-512");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSource(@m41 Source source, @m41 MessageDigest digest) {
        super(source);
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(digest, "digest");
        this.messageDigest = digest;
        this.mac = null;
    }

    @m41
    @aq0
    public static final HashingSource hmacSha1(@m41 Source source, @m41 ByteString byteString) {
        return Companion.hmacSha1(source, byteString);
    }

    @m41
    @aq0
    public static final HashingSource hmacSha256(@m41 Source source, @m41 ByteString byteString) {
        return Companion.hmacSha256(source, byteString);
    }

    @m41
    @aq0
    public static final HashingSource hmacSha512(@m41 Source source, @m41 ByteString byteString) {
        return Companion.hmacSha512(source, byteString);
    }

    @m41
    @aq0
    public static final HashingSource md5(@m41 Source source) {
        return Companion.md5(source);
    }

    @m41
    @aq0
    public static final HashingSource sha1(@m41 Source source) {
        return Companion.sha1(source);
    }

    @m41
    @aq0
    public static final HashingSource sha256(@m41 Source source) {
        return Companion.sha256(source);
    }

    @m41
    @aq0
    public static final HashingSource sha512(@m41 Source source) {
        return Companion.sha512(source);
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

    @Override // okio.ForwardingSource, okio.Source
    public long read(@m41 Buffer sink, long j) throws IllegalStateException, IOException {
        Csuper.m30700throw(sink, "sink");
        long j2 = super.read(sink, j);
        if (j2 != -1) {
            long size = sink.size() - j2;
            long size2 = sink.size();
            Segment segment = sink.head;
            Csuper.m30672const(segment);
            while (size2 > size) {
                segment = segment.prev;
                Csuper.m30672const(segment);
                size2 -= segment.limit - segment.pos;
            }
            while (size2 < sink.size()) {
                int i = (int) ((segment.pos + size) - size2);
                MessageDigest messageDigest = this.messageDigest;
                if (messageDigest != null) {
                    messageDigest.update(segment.data, i, segment.limit - i);
                } else {
                    Mac mac = this.mac;
                    Csuper.m30672const(mac);
                    mac.update(segment.data, i, segment.limit - i);
                }
                size2 += segment.limit - segment.pos;
                segment = segment.next;
                Csuper.m30672const(segment);
                size = size2;
            }
        }
        return j2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSource(@m41 Source source, @m41 String algorithm) throws NoSuchAlgorithmException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Csuper.m30696super(messageDigest, "getInstance(algorithm)");
        this(source, messageDigest);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSource(@m41 Source source, @m41 Mac mac) {
        super(source);
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(mac, "mac");
        this.mac = mac;
        this.messageDigest = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSource(@m41 Source source, @m41 ByteString key, @m41 String algorithm) throws NoSuchAlgorithmException, InvalidKeyException {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(key, "key");
        Csuper.m30700throw(algorithm, "algorithm");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            ub2 ub2Var = ub2.f6820do;
            Csuper.m30696super(mac, "try {\n      Mac.getInsta…rgumentException(e)\n    }");
            this(source, mac);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
