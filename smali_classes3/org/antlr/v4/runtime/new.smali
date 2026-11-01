.class public final Lorg/antlr/v4/runtime/new;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/io/Reader;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 1
    :try_start_0
    invoke-static {v0}, Lorg/antlr/v4/runtime/try;->if(I)Lorg/antlr/v4/runtime/try$if;

    move-result-object v1

    .line 2
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/try$if;->do(Ljava/nio/CharBuffer;)V

    .line 6
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/try$if;->case()Lorg/antlr/v4/runtime/try;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/case;->if(Lorg/antlr/v4/runtime/try;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static case(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/new;->goto(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Ljava/io/InputStream;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/new;->class(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static class(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/new;->const(Ljava/io/InputStream;Ljava/nio/charset/Charset;J)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/io/InputStream;Ljava/nio/charset/Charset;J)Lorg/antlr/v4/runtime/CharStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p0

    const/16 v2, 0x1000

    .line 2
    :try_start_0
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    const-string v4, "<unknown>"

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lorg/antlr/v4/runtime/new;->new(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/case;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 5
    :try_start_2
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public static do(Ljava/nio/channels/ReadableByteChannel;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/new;->if(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static else(Ljava/nio/file/Path;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/new;->goto(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method

.method public static final(Ljava/lang/String;)Lorg/antlr/v4/runtime/case;
    .locals 1

    const-string v0, "<unknown>"

    .line 1
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/new;->super(Ljava/lang/String;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;

    move-result-object p0

    return-object p0
.end method

.method public static for(Ljava/nio/channels/ReadableByteChannel;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-wide/16 v5, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lorg/antlr/v4/runtime/new;->new(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/case;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 2
    invoke-static {p0, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v7

    const/16 v2, 0x1000

    .line 3
    :try_start_0
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lorg/antlr/v4/runtime/new;->new(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/case;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 4
    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v7, :cond_1

    .line 6
    :try_start_2
    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static if(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    const/16 v0, 0x1000

    const-string v1, "<unknown>"

    invoke-static {p0, v0, p1, v1}, Lorg/antlr/v4/runtime/new;->for(Ljava/nio/channels/ReadableByteChannel;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;ILjava/nio/charset/CodingErrorAction;Ljava/lang/String;J)Lorg/antlr/v4/runtime/case;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {p2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, p5, v2

    if-nez v6, :cond_0

    int-to-long p5, p2

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long p2, p5, v2

    if-gtz p2, :cond_5

    :goto_0
    long-to-int p2, p5

    .line 3
    invoke-static {p2}, Lorg/antlr/v4/runtime/try;->if(I)Lorg/antlr/v4/runtime/try$if;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    const/4 p5, 0x0

    :goto_1
    if-nez p5, :cond_3

    .line 5
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p5

    const/4 p6, -0x1

    if-ne p5, p6, :cond_1

    const/4 p5, 0x1

    goto :goto_2

    :cond_1
    const/4 p5, 0x0

    .line 6
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1, v0, v1, p5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p6

    .line 8
    invoke-virtual {p6}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p6}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    invoke-virtual {p2, v1}, Lorg/antlr/v4/runtime/try$if;->do(Ljava/nio/CharBuffer;)V

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p5

    if-eqz p5, :cond_4

    sget-object p5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p3, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 16
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 17
    :cond_4
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 18
    invoke-virtual {p2, v1}, Lorg/antlr/v4/runtime/try$if;->do(Ljava/nio/CharBuffer;)V

    .line 19
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/try$if;->case()Lorg/antlr/v4/runtime/try;

    move-result-object p1

    .line 20
    invoke-static {p1, p4}, Lorg/antlr/v4/runtime/case;->if(Lorg/antlr/v4/runtime/try;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    return-object p1

    .line 22
    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "inputSize %d larger than max %d"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v5

    const p4, 0x7fffffff

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 23
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static super(Ljava/lang/String;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/try;->if(I)Lorg/antlr/v4/runtime/try$if;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 4
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/try$if;->do(Ljava/nio/CharBuffer;)V

    .line 6
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/try$if;->case()Lorg/antlr/v4/runtime/try;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/case;->if(Lorg/antlr/v4/runtime/try;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;

    move-result-object p0

    return-object p0
.end method

.method public static this(Ljava/io/Reader;)Lorg/antlr/v4/runtime/case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<unknown>"

    .line 1
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/new;->break(Ljava/io/Reader;Ljava/lang/String;)Lorg/antlr/v4/runtime/case;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/String;)Lorg/antlr/v4/runtime/CharStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/new;->goto(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/antlr/v4/runtime/CharStream;

    move-result-object p0

    return-object p0
.end method
