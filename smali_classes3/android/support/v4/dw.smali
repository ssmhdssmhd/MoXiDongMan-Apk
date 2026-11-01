.class public Landroid/support/v4/dw;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final break:I = 0x1

.field private static final catch:I = 0x0

.field private static final class:I = 0x1

.field private static final const:I = 0x2

.field private static final final:I = 0x3

.field private static final super:I = 0x4


# instance fields
.field private case:Landroid/support/v4/fe1;

.field private do:I

.field private else:Landroid/support/v4/ug0;

.field private for:Ljava/math/BigInteger;

.field private goto:Landroid/support/v4/ug0;

.field private if:Landroid/support/v4/hx1;

.field private new:Landroid/support/v4/gw;

.field private this:Landroid/support/v4/y90;

.field private try:Landroid/support/v4/ug0;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/dw;->do:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/goto;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iput v2, p0, Landroid/support/v4/dw;->do:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/support/v4/dw;->do:I

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/hx1;->new(Ljava/lang/Object;)Landroid/support/v4/hx1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/dw;->if:Landroid/support/v4/hx1;

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v4, v2, Lorg/bouncycastle/asn1/goto;

    if-eqz v4, :cond_1

    invoke-static {v2}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/dw;->for:Ljava/math/BigInteger;

    goto :goto_2

    :cond_1
    instance-of v4, v2, Lorg/bouncycastle/asn1/case;

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v2}, Landroid/support/v4/gw;->try(Ljava/lang/Object;)Landroid/support/v4/gw;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/dw;->new:Landroid/support/v4/gw;

    goto :goto_2

    :cond_3
    instance-of v4, v2, Lorg/bouncycastle/asn1/import;

    if-eqz v4, :cond_2

    invoke-static {v2}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v4

    if-eqz v4, :cond_8

    if-eq v4, v0, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    invoke-static {v2, v1}, Landroid/support/v4/y90;->catch(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/y90;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/dw;->this:Landroid/support/v4/y90;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag number encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v2, v1}, Landroid/support/v4/ug0;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug0;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/dw;->goto:Landroid/support/v4/ug0;

    goto :goto_2

    :cond_6
    invoke-static {v2, v1}, Landroid/support/v4/ug0;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug0;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/dw;->else:Landroid/support/v4/ug0;

    goto :goto_2

    :cond_7
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/fe1;->new(Ljava/lang/Object;)Landroid/support/v4/fe1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/dw;->case:Landroid/support/v4/fe1;

    goto :goto_2

    :cond_8
    invoke-static {v2, v1}, Landroid/support/v4/ug0;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug0;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/dw;->try:Landroid/support/v4/ug0;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/dw;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/dw;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/dw;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/dw;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/dw;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static goto(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/dw;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/dw;->else(Ljava/lang/Object;)Landroid/support/v4/dw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Landroid/support/v4/fe1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dw;->case:Landroid/support/v4/fe1;

    return-object v0
.end method

.method public case()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dw;->this:Landroid/support/v4/y90;

    return-object v0
.end method

.method public catch()Landroid/support/v4/gw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dw;->new:Landroid/support/v4/gw;

    return-object v0
.end method

.method public class()Landroid/support/v4/ug0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dw;->try:Landroid/support/v4/ug0;

    return-object v0
.end method

.method public const()Landroid/support/v4/hx1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dw;->if:Landroid/support/v4/hx1;

    return-object v0
.end method

.method public final()I
    .locals 1

    iget v0, p0, Landroid/support/v4/dw;->do:I

    return v0
.end method

.method public new()Landroid/support/v4/ug0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dw;->else:Landroid/support/v4/ug0;

    return-object v0
.end method

.method public this()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dw;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 9

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget v1, p0, Landroid/support/v4/dw;->do:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/dw;->if:Landroid/support/v4/hx1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/dw;->for:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/dw;->new:Landroid/support/v4/gw;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    const/4 v1, 0x5

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    new-array v4, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v5, p0, Landroid/support/v4/dw;->try:Landroid/support/v4/ug0;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/support/v4/dw;->case:Landroid/support/v4/fe1;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget-object v5, p0, Landroid/support/v4/dw;->else:Landroid/support/v4/ug0;

    aput-object v5, v4, v2

    const/4 v2, 0x3

    iget-object v5, p0, Landroid/support/v4/dw;->goto:Landroid/support/v4/ug0;

    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-object v5, p0, Landroid/support/v4/dw;->this:Landroid/support/v4/y90;

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

    return-object v1

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

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DVCSRequestInformation {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/support/v4/dw;->do:I

    const-string v2, "\n"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/v4/dw;->do:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/dw;->if:Landroid/support/v4/hx1;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/dw;->for:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nonce: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/dw;->for:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/dw;->new:Landroid/support/v4/gw;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/dw;->new:Landroid/support/v4/gw;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Landroid/support/v4/dw;->try:Landroid/support/v4/ug0;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requester: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/dw;->try:Landroid/support/v4/ug0;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Landroid/support/v4/dw;->case:Landroid/support/v4/fe1;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPolicy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/dw;->case:Landroid/support/v4/fe1;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Landroid/support/v4/dw;->else:Landroid/support/v4/ug0;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dvcs: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/dw;->else:Landroid/support/v4/ug0;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Landroid/support/v4/dw;->goto:Landroid/support/v4/ug0;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataLocations: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/dw;->goto:Landroid/support/v4/ug0;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Landroid/support/v4/dw;->this:Landroid/support/v4/y90;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extensions: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/dw;->this:Landroid/support/v4/y90;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Landroid/support/v4/ug0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dw;->goto:Landroid/support/v4/ug0;

    return-object v0
.end method
