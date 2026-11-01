.class public Landroid/support/v4/ey1$do;
.super Landroid/support/v4/ey1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/ey1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v0, Landroid/support/v4/aq1;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/support/v4/aq1;-><init>(I)V

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/catch;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincs/case;

    new-instance v4, Landroid/support/v4/aq1;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Landroid/support/v4/aq1;-><init>(I)V

    new-instance v5, Landroid/support/v4/aq1;

    invoke-direct {v5, v1}, Landroid/support/v4/aq1;-><init>(I)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincs/case;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v4/ey1;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/pqc/crypto/sphincs/case;)V

    return-void
.end method
