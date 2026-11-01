.class Lcom/google/common/io/new$if;
.super Lcom/google/common/io/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final do:[B

.field public final for:I

.field public final if:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/io/new$if;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/io/new;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/io/new$if;->do:[B

    .line 4
    iput p2, p0, Lcom/google/common/io/new$if;->if:I

    .line 5
    iput p3, p0, Lcom/google/common/io/new$if;->for:I

    return-void
.end method


# virtual methods
.method public break(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/new$if;->do:[B

    iget v1, p0, Lcom/google/common/io/new$if;->if:I

    iget v2, p0, Lcom/google/common/io/new$if;->for:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/hash/HashFunction;->hashBytes([BII)Lcom/google/common/hash/class;

    move-result-object p1

    return-object p1
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/io/new$if;->for:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public class()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/new$if;->const()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public const()Ljava/io/InputStream;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/new$if;->do:[B

    iget v2, p0, Lcom/google/common/io/new$if;->if:I

    iget v3, p0, Lcom/google/common/io/new$if;->for:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public else(Ljava/io/OutputStream;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/new$if;->do:[B

    iget v1, p0, Lcom/google/common/io/new$if;->if:I

    iget v2, p0, Lcom/google/common/io/new$if;->for:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2
    iget p1, p0, Lcom/google/common/io/new$if;->for:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public final(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/new$if;->do:[B

    iget v1, p0, Lcom/google/common/io/new$if;->if:I

    iget v2, p0, Lcom/google/common/io/new$if;->for:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    .line 2
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public import(JJ)Lcom/google/common/io/new;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "offset (%s) may not be negative"

    .line 1
    invoke-static {v4, v5, p1, p2}, Landroid/support/v4/af1;->throw(ZLjava/lang/String;J)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "length (%s) may not be negative"

    .line 2
    invoke-static {v0, v1, p3, p4}, Landroid/support/v4/af1;->throw(ZLjava/lang/String;J)V

    .line 3
    iget v0, p0, Lcom/google/common/io/new$if;->for:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 4
    iget v0, p0, Lcom/google/common/io/new$if;->for:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 5
    iget v0, p0, Lcom/google/common/io/new$if;->if:I

    long-to-int p2, p1

    add-int/2addr v0, p2

    .line 6
    new-instance p1, Lcom/google/common/io/new$if;

    iget-object p2, p0, Lcom/google/common/io/new$if;->do:[B

    long-to-int p4, p3

    invoke-direct {p1, p2, v0, p4}, Lcom/google/common/io/new$if;-><init>([BII)V

    return-object p1
.end method

.method public super()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/io/new$if;->do:[B

    iget v1, p0, Lcom/google/common/io/new$if;->if:I

    iget v2, p0, Lcom/google/common/io/new$if;->for:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public throw()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/io/new$if;->for:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteSource.wrap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/google/common/io/if;->do()Lcom/google/common/io/if;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/new$if;->do:[B

    iget v3, p0, Lcom/google/common/io/new$if;->if:I

    iget v4, p0, Lcom/google/common/io/new$if;->for:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/if;->const([BII)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const-string v3, "..."

    invoke-static {v1, v2, v3}, Landroid/support/v4/t3;->catch(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public while()Lcom/google/common/base/while;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/while<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/io/new$if;->for:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/while;->of(Ljava/lang/Object;)Lcom/google/common/base/while;

    move-result-object v0

    return-object v0
.end method
