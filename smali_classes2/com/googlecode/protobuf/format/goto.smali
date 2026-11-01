.class public abstract Lcom/googlecode/protobuf/format/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/protobuf/format/goto$do;
    }
.end annotation


# instance fields
.field private do:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public break(Lcom/google/protobuf/Message;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/protobuf/format/goto;->else(Lcom/google/protobuf/Message;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public case(Lcom/google/protobuf/Message;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/protobuf/format/goto;->else(Lcom/google/protobuf/Message;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public catch(Lcom/google/protobuf/t1;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/protobuf/format/goto;->this(Lcom/google/protobuf/t1;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public class(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    return-void
.end method

.method public do()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public abstract else(Lcom/google/protobuf/Message;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public for(Ljava/io/InputStream;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    .line 2
    invoke-static {}, Lcom/google/protobuf/protected;->static()Lcom/google/protobuf/protected;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/googlecode/protobuf/format/goto;->new(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public goto(Lcom/google/protobuf/t1;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/protobuf/format/goto;->this(Lcom/google/protobuf/t1;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public if(Ljava/io/InputStream;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/goto;->do:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/googlecode/protobuf/format/goto;->new(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public abstract new(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract this(Lcom/google/protobuf/t1;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public try(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/protected;->static()Lcom/google/protobuf/protected;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/googlecode/protobuf/format/goto;->new(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method
