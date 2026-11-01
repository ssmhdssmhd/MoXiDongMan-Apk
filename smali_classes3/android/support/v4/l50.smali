.class public Landroid/support/v4/l50;
.super Landroid/support/v4/t40;
.source "SourceFile"


# instance fields
.field private if:Lorg/bouncycastle/math/ec/new;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/d50;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/support/v4/t40;-><init>(Landroid/support/v4/d50;)V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroid/support/v4/l50;->if:Lorg/bouncycastle/math/ec/new;

    return-void
.end method


# virtual methods
.method public if()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/l50;->if:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method
