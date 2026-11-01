.class public Landroid/support/v4/wh2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static if:Landroid/support/v4/yh2;


# instance fields
.field public do:Lorg/bouncycastle/math/ec/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/yh2;

    invoke-direct {v0}, Landroid/support/v4/yh2;-><init>()V

    sput-object v0, Landroid/support/v4/wh2;->if:Landroid/support/v4/yh2;

    return-void
.end method

.method public constructor <init>(IIIILorg/bouncycastle/asn1/class;)V
    .locals 7

    new-instance v6, Lorg/bouncycastle/math/ec/for$for;

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p5}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p5

    const/4 v0, 0x1

    invoke-direct {v5, v0, p5}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/for$for;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p0, v6}, Landroid/support/v4/wh2;-><init>(Lorg/bouncycastle/math/ec/for;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/class;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/for$new;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/math/ec/for$new;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Landroid/support/v4/wh2;-><init>(Lorg/bouncycastle/math/ec/for;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/for;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wh2;->do:Lorg/bouncycastle/math/ec/for;

    return-void
.end method


# virtual methods
.method public new()Lorg/bouncycastle/math/ec/for;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wh2;->do:Lorg/bouncycastle/math/ec/for;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    sget-object v0, Landroid/support/v4/wh2;->if:Landroid/support/v4/yh2;

    iget-object v1, p0, Landroid/support/v4/wh2;->do:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v0, v1}, Landroid/support/v4/yh2;->if(Lorg/bouncycastle/math/ec/for;)I

    move-result v0

    sget-object v1, Landroid/support/v4/wh2;->if:Landroid/support/v4/yh2;

    iget-object v2, p0, Landroid/support/v4/wh2;->do:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/yh2;->for(Ljava/math/BigInteger;I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/j;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    return-object v1
.end method
