package okio;

import android.support.v4.m41;
import android.support.v4.xp0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Cstatic;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0006\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0006\u001a\u0016\u0010\u0002\u001a\u00020\u0001*\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\bH\u0007\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0007\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0007\u001a'\u0010\u0002\u001a\u00020\u0001*\u00020\u000b2\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f\"\u00020\rH\u0007¢\u0006\u0004\b\u0002\u0010\u000f\u001a'\u0010\u0005\u001a\u00020\u0004*\u00020\u000b2\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f\"\u00020\rH\u0007¢\u0006\u0004\b\u0005\u0010\u0010\u001a\u0012\u0010\u0014\u001a\u00020\u0013*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0011\u001a\u0012\u0010\u0016\u001a\u00020\u0015*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011\u001a\u0012\u0010\u001a\u001a\u00020\u0019*\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0017\u001a\u0012\u0010\u001c\u001a\u00020\u001b*\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017\u001a\u0012\u0010\u001a\u001a\u00020\u0019*\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u001d\u001a\u0012\u0010\u001c\u001a\u00020\u001b*\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001d\u001a\u0012\u0010\"\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010!\u001a\u00020 \u001a\n\u0010$\u001a\u00020\u001f*\u00020#\"\u001e\u0010'\u001a\n &*\u0004\u0018\u00010%0%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(\"\u001e\u0010+\u001a\u00020\b*\u00060)j\u0002`*8@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006-"}, d2 = {"Ljava/io/OutputStream;", "Lokio/Sink;", "sink", "Ljava/io/InputStream;", "Lokio/Source;", "source", "Ljava/net/Socket;", "Ljava/io/File;", "", "append", "appendingSink", "Ljava/nio/file/Path;", "", "Ljava/nio/file/OpenOption;", "options", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "Ljavax/crypto/Cipher;", "cipher", "Lokio/CipherSink;", "cipherSink", "Lokio/CipherSource;", "cipherSource", "Ljavax/crypto/Mac;", "mac", "Lokio/HashingSink;", "hashingSink", "Lokio/HashingSource;", "hashingSource", "Ljava/security/MessageDigest;", "digest", "Lokio/FileSystem;", "Lokio/Path;", "zipPath", "openZip", "Ljava/lang/ClassLoader;", "asResourceFileSystem", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "logger", "Ljava/util/logging/Logger;", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "isAndroidGetsocknameError", "(Ljava/lang/AssertionError;)Z", "okio"}, k = 5, mv = {1, 5, 1}, xs = "okio/Okio")
/* loaded from: classes3.dex */
final /* synthetic */ class Okio__JvmOkioKt {
    private static final Logger logger = Logger.getLogger("okio.Okio");

    @m41
    public static final Sink appendingSink(@m41 File file) throws FileNotFoundException {
        Csuper.m30700throw(file, "<this>");
        return Okio.sink(new FileOutputStream(file, true));
    }

    @m41
    public static final FileSystem asResourceFileSystem(@m41 ClassLoader classLoader) {
        Csuper.m30700throw(classLoader, "<this>");
        return new ResourceFileSystem(classLoader, true);
    }

    @m41
    public static final CipherSink cipherSink(@m41 Sink sink, @m41 Cipher cipher) {
        Csuper.m30700throw(sink, "<this>");
        Csuper.m30700throw(cipher, "cipher");
        return new CipherSink(Okio.buffer(sink), cipher);
    }

    @m41
    public static final CipherSource cipherSource(@m41 Source source, @m41 Cipher cipher) {
        Csuper.m30700throw(source, "<this>");
        Csuper.m30700throw(cipher, "cipher");
        return new CipherSource(Okio.buffer(source), cipher);
    }

    @m41
    public static final HashingSink hashingSink(@m41 Sink sink, @m41 Mac mac) {
        Csuper.m30700throw(sink, "<this>");
        Csuper.m30700throw(mac, "mac");
        return new HashingSink(sink, mac);
    }

    @m41
    public static final HashingSource hashingSource(@m41 Source source, @m41 Mac mac) {
        Csuper.m30700throw(source, "<this>");
        Csuper.m30700throw(mac, "mac");
        return new HashingSource(source, mac);
    }

    public static final boolean isAndroidGetsocknameError(@m41 AssertionError assertionError) {
        Csuper.m30700throw(assertionError, "<this>");
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        return message == null ? false : Cstatic.i2(message, "getsockname failed", false, 2, null);
    }

    @m41
    public static final FileSystem openZip(@m41 FileSystem fileSystem, @m41 Path zipPath) throws IOException {
        Csuper.m30700throw(fileSystem, "<this>");
        Csuper.m30700throw(zipPath, "zipPath");
        return ZipKt.openZip$default(zipPath, fileSystem, null, 4, null);
    }

    @m41
    @xp0
    public static final Sink sink(@m41 File file) throws FileNotFoundException {
        Csuper.m30700throw(file, "<this>");
        return sink$default(file, false, 1, null);
    }

    @m41
    public static final Sink sink(@m41 OutputStream outputStream) {
        Csuper.m30700throw(outputStream, "<this>");
        return new OutputStreamSink(outputStream, new Timeout());
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z, int i, Object obj) throws FileNotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        return Okio.sink(file, z);
    }

    @m41
    public static final Source source(@m41 InputStream inputStream) {
        Csuper.m30700throw(inputStream, "<this>");
        return new InputStreamSource(inputStream, new Timeout());
    }

    @m41
    public static final HashingSink hashingSink(@m41 Sink sink, @m41 MessageDigest digest) {
        Csuper.m30700throw(sink, "<this>");
        Csuper.m30700throw(digest, "digest");
        return new HashingSink(sink, digest);
    }

    @m41
    public static final HashingSource hashingSource(@m41 Source source, @m41 MessageDigest digest) {
        Csuper.m30700throw(source, "<this>");
        Csuper.m30700throw(digest, "digest");
        return new HashingSource(source, digest);
    }

    @m41
    public static final Sink sink(@m41 Socket socket) throws IOException {
        Csuper.m30700throw(socket, "<this>");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        OutputStream outputStream = socket.getOutputStream();
        Csuper.m30696super(outputStream, "getOutputStream()");
        return socketAsyncTimeout.sink(new OutputStreamSink(outputStream, socketAsyncTimeout));
    }

    @m41
    public static final Source source(@m41 Socket socket) throws IOException {
        Csuper.m30700throw(socket, "<this>");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        InputStream inputStream = socket.getInputStream();
        Csuper.m30696super(inputStream, "getInputStream()");
        return socketAsyncTimeout.source(new InputStreamSource(inputStream, socketAsyncTimeout));
    }

    @m41
    @xp0
    public static final Sink sink(@m41 File file, boolean z) throws FileNotFoundException {
        Csuper.m30700throw(file, "<this>");
        return Okio.sink(new FileOutputStream(file, z));
    }

    @m41
    public static final Source source(@m41 File file) throws FileNotFoundException {
        Csuper.m30700throw(file, "<this>");
        return new InputStreamSource(new FileInputStream(file), Timeout.NONE);
    }

    @m41
    @IgnoreJRERequirement
    public static final Sink sink(@m41 java.nio.file.Path path, @m41 OpenOption... options) throws IOException {
        Csuper.m30700throw(path, "<this>");
        Csuper.m30700throw(options, "options");
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        Csuper.m30696super(outputStreamNewOutputStream, "newOutputStream(this, *options)");
        return Okio.sink(outputStreamNewOutputStream);
    }

    @m41
    @IgnoreJRERequirement
    public static final Source source(@m41 java.nio.file.Path path, @m41 OpenOption... options) throws IOException {
        Csuper.m30700throw(path, "<this>");
        Csuper.m30700throw(options, "options");
        InputStream inputStreamNewInputStream = Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        Csuper.m30696super(inputStreamNewInputStream, "newInputStream(this, *options)");
        return Okio.source(inputStreamNewInputStream);
    }
}
