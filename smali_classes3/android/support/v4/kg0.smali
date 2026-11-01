.class public final Landroid/support/v4/kg0;
.super Landroid/support/v4/jg0;
.source "SourceFile"


# static fields
.field private static final const:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/kg0;->const:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroid/support/v4/kg0;->const:[B

    invoke-direct {p0, v0}, Landroid/support/v4/jg0;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/kg0;)V
    .locals 1

    sget-object v0, Landroid/support/v4/kg0;->const:[B

    invoke-direct {p0, v0}, Landroid/support/v4/jg0;-><init>([B)V

    invoke-virtual {p0, p1}, Landroid/support/v4/jg0;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Landroid/support/v4/kg0;

    invoke-direct {v0, p0}, Landroid/support/v4/kg0;-><init>(Landroid/support/v4/kg0;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/support/v4/jg0;->doFinal([BI)I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST3411-2012-256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method
