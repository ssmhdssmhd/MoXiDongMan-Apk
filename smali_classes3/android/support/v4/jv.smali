.class public Landroid/support/v4/jv;
.super Landroid/support/v4/ev;
.source "SourceFile"


# instance fields
.field private for:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Landroid/support/v4/hv;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/support/v4/ev;-><init>(ZLandroid/support/v4/hv;)V

    iput-object p1, p0, Landroid/support/v4/jv;->for:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public for()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jv;->for:Ljava/math/BigInteger;

    return-object v0
.end method
