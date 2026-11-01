.class public Landroid/support/v4/d80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/y3;

.field private if:Lorg/bouncycastle/crypto/KeyEncoder;


# direct methods
.method public constructor <init>(Landroid/support/v4/y3;Lorg/bouncycastle/crypto/KeyEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/d80;->do:Landroid/support/v4/y3;

    iput-object p2, p0, Landroid/support/v4/d80;->if:Lorg/bouncycastle/crypto/KeyEncoder;

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 2

    iget-object v0, p0, Landroid/support/v4/d80;->if:Lorg/bouncycastle/crypto/KeyEncoder;

    iget-object v1, p0, Landroid/support/v4/d80;->do:Landroid/support/v4/y3;

    invoke-virtual {v1}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/KeyEncoder;->getEncoded(Landroid/support/v4/a4;)[B

    move-result-object v0

    return-object v0
.end method

.method public if()Landroid/support/v4/y3;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d80;->do:Landroid/support/v4/y3;

    return-object v0
.end method
