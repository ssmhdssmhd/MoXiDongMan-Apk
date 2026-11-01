.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try$do;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "X25519"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/try;-><init>(Ljava/lang/String;)V

    return-void
.end method
