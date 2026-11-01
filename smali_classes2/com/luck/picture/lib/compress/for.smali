.class public abstract Lcom/luck/picture/lib/compress/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/compress/InputStreamProvider;


# instance fields
.field private do:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/for;->do:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iput-object v1, p0, Lcom/luck/picture/lib/compress/for;->do:Ljava/io/InputStream;

    .line 4
    throw v0

    .line 5
    :catch_0
    :goto_0
    iput-object v1, p0, Lcom/luck/picture/lib/compress/for;->do:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public abstract do()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public open()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/luck/picture/lib/compress/for;->close()V

    .line 2
    invoke-virtual {p0}, Lcom/luck/picture/lib/compress/for;->do()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/for;->do:Ljava/io/InputStream;

    return-object v0
.end method
