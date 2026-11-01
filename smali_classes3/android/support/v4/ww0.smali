.class public Landroid/support/v4/ww0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:Landroid/support/v4/k50;

.field private if:Landroid/support/v4/k50;


# direct methods
.method public constructor <init>(Landroid/support/v4/k50;Landroid/support/v4/k50;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "staticPublicKey cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ephemeralPublicKey cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/e40;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/ww0;->do:Landroid/support/v4/k50;

    iput-object p2, p0, Landroid/support/v4/ww0;->if:Landroid/support/v4/k50;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Static and ephemeral public keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()Landroid/support/v4/k50;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ww0;->if:Landroid/support/v4/k50;

    return-object v0
.end method

.method public if()Landroid/support/v4/k50;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ww0;->do:Landroid/support/v4/k50;

    return-object v0
.end method
