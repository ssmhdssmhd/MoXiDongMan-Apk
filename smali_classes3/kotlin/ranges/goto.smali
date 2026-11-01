.class final Lkotlin/ranges/goto;
.super Landroid/support/v4/la2;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/iz1;
    version = "1.3"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0003\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0011\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0005\u001a\u00020\u0004H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\nR\u001c\u0010\u000c\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0008\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/ranges/goto;",
        "Landroid/support/v4/la2;",
        "",
        "hasNext",
        "Landroid/support/v4/ja2;",
        "if",
        "()I",
        "do",
        "I",
        "finalElement",
        "Z",
        "for",
        "step",
        "new",
        "next",
        "first",
        "last",
        "",
        "<init>",
        "(IIILandroid/support/v4/rx;)V",
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
.field private final do:I

.field private final for:I

.field private if:Z

.field private new:I


# direct methods
.method private constructor <init>(III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v4/la2;-><init>()V

    .line 2
    iput p2, p0, Lkotlin/ranges/goto;->do:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2}, Landroid/support/v4/oc2;->for(II)I

    move-result v2

    if-lez p3, :cond_0

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_0
    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lkotlin/ranges/goto;->if:Z

    .line 4
    invoke-static {p3}, Landroid/support/v4/ja2;->goto(I)I

    move-result p3

    iput p3, p0, Lkotlin/ranges/goto;->for:I

    .line 5
    iget-boolean p3, p0, Lkotlin/ranges/goto;->if:Z

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    iput p1, p0, Lkotlin/ranges/goto;->new:I

    return-void
.end method

.method public synthetic constructor <init>(IIILandroid/support/v4/rx;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lkotlin/ranges/goto;-><init>(III)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/ranges/goto;->if:Z

    return v0
.end method

.method public if()I
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/ranges/goto;->new:I

    .line 2
    iget v1, p0, Lkotlin/ranges/goto;->do:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lkotlin/ranges/goto;->if:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lkotlin/ranges/goto;->if:Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 6
    :cond_1
    iget v1, p0, Lkotlin/ranges/goto;->for:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/support/v4/ja2;->goto(I)I

    move-result v1

    iput v1, p0, Lkotlin/ranges/goto;->new:I

    :goto_0
    return v0
.end method
