.class public Landroid/support/v4/uv;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final new:[B


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;

.field private for:[B

.field private if:Landroid/support/v4/pv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/uv;->new:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x2at
        -0x15t
        0x45t
        -0xft
        0x3ct
        0x70t
        -0x7et
        -0x80t
        -0x3ct
        -0x6at
        0x7bt
        0x23t
        0x1ft
        0x5et
        -0x53t
        -0xat
        0x58t
        -0x15t
        -0x5ct
        -0x40t
        0x37t
        0x29t
        0x1dt
        0x38t
        -0x27t
        0x6bt
        -0x10t
        0x25t
        -0x36t
        0x4et
        0x17t
        -0x8t
        -0x17t
        0x72t
        0xdt
        -0x3at
        0x15t
        -0x4ct
        0x3at
        0x28t
        -0x69t
        0x5ft
        0xbt
        -0x3ft
        -0x22t
        -0x5dt
        0x64t
        0x38t
        -0x4bt
        0x64t
        -0x16t
        0x2ct
        0x17t
        -0x61t
        -0x30t
        0x12t
        0x3et
        0x6dt
        -0x48t
        -0x6t
        -0x3bt
        0x79t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v4/pv;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Landroid/support/v4/uv;->new:[B

    iput-object v0, p0, Landroid/support/v4/uv;->for:[B

    iput-object p1, p0, Landroid/support/v4/uv;->if:Landroid/support/v4/pv;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Landroid/support/v4/uv;->new:[B

    iput-object v0, p0, Landroid/support/v4/uv;->for:[B

    iput-object p1, p0, Landroid/support/v4/uv;->do:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Landroid/support/v4/uv;->new:[B

    iput-object v0, p0, Landroid/support/v4/uv;->for:[B

    iput-object p1, p0, Landroid/support/v4/uv;->do:Lorg/bouncycastle/asn1/catch;

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uv;->for:[B

    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/uv;
    .locals 4

    instance-of v0, p0, Landroid/support/v4/uv;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/uv;

    return-object p0

    :cond_0
    const-string v0, "object parse error"

    if-eqz p0, :cond_4

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/catch;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/support/v4/uv;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/support/v4/uv;-><init>(Lorg/bouncycastle/asn1/catch;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/support/v4/uv;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/pv;->goto(Ljava/lang/Object;)Landroid/support/v4/pv;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/support/v4/uv;-><init>(Landroid/support/v4/pv;)V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p0

    iput-object p0, v2, Landroid/support/v4/uv;->for:[B

    array-length p0, p0

    sget-object v1, Landroid/support/v4/uv;->new:[B

    array-length v1, v1

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static try()[B
    .locals 1

    sget-object v0, Landroid/support/v4/uv;->new:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public case()Landroid/support/v4/pv;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uv;->if:Landroid/support/v4/pv;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uv;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uv;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public this()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uv;->do:Lorg/bouncycastle/asn1/catch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/uv;->do:Lorg/bouncycastle/asn1/catch;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/uv;->if:Landroid/support/v4/pv;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/uv;->for:[B

    sget-object v2, Landroid/support/v4/uv;->new:[B

    invoke-static {v1, v2}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/uv;->for:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
