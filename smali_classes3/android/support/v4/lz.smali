.class public Landroid/support/v4/lz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v4/vy1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/vy1;

    check-cast p2, Landroid/support/v4/vy1;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/lz;->do(Landroid/support/v4/vy1;Landroid/support/v4/vy1;)I

    move-result p1

    return p1
.end method

.method public do(Landroid/support/v4/vy1;Landroid/support/v4/vy1;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/vy1;->if()D

    move-result-wide v0

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/vy1;->if()D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpg-double v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
