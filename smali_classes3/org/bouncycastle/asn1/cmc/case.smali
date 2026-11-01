.class public Lorg/bouncycastle/asn1/cmc/case;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/cmc/case$if;
    }
.end annotation


# static fields
.field private static final new:Lorg/bouncycastle/asn1/goto;


# instance fields
.field private final do:Lorg/bouncycastle/asn1/cmc/case$if;

.field private final for:Lorg/bouncycastle/asn1/instanceof;

.field private final if:Landroid/support/v4/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/case;->new:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/tg2;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;Lorg/bouncycastle/asn1/throw;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;)V
    .locals 8

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v7, Lorg/bouncycastle/asn1/cmc/case$if;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cmc/case$if;-><init>(Lorg/bouncycastle/asn1/cmc/case;Landroid/support/v4/tg2;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/cmc/case$do;)V

    iput-object v7, p0, Lorg/bouncycastle/asn1/cmc/case;->do:Lorg/bouncycastle/asn1/cmc/case$if;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cmc/case;->if:Landroid/support/v4/b1;

    iput-object p6, p0, Lorg/bouncycastle/asn1/cmc/case;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cmc/case$if;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/bouncycastle/asn1/cmc/case$if;-><init>(Lorg/bouncycastle/asn1/cmc/case;Lorg/bouncycastle/asn1/super;Lorg/bouncycastle/asn1/cmc/case$do;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->do:Lorg/bouncycastle/asn1/cmc/case$if;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->if:Landroid/support/v4/b1;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/case;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/case;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/case;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmc/case;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmc/case;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/case;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic new()Lorg/bouncycastle/asn1/goto;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/cmc/case;->new:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/instanceof;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->do:Lorg/bouncycastle/asn1/cmc/case$if;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/case$if;->else(Lorg/bouncycastle/asn1/cmc/case$if;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v0

    return-object v0
.end method

.method public catch()Landroid/support/v4/b1;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->do:Lorg/bouncycastle/asn1/cmc/case$if;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/case$if;->else(Lorg/bouncycastle/asn1/cmc/case$if;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    return-object v0
.end method

.method public class()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->do:Lorg/bouncycastle/asn1/cmc/case$if;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/case$if;->new(Lorg/bouncycastle/asn1/cmc/case$if;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public const()Lorg/bouncycastle/asn1/final;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmc/case;->break()Lorg/bouncycastle/asn1/instanceof;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/if;->super()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->for:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public goto()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public this()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->do:Lorg/bouncycastle/asn1/cmc/case$if;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/case$if;->try(Lorg/bouncycastle/asn1/cmc/case$if;)Landroid/support/v4/tg2;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/case;->do:Lorg/bouncycastle/asn1/cmc/case$if;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/case;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/case;->for:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case;->do:Lorg/bouncycastle/asn1/cmc/case$if;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/case$if;->case(Lorg/bouncycastle/asn1/cmc/case$if;)Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    return-object v0
.end method
