package okio;

import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.xp0;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@Cwhile(bv = {1, 0, 3}, d1 = {"okio/Okio__JvmOkioKt", "okio/Okio__OkioKt"}, d2 = {}, k = 4, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class Okio {
    @m41
    public static final Sink appendingSink(@m41 File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.appendingSink(file);
    }

    @m41
    public static final FileSystem asResourceFileSystem(@m41 ClassLoader classLoader) {
        return Okio__JvmOkioKt.asResourceFileSystem(classLoader);
    }

    @m41
    @wp0(name = "blackhole")
    public static final Sink blackhole() {
        return Okio__OkioKt.blackhole();
    }

    @m41
    public static final BufferedSink buffer(@m41 Sink sink) {
        return Okio__OkioKt.buffer(sink);
    }

    @m41
    public static final CipherSink cipherSink(@m41 Sink sink, @m41 Cipher cipher) {
        return Okio__JvmOkioKt.cipherSink(sink, cipher);
    }

    @m41
    public static final CipherSource cipherSource(@m41 Source source, @m41 Cipher cipher) {
        return Okio__JvmOkioKt.cipherSource(source, cipher);
    }

    @m41
    public static final HashingSink hashingSink(@m41 Sink sink, @m41 MessageDigest messageDigest) {
        return Okio__JvmOkioKt.hashingSink(sink, messageDigest);
    }

    @m41
    public static final HashingSource hashingSource(@m41 Source source, @m41 MessageDigest messageDigest) {
        return Okio__JvmOkioKt.hashingSource(source, messageDigest);
    }

    public static final boolean isAndroidGetsocknameError(@m41 AssertionError assertionError) {
        return Okio__JvmOkioKt.isAndroidGetsocknameError(assertionError);
    }

    @m41
    public static final FileSystem openZip(@m41 FileSystem fileSystem, @m41 Path path) throws IOException {
        return Okio__JvmOkioKt.openZip(fileSystem, path);
    }

    @m41
    @xp0
    public static final Sink sink(@m41 File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.sink(file);
    }

    @m41
    public static final Source source(@m41 File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.source(file);
    }

    public static final <T extends Closeable, R> R use(T t, @m41 Function1<? super T, ? extends R> function1) {
        return (R) Okio__OkioKt.use(t, function1);
    }

    @m41
    public static final BufferedSource buffer(@m41 Source source) {
        return Okio__OkioKt.buffer(source);
    }

    @m41
    public static final HashingSink hashingSink(@m41 Sink sink, @m41 Mac mac) {
        return Okio__JvmOkioKt.hashingSink(sink, mac);
    }

    @m41
    public static final HashingSource hashingSource(@m41 Source source, @m41 Mac mac) {
        return Okio__JvmOkioKt.hashingSource(source, mac);
    }

    @m41
    @xp0
    public static final Sink sink(@m41 File file, boolean z) throws FileNotFoundException {
        return Okio__JvmOkioKt.sink(file, z);
    }

    @m41
    public static final Source source(@m41 InputStream inputStream) {
        return Okio__JvmOkioKt.source(inputStream);
    }

    @m41
    public static final Sink sink(@m41 OutputStream outputStream) {
        return Okio__JvmOkioKt.sink(outputStream);
    }

    @m41
    public static final Source source(@m41 Socket socket) throws IOException {
        return Okio__JvmOkioKt.source(socket);
    }

    @m41
    public static final Sink sink(@m41 Socket socket) throws IOException {
        return Okio__JvmOkioKt.sink(socket);
    }

    @m41
    @IgnoreJRERequirement
    public static final Source source(@m41 java.nio.file.Path path, @m41 OpenOption... openOptionArr) throws IOException {
        return Okio__JvmOkioKt.source(path, openOptionArr);
    }

    @m41
    @IgnoreJRERequirement
    public static final Sink sink(@m41 java.nio.file.Path path, @m41 OpenOption... openOptionArr) throws IOException {
        return Okio__JvmOkioKt.sink(path, openOptionArr);
    }
}
