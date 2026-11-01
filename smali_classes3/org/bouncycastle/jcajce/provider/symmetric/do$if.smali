.class public Lorg/bouncycastle/jcajce/provider/symmetric/do$if;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/do$if$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/do$if$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/do$if$do;-><init>(Lorg/bouncycastle/jcajce/provider/symmetric/do$do;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/new;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
