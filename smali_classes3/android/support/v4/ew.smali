.class public Landroid/support/v4/ew;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final catch:I = 0x1

.field private static final class:I = 0x0

.field private static final const:I = 0x1

.field private static final final:I = 0x2

.field private static final super:I = 0x3

.field private static final throw:I = 0x4


# instance fields
.field private break:Landroid/support/v4/y90;

.field private case:Landroid/support/v4/ug0;

.field private do:I

.field private else:Landroid/support/v4/fe1;

.field private for:Landroid/support/v4/dw;

.field private goto:Landroid/support/v4/ug0;

.field private final if:Landroid/support/v4/hx1;

.field private new:Ljava/math/BigInteger;

.field private this:Landroid/support/v4/ug0;

.field private try:Landroid/support/v4/gw;


# direct methods
.method public constructor <init>(Landroid/support/v4/dw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/ew;->do:I

    iput-object p1, p0, Landroid/support/v4/ew;->for:Landroid/support/v4/dw;

    invoke-virtual {p1}, Landroid/support/v4/dw;->const()Landroid/support/v4/hx1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ew;->if:Landroid/support/v4/hx1;

    invoke-virtual {p1}, Landroid/support/v4/dw;->final()I

    move-result v0

    iput v0, p0, Landroid/support/v4/ew;->do:I

    invoke-virtual {p1}, Landroid/support/v4/dw;->this()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ew;->new:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/dw;->catch()Landroid/support/v4/gw;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ew;->try:Landroid/support/v4/gw;

    invoke-virtual {p1}, Landroid/support/v4/dw;->break()Landroid/support/v4/fe1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ew;->else:Landroid/support/v4/fe1;

    invoke-virtual {p1}, Landroid/support/v4/dw;->new()Landroid/support/v4/ug0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ew;->goto:Landroid/support/v4/ug0;

    invoke-virtual {p1}, Landroid/support/v4/dw;->try()Landroid/support/v4/ug0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ew;->this:Landroid/support/v4/ug0;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/hx1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/ew;->do:I

    iput-object p1, p0, Landroid/support/v4/ew;->if:Landroid/support/v4/hx1;

    return-void
.end method


# virtual methods
.method public break(Landroid/support/v4/tg0;)V
    .locals 1

    new-instance v0, Landroid/support/v4/ug0;

    invoke-direct {v0, p1}, Landroid/support/v4/ug0;-><init>(Landroid/support/v4/tg0;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/ew;->catch(Landroid/support/v4/ug0;)V

    return-void
.end method

.method public case(Landroid/support/v4/y90;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ew;->for:Landroid/support/v4/dw;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/ew;->break:Landroid/support/v4/y90;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change extensions in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public catch(Landroid/support/v4/ug0;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ew;->case:Landroid/support/v4/ug0;

    return-void
.end method

.method public class(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ew;->for:Landroid/support/v4/dw;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/support/v4/ew;->do:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change version in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do()Landroid/support/v4/dw;
    .locals 9

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget v1, p0, Landroid/support/v4/ew;->do:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/ew;->if:Landroid/support/v4/hx1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ew;->new:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/ew;->try:Landroid/support/v4/gw;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    const/4 v1, 0x5

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    new-array v4, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v5, p0, Landroid/support/v4/ew;->case:Landroid/support/v4/ug0;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/support/v4/ew;->else:Landroid/support/v4/fe1;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget-object v5, p0, Landroid/support/v4/ew;->goto:Landroid/support/v4/ug0;

    aput-object v5, v4, v2

    const/4 v2, 0x3

    iget-object v5, p0, Landroid/support/v4/ew;->this:Landroid/support/v4/ug0;

    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-object v5, p0, Landroid/support/v4/ew;->break:Landroid/support/v4/y90;

    aput-object v5, v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget v5, v3, v2

    aget-object v7, v4, v2

    if-eqz v7, :cond_3

    new-instance v8, Lorg/bouncycastle/asn1/u;

    invoke-direct {v8, v6, v5, v7}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v8}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-static {v1}, Landroid/support/v4/dw;->else(Ljava/lang/Object;)Landroid/support/v4/dw;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public else(Ljava/math/BigInteger;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/ew;->for:Landroid/support/v4/dw;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/dw;->this()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/ew;->new:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/ew;->for:Landroid/support/v4/dw;

    invoke-virtual {v0}, Landroid/support/v4/dw;->this()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/do;->if(Ljava/math/BigInteger;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/ew;->new:Ljava/math/BigInteger;

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/ew;->new:Ljava/math/BigInteger;

    return-void
.end method

.method public for(Landroid/support/v4/ug0;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ew;->goto:Landroid/support/v4/ug0;

    return-void
.end method

.method public goto(Landroid/support/v4/fe1;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ew;->for:Landroid/support/v4/dw;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/ew;->else:Landroid/support/v4/fe1;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change request policy in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(Landroid/support/v4/tg0;)V
    .locals 1

    new-instance v0, Landroid/support/v4/ug0;

    invoke-direct {v0, p1}, Landroid/support/v4/ug0;-><init>(Landroid/support/v4/tg0;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/ew;->for(Landroid/support/v4/ug0;)V

    return-void
.end method

.method public new(Landroid/support/v4/tg0;)V
    .locals 1

    new-instance v0, Landroid/support/v4/ug0;

    invoke-direct {v0, p1}, Landroid/support/v4/ug0;-><init>(Landroid/support/v4/tg0;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/ew;->try(Landroid/support/v4/ug0;)V

    return-void
.end method

.method public this(Landroid/support/v4/gw;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ew;->for:Landroid/support/v4/dw;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/ew;->try:Landroid/support/v4/gw;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change request time in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public try(Landroid/support/v4/ug0;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ew;->this:Landroid/support/v4/ug0;

    return-void
.end method
