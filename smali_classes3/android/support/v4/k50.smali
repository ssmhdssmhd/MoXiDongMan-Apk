.class public Landroid/support/v4/k50;
.super Landroid/support/v4/s40;
.source "SourceFile"


# instance fields
.field private final for:Lorg/bouncycastle/math/ec/new;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/e40;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/support/v4/s40;-><init>(ZLandroid/support/v4/e40;)V

    invoke-virtual {p2}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/support/v4/e40;->else(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/k50;->for:Lorg/bouncycastle/math/ec/new;

    return-void
.end method


# virtual methods
.method public for()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k50;->for:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method
