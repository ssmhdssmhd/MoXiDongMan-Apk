.class public final Landroid/support/v4/sc0;
.super Landroid/support/v4/gf1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/gf1<",
        "[F>;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000c\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0014J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Landroid/support/v4/sc0;",
        "Landroid/support/v4/gf1;",
        "",
        "",
        "this",
        "",
        "value",
        "Landroid/support/v4/ub2;",
        "goto",
        "break",
        "size",
        "<init>",
        "(I)V",
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
.field private final new:[F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/gf1;-><init>(I)V

    .line 2
    new-array p1, p1, [F

    iput-object p1, p0, Landroid/support/v4/sc0;->new:[F

    return-void
.end method


# virtual methods
.method public final break()[F
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/sc0;->new:[F

    invoke-virtual {p0}, Landroid/support/v4/gf1;->case()I

    move-result v1

    new-array v1, v1, [F

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/gf1;->else(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public bridge synthetic for(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroid/support/v4/sc0;->this([F)I

    move-result p1

    return p1
.end method

.method public final goto(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/sc0;->new:[F

    invoke-virtual {p0}, Landroid/support/v4/gf1;->if()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v4/gf1;->try(I)V

    aput p1, v0, v1

    return-void
.end method

.method public this([F)I
    .locals 1
    .param p1    # [F
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "$this$getSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length p1, p1

    return p1
.end method
