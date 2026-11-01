.class public Lfreemarker/cache/new;
.super Lfreemarker/cache/native;
.source "SourceFile"


# instance fields
.field private final for:Landroid/support/v4/h52;

.field private final if:Lfreemarker/cache/default;

.field private final new:Lfreemarker/cache/native;


# direct methods
.method public constructor <init>(Lfreemarker/cache/default;Landroid/support/v4/h52;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lfreemarker/cache/native;-><init>()V

    .line 6
    iput-object p1, p0, Lfreemarker/cache/new;->if:Lfreemarker/cache/default;

    .line 7
    iput-object p2, p0, Lfreemarker/cache/new;->for:Landroid/support/v4/h52;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lfreemarker/cache/new;->new:Lfreemarker/cache/native;

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/default;Lfreemarker/cache/native;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/native;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/cache/new;->if:Lfreemarker/cache/default;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lfreemarker/cache/new;->for:Landroid/support/v4/h52;

    .line 4
    iput-object p2, p0, Lfreemarker/cache/new;->new:Lfreemarker/cache/native;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/h52;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/i52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/cache/new;->if:Lfreemarker/cache/default;

    invoke-virtual {v0, p1, p2}, Lfreemarker/cache/default;->do(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lfreemarker/cache/new;->new:Lfreemarker/cache/native;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lfreemarker/cache/native;->do(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/h52;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lfreemarker/cache/new;->for:Landroid/support/v4/h52;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public new(Lfreemarker/template/do;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/new;->for:Landroid/support/v4/h52;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v4/h52;->n1(Lfreemarker/template/do;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/cache/new;->new:Lfreemarker/cache/native;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/cache/native;->for(Lfreemarker/template/do;)V

    :cond_1
    return-void
.end method
