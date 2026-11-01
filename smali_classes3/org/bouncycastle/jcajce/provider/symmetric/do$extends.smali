.class public Lorg/bouncycastle/jcajce/provider/symmetric/do$extends;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extends"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v1, "PBEWithMD5And256BitAES-CBC-OpenSSL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x100

    const/16 v7, 0x80

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/break;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;ZIIII)V

    return-void
.end method
