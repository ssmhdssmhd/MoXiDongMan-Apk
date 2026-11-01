.class public Lorg/bouncycastle/asn1/cmc/do;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:[Landroid/support/v4/ta;


# direct methods
.method public constructor <init>(Landroid/support/v4/ta;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/ta;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/do;->do:[Landroid/support/v4/ta;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/goto;->for(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/ta;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/do;->do:[Landroid/support/v4/ta;

    return-void
.end method

.method public constructor <init>([Landroid/support/v4/ta;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/goto;->do([Landroid/support/v4/ta;)[Landroid/support/v4/ta;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/do;->do:[Landroid/support/v4/ta;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/cmc/do;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmc/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/do;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/do;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/do;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmc/do;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmc/do;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/do;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public new()[Landroid/support/v4/ta;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/do;->do:[Landroid/support/v4/ta;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/goto;->do([Landroid/support/v4/ta;)[Landroid/support/v4/ta;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/do;->do:[Landroid/support/v4/ta;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
