.class public Landroid/support/v4/w11;
.super Landroid/support/v4/a4;
.source "SourceFile"


# instance fields
.field private for:Ljava/math/BigInteger;

.field private if:Ljava/math/BigInteger;

.field public new:I


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/a4;-><init>(Z)V

    iput-object p2, p0, Landroid/support/v4/w11;->if:Ljava/math/BigInteger;

    iput-object p3, p0, Landroid/support/v4/w11;->for:Ljava/math/BigInteger;

    iput p4, p0, Landroid/support/v4/w11;->new:I

    return-void
.end method


# virtual methods
.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/w11;->new:I

    return v0
.end method

.method public if()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w11;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w11;->for:Ljava/math/BigInteger;

    return-object v0
.end method
