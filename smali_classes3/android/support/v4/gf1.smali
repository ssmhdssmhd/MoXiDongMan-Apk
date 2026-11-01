.class public abstract Landroid/support/v4/gf1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u0013\u0010\u0004\u001a\u00020\u0003*\u00028\u0000H$\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\n\u001a\u00020\u0003H\u0004J\u001f\u0010\r\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\u00038\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroid/support/v4/gf1;",
        "",
        "T",
        "",
        "for",
        "(Ljava/lang/Object;)I",
        "spreadArgument",
        "Landroid/support/v4/ub2;",
        "do",
        "(Ljava/lang/Object;)V",
        "case",
        "values",
        "result",
        "else",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "position",
        "I",
        "if",
        "()I",
        "try",
        "(I)V",
        "size",
        "<init>",
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

.field private final for:I

.field private final if:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/gf1;->for:I

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/gf1;->if:[Ljava/lang/Object;

    return-void
.end method

.method private static synthetic new()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final case()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/support/v4/gf1;->for:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, p0, Landroid/support/v4/gf1;->if:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Landroid/support/v4/gf1;->for(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v2, v4

    if-eq v3, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final do(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "spreadArgument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroid/support/v4/gf1;->if:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/gf1;->do:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/gf1;->do:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final else(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroid/support/v4/gf1;->for:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    iget-object v5, p0, Landroid/support/v4/gf1;->if:[Ljava/lang/Object;

    aget-object v5, v5, v2

    if-eqz v5, :cond_1

    if-ge v3, v2, :cond_0

    sub-int v6, v2, v3

    .line 3
    invoke-static {p1, v3, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    .line 4
    :cond_0
    invoke-virtual {p0, v5}, Landroid/support/v4/gf1;->for(Ljava/lang/Object;)I

    move-result v3

    .line 5
    invoke-static {v5, v1, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    add-int/lit8 v3, v2, 0x1

    :cond_1
    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 6
    :goto_1
    iget v0, p0, Landroid/support/v4/gf1;->for:I

    if-ge v1, v0, :cond_4

    sub-int/2addr v0, v1

    .line 7
    invoke-static {p1, v1, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-object p2
.end method

.method public abstract for(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/gf1;->do:I

    return v0
.end method

.method public final try(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/gf1;->do:I

    return-void
.end method
