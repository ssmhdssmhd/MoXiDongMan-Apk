.class public Landroid/support/v4/ag;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final break:I = 0x6

.field public static final case:I = 0x2

.field public static final catch:I = 0x7

.field public static final class:I = 0x8

.field private static final const:[Z

.field public static final else:I = 0x3

.field public static final goto:I = 0x4

.field public static final new:I = 0x0

.field public static final this:I = 0x5

.field public static final try:I = 0x1


# instance fields
.field private do:I

.field private for:Lorg/bouncycastle/asn1/x509/if;

.field private if:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/ag;->const:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput p1, p0, Landroid/support/v4/ag;->do:I

    iput-object p2, p0, Landroid/support/v4/ag;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    iput v0, p0, Landroid/support/v4/ag;->do:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/ag;->do:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/mq1;->try(Ljava/lang/Object;)Landroid/support/v4/mq1;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Landroid/support/v4/j51;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/j51;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/cg;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/cg;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/mg;->new(Ljava/lang/Object;)Landroid/support/v4/mg;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/do;->try(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/x509/do;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/fr;->case(Ljava/lang/Object;)Landroid/support/v4/fr;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v1}, Landroid/support/v4/xa1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/xa1;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/n50;->try(Ljava/lang/Object;)Landroid/support/v4/n50;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v1}, Landroid/support/v4/rg;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/rg;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/support/v4/ag;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/if;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/ag;->do:I

    iput-object p1, p0, Landroid/support/v4/ag;->for:Lorg/bouncycastle/asn1/x509/if;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/ag;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ag;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ag;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/ag;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    invoke-direct {v0, p0}, Landroid/support/v4/ag;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Landroid/support/v4/ag;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/if;->else(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/if;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ag;-><init>(Lorg/bouncycastle/asn1/x509/if;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static new(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/ag;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/ag;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/ag;->case(Ljava/lang/Object;)Landroid/support/v4/ag;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public else()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ag;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ag;->do:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/ag;->for:Lorg/bouncycastle/asn1/x509/if;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    sget-object v1, Landroid/support/v4/ag;->const:[Z

    iget v2, p0, Landroid/support/v4/ag;->do:I

    aget-boolean v1, v1, v2

    iget-object v3, p0, Landroid/support/v4/ag;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/if;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertEtcToken {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/ag;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/x509/if;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ag;->for:Lorg/bouncycastle/asn1/x509/if;

    return-object v0
.end method
