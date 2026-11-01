.class public final Lfreemarker/core/n;
.super Lfreemarker/core/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/core/p<",
        "Landroid/support/v4/g52;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:Lfreemarker/core/y1;

.field private final if:Lfreemarker/core/y1;


# direct methods
.method public constructor <init>(Lfreemarker/core/y1;Lfreemarker/core/y1;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/n;-><init>(Ljava/lang/String;Lfreemarker/core/y1;Lfreemarker/core/y1;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/y1;Lfreemarker/core/y1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lfreemarker/core/p;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/e91;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/support/v4/e91;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfreemarker/core/n;->do:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lfreemarker/core/n;->if:Lfreemarker/core/y1;

    .line 5
    iput-object p3, p0, Lfreemarker/core/n;->for:Lfreemarker/core/y1;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->if:Lfreemarker/core/y1;

    iget-object v1, p0, Lfreemarker/core/n;->for:Lfreemarker/core/y1;

    invoke-virtual {v1, p1}, Lfreemarker/core/y1;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/core/y1;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->if:Lfreemarker/core/y1;

    invoke-virtual {v0}, Lfreemarker/core/y1;->catch()Z

    move-result v0

    return v0
.end method

.method public const(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->if:Lfreemarker/core/y1;

    invoke-virtual {v0, p1}, Lfreemarker/core/y1;->const(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public default()Lfreemarker/core/y1;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->if:Lfreemarker/core/y1;

    return-object v0
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->if:Lfreemarker/core/y1;

    invoke-virtual {v0}, Landroid/support/v4/e91;->do()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extends(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/g52;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/g52;

    invoke-direct {v0, p1, p2, p0}, Landroid/support/v4/g52;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/n;)V

    return-object v0
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->if:Lfreemarker/core/y1;

    invoke-virtual {v0}, Landroid/support/v4/e91;->for()Z

    move-result v0

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->do:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic static(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/ep;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/n;->extends(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/g52;

    move-result-object p1

    return-object p1
.end method

.method public super(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->if:Lfreemarker/core/y1;

    iget-object v1, p0, Lfreemarker/core/n;->for:Lfreemarker/core/y1;

    invoke-virtual {v1, p1}, Lfreemarker/core/y1;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lfreemarker/core/y1;->super(Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method

.method public throws()Lfreemarker/core/y1;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/n;->for:Lfreemarker/core/y1;

    return-object v0
.end method
