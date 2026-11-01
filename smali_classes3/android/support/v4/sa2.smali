.class public final Landroid/support/v4/sa2;
.super Lkotlin/ranges/this;
.source "SourceFile"

# interfaces
.implements Lkotlin/ranges/ClosedRange;


# annotations
.annotation build Landroid/support/v4/gf2;
    markerClass = {
        Lkotlin/break;
    }
.end annotation

.annotation build Landroid/support/v4/iz1;
    version = "1.5"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/sa2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/ranges/this;",
        "Lkotlin/ranges/ClosedRange<",
        "Landroid/support/v4/oa2;",
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0017B\u001a\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001b\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0013\u0010\u000b\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016R\u001c\u0010\u0012\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroid/support/v4/sa2;",
        "Lkotlin/ranges/this;",
        "Lkotlin/ranges/ClosedRange;",
        "Landroid/support/v4/oa2;",
        "value",
        "",
        "try",
        "(J)Z",
        "isEmpty",
        "",
        "other",
        "equals",
        "",
        "hashCode",
        "",
        "toString",
        "else",
        "()J",
        "start",
        "case",
        "endInclusive",
        "<init>",
        "(JJLandroid/support/v4/rx;)V",
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
.field public static final case:Landroid/support/v4/sa2$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private static final try:Landroid/support/v4/sa2;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/support/v4/sa2$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/sa2$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Landroid/support/v4/sa2;->case:Landroid/support/v4/sa2$do;

    .line 1
    new-instance v0, Landroid/support/v4/sa2;

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/sa2;-><init>(JJ)V

    sput-object v0, Landroid/support/v4/sa2;->try:Landroid/support/v4/sa2;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 8

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v7}, Lkotlin/ranges/this;-><init>(JJJLandroid/support/v4/rx;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroid/support/v4/rx;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/sa2;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic new()Landroid/support/v4/sa2;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/sa2;->try:Landroid/support/v4/sa2;

    return-object v0
.end method


# virtual methods
.method public case()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/this;->if()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 2

    .line 1
    check-cast p1, Landroid/support/v4/oa2;

    invoke-virtual {p1}, Landroid/support/v4/oa2;->t()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/sa2;->try(J)Z

    move-result p1

    return p1
.end method

.method public else()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/this;->do()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/support/v4/sa2;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/sa2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/sa2;

    invoke-virtual {v0}, Landroid/support/v4/sa2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/this;->do()J

    move-result-wide v0

    check-cast p1, Landroid/support/v4/sa2;

    invoke-virtual {p1}, Lkotlin/ranges/this;->do()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/this;->if()J

    move-result-wide v0

    invoke-virtual {p1}, Lkotlin/ranges/this;->if()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/sa2;->case()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v4/oa2;->if(J)Landroid/support/v4/oa2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/sa2;->else()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v4/oa2;->if(J)Landroid/support/v4/oa2;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/sa2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/this;->do()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/ranges/this;->do()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/support/v4/oa2;->goto(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/support/v4/oa2;->goto(J)J

    move-result-wide v0

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lkotlin/ranges/this;->if()J

    move-result-wide v2

    invoke-virtual {p0}, Lkotlin/ranges/this;->if()J

    move-result-wide v5

    ushr-long v4, v5, v4

    invoke-static {v4, v5}, Landroid/support/v4/oa2;->goto(J)J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/support/v4/oa2;->goto(J)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/this;->do()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/ranges/this;->if()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/oc2;->else(JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/ranges/this;->do()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/support/v4/oa2;->o(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/ranges/this;->if()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/support/v4/oa2;->o(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(J)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/this;->do()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/oc2;->else(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/this;->if()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/oc2;->else(JJ)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
