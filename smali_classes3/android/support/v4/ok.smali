.class public Landroid/support/v4/ok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/ok$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B!\u0008\u0000\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000f\u001a\u0004\u0008\u0013\u0010\u0011R\u0019\u0010\u0014\u001a\u00020\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroid/support/v4/ok;",
        "",
        "",
        "Landroid/support/v4/nk;",
        "new",
        "",
        "isEmpty",
        "",
        "other",
        "equals",
        "",
        "hashCode",
        "",
        "toString",
        "first",
        "C",
        "do",
        "()C",
        "last",
        "if",
        "step",
        "I",
        "for",
        "()I",
        "start",
        "endInclusive",
        "<init>",
        "(CCI)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final new:Landroid/support/v4/ok$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# instance fields
.field private final do:C

.field private final for:I

.field private final if:C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/ok$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/ok$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Landroid/support/v4/ok;->new:Landroid/support/v4/ok$do;

    return-void
.end method

.method public constructor <init>(CCI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    .line 2
    iput-char p1, p0, Landroid/support/v4/ok;->do:C

    .line 3
    invoke-static {p1, p2, p3}, Landroid/support/v4/wf1;->for(III)I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Landroid/support/v4/ok;->if:C

    .line 4
    iput p3, p0, Landroid/support/v4/ok;->for:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final do()C
    .locals 1

    .line 1
    iget-char v0, p0, Landroid/support/v4/ok;->do:C

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/support/v4/ok;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/ok;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/ok;

    invoke-virtual {v0}, Landroid/support/v4/ok;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-char v0, p0, Landroid/support/v4/ok;->do:C

    check-cast p1, Landroid/support/v4/ok;

    iget-char v1, p1, Landroid/support/v4/ok;->do:C

    if-ne v0, v1, :cond_2

    iget-char v0, p0, Landroid/support/v4/ok;->if:C

    iget-char v1, p1, Landroid/support/v4/ok;->if:C

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/support/v4/ok;->for:I

    iget p1, p1, Landroid/support/v4/ok;->for:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ok;->for:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ok;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-char v0, p0, Landroid/support/v4/ok;->do:C

    mul-int/lit8 v0, v0, 0x1f

    iget-char v1, p0, Landroid/support/v4/ok;->if:C

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v4/ok;->for:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final if()C
    .locals 1

    .line 1
    iget-char v0, p0, Landroid/support/v4/ok;->if:C

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/ok;->for:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-char v0, p0, Landroid/support/v4/ok;->do:C

    iget-char v3, p0, Landroid/support/v4/ok;->if:C

    invoke-static {v0, v3}, Lkotlin/jvm/internal/super;->public(II)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-char v0, p0, Landroid/support/v4/ok;->do:C

    iget-char v3, p0, Landroid/support/v4/ok;->if:C

    invoke-static {v0, v3}, Lkotlin/jvm/internal/super;->public(II)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ok;->new()Landroid/support/v4/nk;

    move-result-object v0

    return-object v0
.end method

.method public new()Landroid/support/v4/nk;
    .locals 4
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/pk;

    iget-char v1, p0, Landroid/support/v4/ok;->do:C

    iget-char v2, p0, Landroid/support/v4/ok;->if:C

    iget v3, p0, Landroid/support/v4/ok;->for:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/pk;-><init>(CCI)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/ok;->for:I

    const-string v1, " step "

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v2, p0, Landroid/support/v4/ok;->do:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Landroid/support/v4/ok;->if:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/ok;->for:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v2, p0, Landroid/support/v4/ok;->do:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Landroid/support/v4/ok;->if:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/ok;->for:I

    neg-int v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
