.class public Lorg/bouncycastle/jcajce/provider/symmetric/super$final;
.super Lorg/bouncycastle/jcajce/provider/symmetric/super$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "final"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "PBKDF2"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/super$if;-><init>(Ljava/lang/String;I)V

    return-void
.end method
