.class Lcom/google/common/io/static;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation


# instance fields
.field private final do:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/goto;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/io/Reader;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/goto;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/io/static;->do:Ljava/util/Iterator;

    .line 3
    invoke-direct {p0}, Lcom/google/common/io/static;->do()V

    return-void
.end method

.method private do()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/static;->close()V

    .line 2
    iget-object v0, p0, Lcom/google/common/io/static;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/io/static;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/goto;

    invoke-virtual {v0}, Lcom/google/common/io/goto;->const()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/static;->if:Ljava/io/Reader;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/static;->if:Ljava/io/Reader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lcom/google/common/io/static;->if:Ljava/io/Reader;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/common/io/static;->if:Ljava/io/Reader;

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 2
    .param p1    # [C
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/static;->if:Ljava/io/Reader;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/common/io/static;->do()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/static;->read([CII)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/static;->if:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "n is negative"

    .line 1
    invoke-static {v2, v3}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/google/common/io/static;->if:Ljava/io/Reader;

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v2, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    return-wide v2

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/common/io/static;->do()V

    goto :goto_1

    :cond_2
    return-wide v0
.end method
