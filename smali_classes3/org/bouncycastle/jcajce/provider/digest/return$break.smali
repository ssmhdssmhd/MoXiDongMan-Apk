.class public Lorg/bouncycastle/jcajce/provider/digest/return$break;
.super Lorg/bouncycastle/jcajce/provider/digest/return$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/return$if;-><init>(I)V

    return-void
.end method
