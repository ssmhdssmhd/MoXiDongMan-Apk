.class public Landroid/support/v4/la1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final break:I = 0x7

.field public static final case:I = 0x3

.field public static final catch:I = 0x8

.field public static final class:I = 0x9

.field public static final const:I = 0xa

.field public static final default:I = 0x16

.field public static final else:I = 0x4

.field public static final extends:I = 0x17

.field public static final final:I = 0xb

.field public static final finally:I = 0x18

.field public static final for:I = 0x0

.field public static final goto:I = 0x5

.field public static final import:I = 0xf

.field public static final native:I = 0x10

.field public static final new:I = 0x1

.field public static final package:I = 0x19

.field public static final private:I = 0x1a

.field public static final public:I = 0x11

.field public static final return:I = 0x12

.field public static final static:I = 0x13

.field public static final super:I = 0xc

.field public static final switch:I = 0x14

.field public static final this:I = 0x6

.field public static final throw:I = 0xd

.field public static final throws:I = 0x15

.field public static final try:I = 0x2

.field public static final while:I = 0xe


# instance fields
.field private do:I

.field private if:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput p1, p0, Landroid/support/v4/la1;->do:I

    invoke-static {p1, p2}, Landroid/support/v4/la1;->new(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/la1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    iput v0, p0, Landroid/support/v4/la1;->do:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/la1;->new(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/la1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/la1;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/la1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/la1;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    invoke-direct {v0, p0}, Landroid/support/v4/la1;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Landroid/support/v4/la1;

    return-object p0
.end method

.method private static new(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/je1;->case(Ljava/lang/Object;)Landroid/support/v4/je1;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/ke1;->case(Ljava/lang/Object;)Landroid/support/v4/ke1;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/zf;->new(Ljava/lang/Object;)Landroid/support/v4/zf;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/j80;->else(Ljava/lang/Object;)Landroid/support/v4/j80;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/qg0;->new(Ljava/lang/Object;)Landroid/support/v4/qg0;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/pg0;->new(Ljava/lang/Object;)Landroid/support/v4/pg0;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Landroid/support/v4/ta1;->new(Ljava/lang/Object;)Landroid/support/v4/ta1;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p1}, Landroid/support/v4/ma1;->new(Ljava/lang/Object;)Landroid/support/v4/ma1;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p1}, Landroid/support/v4/we;->try(Ljava/lang/Object;)Landroid/support/v4/we;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p1}, Landroid/support/v4/do1;->else(Ljava/lang/Object;)Landroid/support/v4/do1;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p1}, Landroid/support/v4/se;->new(Ljava/lang/Object;)Landroid/support/v4/se;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p1}, Landroid/support/v4/ge;->new(Ljava/lang/Object;)Landroid/support/v4/ge;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Landroid/support/v4/hg;->try(Ljava/lang/Object;)Landroid/support/v4/hg;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {p1}, Landroid/support/v4/ig;->new(Ljava/lang/Object;)Landroid/support/v4/ig;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {p1}, Landroid/support/v4/fo1;->case(Ljava/lang/Object;)Landroid/support/v4/fo1;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {p1}, Landroid/support/v4/ho1;->new(Ljava/lang/Object;)Landroid/support/v4/ho1;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {p1}, Landroid/support/v4/ir0;->case(Ljava/lang/Object;)Landroid/support/v4/ir0;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {p1}, Landroid/support/v4/ig;->new(Ljava/lang/Object;)Landroid/support/v4/ig;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {p1}, Landroid/support/v4/hg;->try(Ljava/lang/Object;)Landroid/support/v4/hg;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {p1}, Landroid/support/v4/ig;->new(Ljava/lang/Object;)Landroid/support/v4/ig;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {p1}, Landroid/support/v4/cb1;->new(Ljava/lang/Object;)Landroid/support/v4/cb1;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {p1}, Landroid/support/v4/bb1;->new(Ljava/lang/Object;)Landroid/support/v4/bb1;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {p1}, Landroid/support/v4/yg;->try(Ljava/lang/Object;)Landroid/support/v4/yg;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {p1}, Landroid/support/v4/hg;->try(Ljava/lang/Object;)Landroid/support/v4/hg;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-static {p1}, Landroid/support/v4/ig;->new(Ljava/lang/Object;)Landroid/support/v4/ig;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-static {p1}, Landroid/support/v4/hg;->try(Ljava/lang/Object;)Landroid/support/v4/hg;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-static {p1}, Landroid/support/v4/ig;->new(Ljava/lang/Object;)Landroid/support/v4/ig;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public else()I
    .locals 1

    iget v0, p0, Landroid/support/v4/la1;->do:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget v1, p0, Landroid/support/v4/la1;->do:I

    iget-object v2, p0, Landroid/support/v4/la1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/la1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method
