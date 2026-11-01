.class public Landroid/support/v4/ey1$if;
.super Landroid/support/v4/ey1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/ey1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Landroid/support/v4/bq1;

    invoke-direct {v0}, Landroid/support/v4/bq1;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincs/case;

    new-instance v3, Landroid/support/v4/cq1;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Landroid/support/v4/cq1;-><init>(I)V

    new-instance v4, Landroid/support/v4/bq1;

    invoke-direct {v4}, Landroid/support/v4/bq1;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/case;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/ey1;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/pqc/crypto/sphincs/case;)V

    return-void
.end method
