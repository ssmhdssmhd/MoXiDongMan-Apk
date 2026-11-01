.class public Lorg/bouncycastle/jcajce/provider/symmetric/super$break;
.super Lorg/bouncycastle/jcajce/provider/symmetric/super$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "PBKDF2"

    const/4 v1, 0x5

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/super$if;-><init>(Ljava/lang/String;II)V

    return-void
.end method
