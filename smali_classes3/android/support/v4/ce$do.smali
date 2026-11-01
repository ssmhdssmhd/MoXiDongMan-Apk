.class public final Landroid/support/v4/ce$do;
.super Landroid/support/v4/yd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/ce;->super(Ljava/io/BufferedInputStream;)Landroid/support/v4/yd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016R\"\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0014\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "android/support/v4/ce$do",
        "Landroid/support/v4/yd;",
        "Landroid/support/v4/ub2;",
        "try",
        "",
        "hasNext",
        "",
        "nextByte",
        "",
        "I",
        "for",
        "()I",
        "else",
        "(I)V",
        "nextPrepared",
        "Z",
        "new",
        "()Z",
        "goto",
        "(Z)V",
        "finished",
        "if",
        "case",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private do:I

.field private for:Z

.field private if:Z

.field public final synthetic new:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/ce$do;->new:Ljava/io/BufferedInputStream;

    invoke-direct {p0}, Landroid/support/v4/yd;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/support/v4/ce$do;->do:I

    return-void
.end method

.method private final try()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/ce$do;->if:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/ce$do;->for:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v4/ce$do;->new:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    iput v0, p0, Landroid/support/v4/ce$do;->do:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroid/support/v4/ce$do;->if:Z

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iput-boolean v1, p0, Landroid/support/v4/ce$do;->for:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final case(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/ce$do;->for:Z

    return-void
.end method

.method public final else(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/ce$do;->do:I

    return-void
.end method

.method public final for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ce$do;->do:I

    return v0
.end method

.method public final goto(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/ce$do;->if:Z

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ce$do;->try()V

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/ce$do;->for:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final if()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/ce$do;->for:Z

    return v0
.end method

.method public final new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/ce$do;->if:Z

    return v0
.end method

.method public nextByte()B
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ce$do;->try()V

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/ce$do;->for:Z

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Landroid/support/v4/ce$do;->do:I

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroid/support/v4/ce$do;->if:Z

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Input stream is over."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
