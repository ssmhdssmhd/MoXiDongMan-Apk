.class public Landroid/support/v4/lr0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final break:I = 0x8000

.field public static final case:I = 0x8

.field public static final else:I = 0x4

.field public static final for:I = 0x40

.field public static final goto:I = 0x2

.field public static final if:I = 0x80

.field public static final new:I = 0x20

.field public static final this:I = 0x1

.field public static final try:I = 0x10


# instance fields
.field private do:Lorg/bouncycastle/asn1/instanceof;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/instanceof;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/lr0;->do:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/instanceof;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/lr0;->do:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/lr0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/lr0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/lr0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/lr0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/lr0;-><init>(Lorg/bouncycastle/asn1/instanceof;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static new(Landroid/support/v4/y90;)Landroid/support/v4/lr0;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->case:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p0, v0}, Landroid/support/v4/y90;->this(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/lr0;->case(Ljava/lang/Object;)Landroid/support/v4/lr0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public else()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lr0;->do:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/if;->throw()I

    move-result v0

    return v0
.end method

.method public goto(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lr0;->do:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/if;->import()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lr0;->do:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/lr0;->do:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, "KeyUsage: 0x"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    goto :goto_0
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lr0;->do:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object v0

    return-object v0
.end method
