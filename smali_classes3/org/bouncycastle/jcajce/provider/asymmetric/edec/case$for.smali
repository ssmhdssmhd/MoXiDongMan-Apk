.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/case$for;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "EdDSA"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/case;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method
