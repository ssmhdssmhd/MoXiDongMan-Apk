.class public Lorg/bouncycastle/jcajce/provider/digest/goto$do;
.super Landroid/support/v4/a6;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/support/v4/nw0;

    invoke-direct {v0}, Landroid/support/v4/nw0;-><init>()V

    invoke-direct {p0, v0}, Landroid/support/v4/a6;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/goto$do;

    new-instance v1, Landroid/support/v4/nw0;

    iget-object v2, p0, Landroid/support/v4/a6;->do:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Landroid/support/v4/nw0;

    invoke-direct {v1, v2}, Landroid/support/v4/nw0;-><init>(Landroid/support/v4/nw0;)V

    iput-object v1, v0, Landroid/support/v4/a6;->do:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
