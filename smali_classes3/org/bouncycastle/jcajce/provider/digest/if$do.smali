.class public Lorg/bouncycastle/jcajce/provider/digest/if$do;
.super Landroid/support/v4/a6;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/support/v4/y9;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/support/v4/y9;-><init>(I)V

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

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/if$do;

    new-instance v1, Landroid/support/v4/y9;

    iget-object v2, p0, Landroid/support/v4/a6;->do:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Landroid/support/v4/y9;

    invoke-direct {v1, v2}, Landroid/support/v4/y9;-><init>(Landroid/support/v4/y9;)V

    iput-object v1, v0, Landroid/support/v4/a6;->do:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
