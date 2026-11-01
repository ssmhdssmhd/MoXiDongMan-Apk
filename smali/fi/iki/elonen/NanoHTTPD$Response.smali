.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$if;,
        Lfi/iki/elonen/NanoHTTPD$Response$for;,
        Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    }
.end annotation


# instance fields
.field private break:Z

.field private final case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private do:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

.field private else:Lfi/iki/elonen/NanoHTTPD$class;

.field private for:Ljava/io/InputStream;

.field private goto:Z

.field private if:Ljava/lang/String;

.field private new:J

.field private this:Z

.field private final try:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$do;

    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoHTTPD$Response$do;-><init>(Lfi/iki/elonen/NanoHTTPD$Response;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->try:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->case:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->do:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 5
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->if:Ljava/lang/String;

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 6
    new-instance p3, Ljava/io/ByteArrayInputStream;

    new-array p4, v0, [B

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->for:Ljava/io/InputStream;

    .line 7
    iput-wide p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->new:J

    goto :goto_0

    .line 8
    :cond_0
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->for:Ljava/io/InputStream;

    .line 9
    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->new:J

    .line 10
    :goto_0
    iget-wide p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->new:J

    const/4 p5, 0x1

    cmp-long v1, p3, p1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->goto:Z

    .line 11
    iput-boolean p5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->break:Z

    return-void
.end method

.method private class(Ljava/io/OutputStream;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4000

    long-to-int v2, v0

    .line 1
    new-array v2, v2, [B

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, p2, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v7, p2, v5

    if-gtz v7, :cond_2

    if-eqz v4, :cond_4

    :cond_2
    if-eqz v4, :cond_3

    move-wide v5, v0

    goto :goto_1

    .line 2
    :cond_3
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 3
    :goto_1
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$Response;->for:Ljava/io/InputStream;

    long-to-int v6, v5

    invoke-virtual {v7, v2, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_5

    :cond_4
    return-void

    .line 4
    :cond_5
    invoke-virtual {p1, v2, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    if-nez v4, :cond_1

    int-to-long v5, v5

    sub-long/2addr p2, v5

    goto :goto_0
.end method

.method private const(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->this:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, -0x1

    .line 3
    invoke-direct {p0, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->class(Ljava/io/OutputStream;J)V

    .line 4
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->class(Ljava/io/OutputStream;J)V

    :goto_0
    return-void
.end method

.method public static synthetic do(Lfi/iki/elonen/NanoHTTPD$Response;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->case:Ljava/util/Map;

    return-object p0
.end method

.method private final(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->else:Lfi/iki/elonen/NanoHTTPD$class;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$class;->HEAD:Lfi/iki/elonen/NanoHTTPD$class;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->goto:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Lfi/iki/elonen/NanoHTTPD$Response$if;

    invoke-direct {p2, p1}, Lfi/iki/elonen/NanoHTTPD$Response$if;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, -0x1

    .line 3
    invoke-direct {p0, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->const(Ljava/io/OutputStream;J)V

    .line 4
    invoke-virtual {p2}, Lfi/iki/elonen/NanoHTTPD$Response$if;->do()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->const(Ljava/io/OutputStream;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public break(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->if:Ljava/lang/String;

    return-object v0
.end method

.method public catch(Ljava/io/OutputStream;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->do:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    if-eqz v1, :cond_a

    .line 4
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Lfi/iki/elonen/NanoHTTPD$for;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->if:Ljava/lang/String;

    invoke-direct {v4, v5}, Lfi/iki/elonen/NanoHTTPD$for;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lfi/iki/elonen/NanoHTTPD$for;->try()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const-string v2, "HTTP/1.1 "

    .line 5
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->do:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    invoke-interface {v4}, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, " \r\n"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 6
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->if:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v4, "Content-Type"

    .line 7
    invoke-virtual {p0, v1, v4, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->break(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "date"

    .line 8
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "Date"

    .line 9
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->break(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->try:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->break(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "connection"

    .line 12
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Connection"

    .line 13
    iget-boolean v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->break:Z

    if-eqz v2, :cond_3

    const-string v2, "keep-alive"

    goto :goto_1

    :cond_3
    const-string v2, "close"

    :goto_1
    invoke-virtual {p0, v1, v0, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->break(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "content-length"

    .line 14
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    iput-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->this:Z

    .line 16
    :cond_5
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->this:Z

    if-eqz v0, :cond_6

    const-string v0, "Content-Encoding"

    const-string v2, "gzip"

    .line 17
    invoke-virtual {p0, v1, v0, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->break(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->throw(Z)V

    .line 19
    :cond_6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->for:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    iget-wide v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->new:J

    goto :goto_2

    :cond_7
    const-wide/16 v2, 0x0

    .line 20
    :goto_2
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->else:Lfi/iki/elonen/NanoHTTPD$class;

    sget-object v4, Lfi/iki/elonen/NanoHTTPD$class;->HEAD:Lfi/iki/elonen/NanoHTTPD$class;

    if-eq v0, v4, :cond_8

    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->goto:Z

    if-eqz v0, :cond_8

    const-string v0, "Transfer-Encoding"

    const-string v4, "chunked"

    .line 21
    invoke-virtual {p0, v1, v0, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->break(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_8
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->this:Z

    if-nez v0, :cond_9

    .line 23
    invoke-virtual {p0, v1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->super(Ljava/io/PrintWriter;J)J

    move-result-wide v2

    :cond_9
    :goto_3
    const-string v0, "\r\n"

    .line 24
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 25
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 26
    invoke-direct {p0, p1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->final(Ljava/io/OutputStream;J)V

    .line 27
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 28
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->for:Ljava/io/InputStream;

    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto :goto_4

    .line 29
    :cond_a
    new-instance p1, Ljava/lang/Error;

    const-string v0, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 30
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not send response to the client"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->for:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public else()Lfi/iki/elonen/NanoHTTPD$class;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->else:Lfi/iki/elonen/NanoHTTPD$class;

    return-object v0
.end method

.method public for(Z)V
    .locals 2

    const-string v0, "connection"

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->try:Ljava/util/Map;

    const-string v1, "close"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->try:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public goto()Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->do:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    return-object v0
.end method

.method public if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->try:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public import(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->this:Z

    return-void
.end method

.method public native(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->break:Z

    return-void
.end method

.method public new()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->for:Ljava/io/InputStream;

    return-object v0
.end method

.method public public(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->if:Ljava/lang/String;

    return-void
.end method

.method public return(Lfi/iki/elonen/NanoHTTPD$class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->else:Lfi/iki/elonen/NanoHTTPD$class;

    return-void
.end method

.method public static(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->do:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    return-void
.end method

.method public super(Ljava/io/PrintWriter;J)J
    .locals 4

    const-string v0, "content-length"

    .line 1
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content-length was no number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 4
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-wide p2
.end method

.method public this()Z
    .locals 2

    const-string v0, "connection"

    .line 1
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public throw(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->goto:Z

    return-void
.end method

.method public try(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->case:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public while(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->for:Ljava/io/InputStream;

    return-void
.end method
