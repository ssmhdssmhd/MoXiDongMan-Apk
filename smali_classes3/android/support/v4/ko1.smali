.class public Landroid/support/v4/ko1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:Lorg/bouncycastle/asn1/v;

.field private final do:Landroid/support/v4/tg2;

.field private final for:Landroid/support/v4/af;

.field private final if:Lorg/bouncycastle/asn1/goto;

.field private new:Lorg/bouncycastle/asn1/case;

.field private try:Lorg/bouncycastle/asn1/class;


# direct methods
.method public constructor <init>(Landroid/support/v4/tg2;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/af;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/class;Lorg/bouncycastle/asn1/v;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ko1;->do:Landroid/support/v4/tg2;

    iput-object p2, p0, Landroid/support/v4/ko1;->if:Lorg/bouncycastle/asn1/goto;

    iput-object p3, p0, Landroid/support/v4/ko1;->for:Landroid/support/v4/af;

    iput-object p4, p0, Landroid/support/v4/ko1;->new:Lorg/bouncycastle/asn1/case;

    iput-object p5, p0, Landroid/support/v4/ko1;->try:Lorg/bouncycastle/asn1/class;

    iput-object p6, p0, Landroid/support/v4/ko1;->case:Lorg/bouncycastle/asn1/v;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x6

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ko1;->do:Landroid/support/v4/tg2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ko1;->if:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/af;->new(Ljava/lang/Object;)Landroid/support/v4/af;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ko1;->for:Landroid/support/v4/af;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/case;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/ko1;->new:Lorg/bouncycastle/asn1/case;

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/ko1;->try:Lorg/bouncycastle/asn1/class;

    move v1, v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/v;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/v;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ko1;->case:Lorg/bouncycastle/asn1/v;

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/ko1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ko1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ko1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ko1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ko1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Landroid/support/v4/af;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ko1;->for:Landroid/support/v4/af;

    return-object v0
.end method

.method public case()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ko1;->new:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public catch()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ko1;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public class(Lorg/bouncycastle/asn1/v;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ko1;->case:Lorg/bouncycastle/asn1/v;

    return-void
.end method

.method public const(Lorg/bouncycastle/asn1/case;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ko1;->new:Lorg/bouncycastle/asn1/case;

    return-void
.end method

.method public else()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ko1;->do:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public final(Lorg/bouncycastle/asn1/class;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ko1;->try:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ko1;->try:Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ko1;->case:Lorg/bouncycastle/asn1/v;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ko1;->try:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ko1;->do:Landroid/support/v4/tg2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ko1;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ko1;->for:Landroid/support/v4/af;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ko1;->new:Lorg/bouncycastle/asn1/case;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/ko1;->try:Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/ko1;->case:Lorg/bouncycastle/asn1/v;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
