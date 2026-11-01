.class Lorg/bouncycastle/util/test/do$for;
.super Ljava/security/Provider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/test/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "BCFIPS_FIXED_RNG"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "BCFIPS Fixed Secure Random Provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method
