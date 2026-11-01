.class public Landroid/support/v4/zx1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/b1;

.field private final for:Lorg/bouncycastle/asn1/if;

.field private final if:Lorg/bouncycastle/asn1/super;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/zx1;->do:Landroid/support/v4/b1;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/zx1;->if:Lorg/bouncycastle/asn1/super;

    new-instance p1, Lorg/bouncycastle/asn1/instanceof;

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/zx1;->for:Lorg/bouncycastle/asn1/if;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/b1;[Landroid/support/v4/rg;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/zx1;->do:Landroid/support/v4/b1;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/zx1;->if:Lorg/bouncycastle/asn1/super;

    new-instance p1, Lorg/bouncycastle/asn1/instanceof;

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/zx1;->for:Lorg/bouncycastle/asn1/if;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/zx1;->do:Landroid/support/v4/b1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/zx1;->if:Lorg/bouncycastle/asn1/super;

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/zx1;->if:Lorg/bouncycastle/asn1/super;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/zx1;->for:Lorg/bouncycastle/asn1/if;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/zx1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/zx1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/zx1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/zx1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/zx1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/if;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/instanceof;

    iget-object v1, p0, Landroid/support/v4/zx1;->for:Lorg/bouncycastle/asn1/if;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/zx1;->for:Lorg/bouncycastle/asn1/if;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/if;->throw()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/instanceof;-><init>([BI)V

    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zx1;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public new()[Landroid/support/v4/rg;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/zx1;->if:Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/rg;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v4/zx1;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/zx1;->do:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/zx1;->if:Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v4/zx1;->if:Lorg/bouncycastle/asn1/super;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/zx1;->for:Lorg/bouncycastle/asn1/if;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
