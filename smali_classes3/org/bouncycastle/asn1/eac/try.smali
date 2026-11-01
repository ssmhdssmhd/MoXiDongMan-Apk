.class public Lorg/bouncycastle/asn1/eac/try;
.super Landroid/support/v4/ug1;
.source "SourceFile"


# static fields
.field private static final break:I = 0x1

.field private static final catch:I = 0x2

.field private static final class:I = 0x4

.field private static final const:I = 0x8

.field private static final final:I = 0x10

.field private static final super:I = 0x20

.field private static final throw:I = 0x40


# instance fields
.field private case:Ljava/math/BigInteger;

.field private do:Lorg/bouncycastle/asn1/catch;

.field private else:[B

.field private for:Ljava/math/BigInteger;

.field private goto:Ljava/math/BigInteger;

.field private if:Ljava/math/BigInteger;

.field private new:Ljava/math/BigInteger;

.field private this:I

.field private try:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;[BI)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/ug1;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->do:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/eac/try;->native(Ljava/math/BigInteger;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/eac/try;->while(Ljava/math/BigInteger;)V

    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/eac/try;->return(Ljava/math/BigInteger;)V

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, p5}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/try;->super(Lorg/bouncycastle/asn1/class;)V

    invoke-direct {p0, p6}, Lorg/bouncycastle/asn1/eac/try;->import(Ljava/math/BigInteger;)V

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, p7}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/try;->public(Lorg/bouncycastle/asn1/class;)V

    int-to-long p1, p8

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/try;->throw(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/ug1;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->do:Lorg/bouncycastle/asn1/catch;

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/try;->public(Lorg/bouncycastle/asn1/class;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/ug1;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->do:Lorg/bouncycastle/asn1/catch;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/import;

    const-string v3, "Unknown Object Identifier!"

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v1}, Landroid/support/v4/mc2;->try(Ljava/lang/Object;)Landroid/support/v4/mc2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/mc2;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/try;->throw(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/try;->public(Lorg/bouncycastle/asn1/class;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Landroid/support/v4/mc2;->try(Ljava/lang/Object;)Landroid/support/v4/mc2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/mc2;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/try;->import(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/try;->super(Lorg/bouncycastle/asn1/class;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, Landroid/support/v4/mc2;->try(Ljava/lang/Object;)Landroid/support/v4/mc2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/mc2;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/try;->return(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v1}, Landroid/support/v4/mc2;->try(Ljava/lang/Object;)Landroid/support/v4/mc2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/mc2;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/try;->while(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v1}, Landroid/support/v4/mc2;->try(Ljava/lang/Object;)Landroid/support/v4/mc2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/mc2;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/eac/try;->native(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All options must be either present or absent!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private import(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->case:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Order of base point R already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native(Ljava/math/BigInteger;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->if:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prime Modulus P already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private public(Lorg/bouncycastle/asn1/class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->else:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Public Point Y already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private return(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->new:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Second Coef B already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private super(Lorg/bouncycastle/asn1/class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->try:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Base Point G already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private throw(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->goto:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cofactor F already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private while(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/try;->for:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "First Coef A already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public break()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->case:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public case(Lorg/bouncycastle/asn1/catch;Z)Landroid/support/v4/import;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    new-instance v1, Landroid/support/v4/mc2;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/try;->catch()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/mc2;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/mc2;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/try;->this()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/mc2;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/mc2;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/try;->const()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/mc2;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x4

    new-instance v3, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/try;->else()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v1, p1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/mc2;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/try;->break()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/mc2;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x6

    new-instance v3, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/try;->class()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-direct {v1, p1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-nez p2, :cond_1

    new-instance p1, Landroid/support/v4/mc2;

    const/4 p2, 0x7

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/try;->goto()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Landroid/support/v4/mc2;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    return-object v0
.end method

.method public catch()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->if:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public class()[B
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->else:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public const()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->new:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public else()[B
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->try:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->if:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goto()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->goto:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public this()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/try;->this:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->for:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/try;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/eac/try;->final()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/asn1/eac/try;->case(Lorg/bouncycastle/asn1/catch;Z)Landroid/support/v4/import;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/try;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method
