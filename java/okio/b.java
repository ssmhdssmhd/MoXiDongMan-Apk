package okio;

import android.support.v4.an1;
import android.support.v4.m41;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.util.Arrays;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cfor(message = "changed in Okio 2.x")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0007J\u0010\u0010\b\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0007J+\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u0010\"\u00020\u0011H\u0007¢\u0006\u0004\b\u0006\u0010\u0013J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J+\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u0010\"\u00020\u0011H\u0007¢\u0006\u0004\b\n\u0010\u0018J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\b\u0010\u0019\u001a\u00020\u0004H\u0007¨\u0006\u001c"}, d2 = {"Lokio/-DeprecatedOkio;", "", "Ljava/io/File;", "file", "Lokio/Sink;", "appendingSink", "sink", "Lokio/BufferedSink;", "buffer", "Lokio/Source;", "source", "Lokio/BufferedSource;", "Ljava/io/OutputStream;", "outputStream", "Ljava/nio/file/Path;", "path", "", "Ljava/nio/file/OpenOption;", "options", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", "Ljava/net/Socket;", "socket", "Ljava/io/InputStream;", "inputStream", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "blackhole", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class b {

    @m41
    public static final b INSTANCE = new b();

    private b() {
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "file.appendingSink()", imports = {"okio.appendingSink"}))
    public final Sink appendingSink(@m41 File file) {
        Csuper.m30700throw(file, "file");
        return Okio.appendingSink(file);
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "blackholeSink()", imports = {"okio.blackholeSink"}))
    public final Sink blackhole() {
        return Okio.blackhole();
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "sink.buffer()", imports = {"okio.buffer"}))
    public final BufferedSink buffer(@m41 Sink sink) {
        Csuper.m30700throw(sink, "sink");
        return Okio.buffer(sink);
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "file.sink()", imports = {"okio.sink"}))
    public final Sink sink(@m41 File file) {
        Csuper.m30700throw(file, "file");
        return Okio__JvmOkioKt.sink$default(file, false, 1, null);
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "file.source()", imports = {"okio.source"}))
    public final Source source(@m41 File file) {
        Csuper.m30700throw(file, "file");
        return Okio.source(file);
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "source.buffer()", imports = {"okio.buffer"}))
    public final BufferedSource buffer(@m41 Source source) {
        Csuper.m30700throw(source, "source");
        return Okio.buffer(source);
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "outputStream.sink()", imports = {"okio.sink"}))
    public final Sink sink(@m41 OutputStream outputStream) {
        Csuper.m30700throw(outputStream, "outputStream");
        return Okio.sink(outputStream);
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "inputStream.source()", imports = {"okio.source"}))
    public final Source source(@m41 InputStream inputStream) {
        Csuper.m30700throw(inputStream, "inputStream");
        return Okio.source(inputStream);
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "path.sink(*options)", imports = {"okio.sink"}))
    public final Sink sink(@m41 java.nio.file.Path path, @m41 OpenOption... options) {
        Csuper.m30700throw(path, "path");
        Csuper.m30700throw(options, "options");
        return Okio.sink(path, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "path.source(*options)", imports = {"okio.source"}))
    public final Source source(@m41 java.nio.file.Path path, @m41 OpenOption... options) {
        Csuper.m30700throw(path, "path");
        Csuper.m30700throw(options, "options");
        return Okio.source(path, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "socket.sink()", imports = {"okio.sink"}))
    public final Sink sink(@m41 Socket socket) {
        Csuper.m30700throw(socket, "socket");
        return Okio.sink(socket);
    }

    @m41
    @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "socket.source()", imports = {"okio.source"}))
    public final Source source(@m41 Socket socket) {
        Csuper.m30700throw(socket, "socket");
        return Okio.source(socket);
    }
}
