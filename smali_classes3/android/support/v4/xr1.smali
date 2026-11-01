.class public Landroid/support/v4/xr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECPointMap;


# instance fields
.field public final do:Lorg/bouncycastle/math/ec/for;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/for;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xr1;->do:Lorg/bouncycastle/math/ec/for;

    return-void
.end method


# virtual methods
.method public map(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xr1;->do:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/new;->interface(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method
