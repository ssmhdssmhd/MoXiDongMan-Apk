.class public Landroid/support/v4/yh0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/asn1/catch;

.field private final for:[B

.field private final if:Lorg/bouncycastle/asn1/x509/try;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/x509/try;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/yh0;->do:Lorg/bouncycastle/asn1/catch;

    iput-object p2, p0, Landroid/support/v4/yh0;->if:Lorg/bouncycastle/asn1/x509/try;

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yh0;->for:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/yh0;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yh0;->for:[B

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/yh0;->if:Lorg/bouncycastle/asn1/x509/try;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/yh0;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/x509/try;->else(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/yh0;->if:Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yh0;->for:[B

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown sequence length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/yh0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/yh0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/yh0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/yh0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/yh0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/yh0;
    .locals 1

    new-instance v0, Landroid/support/v4/yh0;

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/yh0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0
.end method


# virtual methods
.method public goto()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yh0;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yh0;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/yh0;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/yh0;->if:Lorg/bouncycastle/asn1/x509/try;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Landroid/support/v4/yh0;->if:Lorg/bouncycastle/asn1/x509/try;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/yh0;->for:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/x509/try;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yh0;->if:Lorg/bouncycastle/asn1/x509/try;

    return-object v0
.end method
