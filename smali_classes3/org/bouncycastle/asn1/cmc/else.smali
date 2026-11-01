.class public Lorg/bouncycastle/asn1/cmc/else;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:[Lorg/bouncycastle/asn1/x509/if;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/if;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/else;->do:[Lorg/bouncycastle/asn1/x509/if;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/else;->do:[Lorg/bouncycastle/asn1/x509/if;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/if;->else(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/if;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/if;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/if;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/else;->do:[Lorg/bouncycastle/asn1/x509/if;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/if;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/goto;->if([Lorg/bouncycastle/asn1/x509/if;)[Lorg/bouncycastle/asn1/x509/if;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/else;->do:[Lorg/bouncycastle/asn1/x509/if;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/cmc/else;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmc/else;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/else;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/else;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/else;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmc/else;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmc/else;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/else;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public new()[Lorg/bouncycastle/asn1/x509/if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/else;->do:[Lorg/bouncycastle/asn1/x509/if;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/goto;->if([Lorg/bouncycastle/asn1/x509/if;)[Lorg/bouncycastle/asn1/x509/if;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/else;->do:[Lorg/bouncycastle/asn1/x509/if;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
