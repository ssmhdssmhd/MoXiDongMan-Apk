.class public Lfreemarker/cache/this;
.super Lfreemarker/cache/native;
.source "SourceFile"


# instance fields
.field private final if:[Lfreemarker/cache/native;


# direct methods
.method public varargs constructor <init>([Lfreemarker/cache/native;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/native;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/cache/this;->if:[Lfreemarker/cache/native;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/h52;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/i52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/cache/this;->if:[Lfreemarker/cache/native;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5, p1, p2}, Lfreemarker/cache/native;->do(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/h52;

    move-result-object v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_0

    move-object v2, v5

    goto :goto_2

    :cond_0
    if-nez v3, :cond_2

    .line 3
    invoke-virtual {p0}, Lfreemarker/cache/native;->if()Lfreemarker/template/do;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    new-instance v6, Landroid/support/v4/h52;

    invoke-direct {v6}, Landroid/support/v4/h52;-><init>()V

    .line 5
    invoke-virtual {v6, v3}, Landroid/support/v4/h52;->n1(Lfreemarker/template/do;)V

    .line 6
    invoke-virtual {v6, v2}, Landroid/support/v4/h52;->f1(Landroid/support/v4/h52;)V

    move-object v2, v6

    move-object v3, v2

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The TemplateConfigurationFactory wasn\'t associated to a Configuration yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {v3, v5}, Landroid/support/v4/h52;->f1(Landroid/support/v4/h52;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public new(Lfreemarker/template/do;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/cache/this;->if:[Lfreemarker/cache/native;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lfreemarker/cache/native;->for(Lfreemarker/template/do;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
