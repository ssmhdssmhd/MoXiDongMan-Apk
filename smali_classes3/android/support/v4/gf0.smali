.class public Landroid/support/v4/gf0;
.super Landroid/support/v4/bf0;
.source "SourceFile"


# instance fields
.field private for:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/pqc/crypto/gmss/do;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/support/v4/bf0;-><init>(ZLorg/bouncycastle/pqc/crypto/gmss/do;)V

    iput-object p1, p0, Landroid/support/v4/gf0;->for:[B

    return-void
.end method


# virtual methods
.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gf0;->for:[B

    return-object v0
.end method
