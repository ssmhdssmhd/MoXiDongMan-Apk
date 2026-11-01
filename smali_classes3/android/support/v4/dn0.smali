.class public final Landroid/support/v4/dn0;
.super Landroid/support/v4/bn0;
.source "SourceFile"

# interfaces
.implements Lkotlin/ranges/ClosedRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/dn0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bn0;",
        "Lkotlin/ranges/ClosedRange<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0015B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0011\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0013\u0010\n\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u0016\u0010\u0010\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroid/support/v4/dn0;",
        "Landroid/support/v4/bn0;",
        "Lkotlin/ranges/ClosedRange;",
        "",
        "value",
        "",
        "case",
        "isEmpty",
        "",
        "other",
        "equals",
        "hashCode",
        "",
        "toString",
        "goto",
        "()Ljava/lang/Integer;",
        "start",
        "else",
        "endInclusive",
        "<init>",
        "(II)V",
        "do",
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
.field public static final case:Landroid/support/v4/dn0$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private static final try:Landroid/support/v4/dn0;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v4/dn0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/dn0$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Landroid/support/v4/dn0;->case:Landroid/support/v4/dn0$do;

    .line 1
    new-instance v0, Landroid/support/v4/dn0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/dn0;-><init>(II)V

    sput-object v0, Landroid/support/v4/dn0;->try:Landroid/support/v4/dn0;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/bn0;-><init>(III)V

    return-void
.end method

.method public static final synthetic try()Landroid/support/v4/dn0;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dn0;->try:Landroid/support/v4/dn0;

    return-object v0
.end method


# virtual methods
.method public case(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/bn0;->do()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/bn0;->if()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/dn0;->case(I)Z

    move-result p1

    return p1
.end method

.method public else()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/bn0;->if()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/support/v4/dn0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/dn0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/dn0;

    invoke-virtual {v0}, Landroid/support/v4/dn0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/bn0;->do()I

    move-result v0

    check-cast p1, Landroid/support/v4/dn0;

    invoke-virtual {p1}, Landroid/support/v4/bn0;->do()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/bn0;->if()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/bn0;->if()I

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dn0;->else()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dn0;->goto()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public goto()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/bn0;->do()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dn0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/bn0;->do()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/support/v4/bn0;->if()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/bn0;->do()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/bn0;->if()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/bn0;->do()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/bn0;->if()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
