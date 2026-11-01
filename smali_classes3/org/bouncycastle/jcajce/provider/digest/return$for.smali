.class public Lorg/bouncycastle/jcajce/provider/digest/return$for;
.super Landroid/support/v4/a6;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Landroid/support/v4/f02;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p1}, Landroid/support/v4/f02;-><init>(II)V

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

    check-cast v0, Landroid/support/v4/a6;

    new-instance v1, Landroid/support/v4/f02;

    iget-object v2, p0, Landroid/support/v4/a6;->do:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Landroid/support/v4/f02;

    invoke-direct {v1, v2}, Landroid/support/v4/f02;-><init>(Landroid/support/v4/f02;)V

    iput-object v1, v0, Landroid/support/v4/a6;->do:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
